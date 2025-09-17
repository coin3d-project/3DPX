
import sys

def parse_def_file(input_file, output_file):
  with open(input_file, 'r') as in_f, open(output_file, 'w') as out_f:
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

      if parse_components == 1:

        if "bottom_tier" in line:
          if "fakeram" in line:
            out_f.write(f"{line}")
          elif "SOURCE" in line:
            parts = line.split()
            out_f.write(f"    {parts[0]} {parts[1]} {parts[2]} {parts[3]} {parts[4]} {parts[5]} {parts[6]} FIXED {parts[8]} {parts[9]} {parts[10]} {parts[11]} {parts[12]} {parts[13]}\n")
          else:
            parts = line.split()
            out_f.write(f"    {parts[0]} {parts[1]} {parts[2]} {parts[3]} FIXED {parts[5]} {parts[6]} {parts[7]} {parts[8]} {parts[9]} {parts[10]}\n")
            # print(f"    {parts[0]} {parts[1]} {parts[2]} {parts[3]} FIXED {parts[5]} {parts[6]} {parts[7]} {parts[8]} {parts[9]} {parts[10]}\n")
        elif "top_tier" in line:
          if "fakeram" in line:
            out_f.write(f"{line}")
          elif "SOURCE" in line:
            parts = line.split()
            out_f.write(f"    {parts[0]} {parts[1]} {parts[2]} {parts[3]} {parts[4]} {parts[5]} {parts[6]} FIXED {parts[8]} {parts[9]} {parts[10]} {parts[11]} {parts[12]} {parts[13]}\n")
          else:
            parts = line.split()
            out_f.write(f"    {parts[0]} {parts[1]} {parts[2]} {parts[3]} FIXED {parts[5]} {parts[6]} {parts[7]} {parts[8]} {parts[9]} {parts[10]}\n")
            # print(f"    {parts[0]} {parts[1]} {parts[2]} {parts[3]} FIXED {parts[5]} {parts[6]} {parts[7]} {parts[8]} {parts[9]} {parts[10]}\n")
        else:
          out_f.write(f"{line}")
      else:
        out_f.write(f"{line}")



if __name__ == '__main__':
  if len(sys.argv) != 3:
    print("Usage: python parse_def.py <input_file> <output_file>")
    sys.exit(1)

  input_file = sys.argv[1]
  output_file = sys.argv[2]

  parse_def_file(input_file, output_file)