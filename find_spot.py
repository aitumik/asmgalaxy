target = b'X'

with open("boot_sect.bin","rb") as f:
    pos = 0
    while(byte := f.read(1)):
        if byte == target:
            print(f"Found byte {target} at position {pos}")
        pos += 1
