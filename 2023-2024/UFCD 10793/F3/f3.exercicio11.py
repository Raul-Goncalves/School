from ast import While
from tkinter import W


impar = 0
par = 0
stop = 0
    
while True:
        stop = int(input("Coloque um numero [0 para você cancelar]: "))
        o =  stop%2
        if o == 1:
            impar = impar+ 1
        else:
            par = par + 1

        if stop == 0:
            print(f"impar = {impar} / pares = {par}")
            break