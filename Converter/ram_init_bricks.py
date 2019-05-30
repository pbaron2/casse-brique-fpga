
filenameOutput = 'ram_init_brick.hex'


with open(filenameOutput, 'wb') as f:

    f.write(chr(0x60))
    for i in range(1, 192):
        f.write(chr(0))


    f.close()


