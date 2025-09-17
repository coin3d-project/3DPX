
import sys

def parse_def_file(input_file, prefix, x, y):
  with open(input_file, 'r') as in_f:
    parse_components = 0
    
    data = {}

    data["prefix"] = prefix
    data["xoffset"] = x
    data["yoffset"] = y

    components_list = {}

    for line in in_f:
    
      if "DIEAREA" in line:
        data["core_X"] = line.split()[6]
        data["core_Y"] = line.split()[7]

      if "UNITS DISTANCE MICRONS" in line:
        data["db_units"] = line.split()[3]

      if "COMPONENTS" in line and parse_components == 0:
        parse_components = 1
        data["components_num"] = line.split()[1]
        continue
      elif "COMPONENTS" in line and parse_components == 1:
        parse_components = 0
        continue

      if parse_components == 1:
        entry = {}
        parts = line.split()
        name = parts[1].replace("\\", "")
        if "top_tier" in line:
          if "SOURCE" in line:
            entry["name"] = name
            entry["type"] = parts[2]
            entry["place_mode"] = parts[7]
            entry["x"] = parts[9]
            entry["y"] = parts[10]
            entry["orientation"] = parts[12]
          else:
            entry["name"] = name
            entry["type"] = parts[2]
            entry["place_mode"] = parts[4]
            entry["x"] = parts[6]
            entry["y"] = parts[7]
            entry["orientation"] = parts[9]
        elif "bottom_tier" in line:
          if "SOURCE" in line:
            entry["name"] = name
            entry["type"] = parts[2]
            entry["place_mode"] = parts[7]
            entry["x"] = parts[9]
            entry["y"] = parts[10]
            entry["orientation"] = parts[12]
          else:
            entry["name"] = name
            entry["type"] = parts[2]
            entry["place_mode"] = parts[4]
            entry["x"] = parts[6]
            entry["y"] = parts[7]
            entry["orientation"] = parts[9]
        components_list[name] = entry

    data["components"] = components_list
  return data

def write_cells_def(topmodule_file, top_module_file_out, macros_locations, def1_data):

  with open(topmodule_file, 'r') as in_f, open(top_module_file_out, 'w') as out_f, open(macros_locations, 'w') as macros_out_f:
    parse_components = 0
    for line in in_f:
      if "COMPONENTS" in line and parse_components == 0:
        parse_components = 1
        out_f.write(f"{line}")
        continue
      elif "COMPONENTS" in line and parse_components == 1:
        parse_components = 0
        out_f.write(f"{line}")
        continue

      parts = line.split()
      if parse_components == 1:

        prefix = parts[1].split("/", 1)[0]
        
        if def1_data["prefix"] == prefix:
          name = parts[1].split("/", 1)[1].replace("\\", "")
          new_x = float(def1_data["components"][name]["x"]) + (float(def1_data["xoffset"]) * float(def1_data["db_units"]))
          new_y = float(def1_data["components"][name]["y"]) + (float(def1_data["yoffset"]) * float(def1_data["db_units"]))
          orientation = def1_data["components"][name]["orientation"]
          
          if "fakeram" in parts[2]:
            new_x_cart = new_x / float(def1_data["db_units"])
            new_y_cart = new_y / float(def1_data["db_units"])
            macros_out_f.write(f"place_macro -macro {parts[1].replace("\\", "\\\\")} -location {{{new_x_cart} {new_y_cart}}} -orientation {orientation} -allow_overlap\n")
            out_f.write(f"    {parts[0]} {parts[1]} {parts[2]} + UNPLACED ;\n")
          else:         
            out_f.write(f"    {parts[0]} {parts[1]} {parts[2]} + FIXED ( {new_x} {new_y} ) {orientation} ;\n")
        else:
          out_f.write(f"{line}")
      else:
        out_f.write(f"{line}")

if __name__ == '__main__':
  if len(sys.argv) != 8:
    print("Usage: python parse_def.py <top_module> <Core1> <def1_module_name> <def1_llx> <def1_lly> ")
    sys.exit(1)
    
  def is_exact_multiplicand(a, b, tolerance=1e-9):
      if a == 0:
          return b == 0  # 0 is a multiplicand of 0, but not of anything else
      quotient = b / a
      return abs(quotient - round(quotient)) < tolerance  
  
  top_module = sys.argv[1]
  Core1 = sys.argv[2]
  def1_module_name = sys.argv[3]
  def1_llx = sys.argv[4]
  def1_lly = sys.argv[5]
  top_module_out = sys.argv[6]
  macros_locations_out = sys.argv[7]

  sitex = 0.19
  sitey = 1.4

  snapped_def1_llx = 0.0
  snapped_def1_lly = 0.0
  if is_exact_multiplicand(float(def1_llx), sitex):
    snapped_def1_llx = float(def1_llx)
  else:
    snapped_def1_llx = (sitex * (float(def1_llx) / sitex)) + sitex
  if is_exact_multiplicand(float(def1_lly), sitey):
    snapped_def1_lly = float(def1_lly)
  else:
    snapped_def1_lly = (sitey * (float(def1_lly) / sitey)) + sitey/2


  print(f"Snapped coordinates for core 1: {snapped_def1_llx} {snapped_def1_lly}")

  def1_data = parse_def_file(Core1, def1_module_name, snapped_def1_llx, snapped_def1_lly)

  write_cells_def(top_module, top_module_out, macros_locations_out, def1_data)