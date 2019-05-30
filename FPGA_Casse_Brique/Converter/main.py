import cv2

name = 'ball' \


filenameSource = '../' + name + '.bmp'
filenameOutput = '../' + name + '.hex'

img = cv2.imread(filenameSource, cv2.IMREAD_COLOR)
if img is not None:
    img = (img >> 4) << 4

    cv2.imshow('Image', img)
    cv2.waitKey(0)
    cv2.destroyAllWindows()



    with open(filenameOutput, 'wb') as f:
        value = 0
        pair = False

        for line in img:
            for pixel in line:
                for i in range(3):

                    if pair:
                        value = value | (pixel[2-i] >> 4)
                        print(value)
                        f.write(chr(value))
                        pair = False
                    else:
                        value = (pixel[2-i] >> 4) << 4
                        pair = True
                        #print(value)

                    #print(pixel[2-i])
            print('')

        f.close()


