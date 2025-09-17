
import sys

def parse_def_file(input_file, output_file):
  def write_port(out_f, db_units, name, direction, use, layer, shape, position):
    out_f.write(f"\tPIN {name}\n")
    out_f.write(f"\t\tDIRECTION {direction} ;\n")
    out_f.write(f"\t\tUSE {use} ;\n")
    out_f.write(f"\t\tSHAPE ABUTMENT ;\n")
    out_f.write(f"\t\tPORT \n")
    out_f.write(f"\t\t\tLAYER {layer} ;\n")

    x = float(position[1]) / db_units
    y = float(position[2]) / db_units
    width = (float(shape[5]) - float(shape[1])) / db_units
    height = (float(shape[6]) - float(shape[2])) / db_units

    llx = round((x - (width / 2)), 3)
    lly = round((y - (height / 2)), 3)
    urx = round((x + (width / 2)), 3)
    ury = round((y + (height / 2)), 3)

    out_f.write(f"\t\t\tRECT {llx} {lly} {urx} {ury} ;\n")
    out_f.write(f"\t\tEND \n")
    out_f.write(f"\tEND {name}\n")

  with open(input_file, 'r') as in_f, open(output_file, 'w') as out_f:
    parse_pins = 0
    for line in in_f:

      if "UNITS DISTANCE MICRONS" in line:
        db_units = float(line.split()[3])
      if "DESIGN" in line:
        design = line.split()[1]
      if "DIEAREA" in line:
        width = float(line.split()[6]) / db_units
        height = float(line.split()[7]) / db_units

      if "PINS" in line and parse_pins == 0:
        parse_pins = 1
        process_pin = 0

        out_f.write("VERSION 5.7 ;\n")
        out_f.write("BUSBITCHARS \"[]\" ;\n")

        out_f.write(f"MACRO {design}\n")
        out_f.write(f"\tFOREIGN fakeram45_64x32_top_tier 0 0 ;\n")
        out_f.write(f"\tSYMMETRY X Y ;\n")
        out_f.write(f"\tSIZE {width} BY {height} ;\n")
        out_f.write(f"\tCLASS BLOCK ;\n")

        continue
      elif "PINS" in line and parse_pins == 1:
        parse_pins = 0
        out_f.write(f"END {design}\n")
        continue

      if parse_pins == 1:
        parts = line.split()
        
        if "DIRECTION" in line:
          if (process_pin == 1):
            write_port(out_f, db_units, name, direction, use, layer, shape, position)
          else:
            process_pin = 1
          name = parts[1]
          direction = parts[7]
          use = parts[10]
        elif "LAYER" in line:
          layer = parts[2]
          shape = parts[3:]
        elif "PLACED" in line:
          position = parts[2:6]



if __name__ == '__main__':
  if len(sys.argv) != 3:
    print("Usage: python parse_def.py <input_file> <output_file>")
    sys.exit(1)

  input_file = sys.argv[1]
  output_file = sys.argv[2]

  parse_def_file(input_file, output_file)