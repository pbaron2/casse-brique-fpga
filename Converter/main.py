import cv2

name = 'ball' \

# ball = 512
# brick = 4096
# platform = 4096
memorySize = 512

filenameSource = '../' + name + '.bmp'
filenameOutput = '../' + name + '.mif'

img = cv2.imread(filenameSource, cv2.IMREAD_COLOR)
if img is not None:
    img = (img >> 4) << 4

    cv2.imshow('Image', img)
    cv2.waitKey(0)
    cv2.destroyAllWindows()



    with open(filenameOutput, 'wb') as f:
        address = 0
        pair = False

        f.write('DEPTH = ' + str(memorySize) + ';\nWIDTH = 12;\nADDRESS_RADIX = UNS;\nDATA_RADIX = UNS;\nCONTENT\nBEGIN\n')
        f.write('[0..' + str(memorySize-1) + ']: 0;\n')
        for line in img:
            for pixel in line:

                f.write(str(address) + ' : ')

                f.write(str(((pixel[0]>>4)<<8) | ((pixel[1]>>4)<<4) | (pixel[2]>>4)))

                f.write(';\n')

                address += 1

        f.write('END;')
        f.close()


