

number1= 3
number2= 5
number3= 18
print("3*5=15")

resposta=str(input("Esta pertuta está certa ou errada (true ou false)"))
resultado= number1*number2

if resposta == "true":
    if number3 == resultado:
        print("Certa a resposta")
    else:
        print("Reveja sua resposta")

if resposta == "false":
    if number3 != resultado:
        print("Reveja sua resposta")
    else:
        print("Certa a resposta")