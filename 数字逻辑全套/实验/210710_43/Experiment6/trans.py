import cv2
import numpy as np

img = cv2.imread('1.jpg')
Img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
for i in range(16):
    for j in range(16):
        if Img[i][j] == 255:
            Img[i][j] = 0
        elif Img[i][j] == 0:
            Img[i][j] = 1

string = []
for i in range(16):
    string.append(str(i) + ':I_ROW = 16\'b' + (''.join(map(str, Img[i]))) + ';')
    print(string[i])
