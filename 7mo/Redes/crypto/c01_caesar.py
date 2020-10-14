#Implementación de cifrado cesar en Python
alphabet = list("A B C D E F G H I J K L M N Ñ O P Q R S T U V W X Y Z".replace(" ", ""))

def moving_shift(s, shift, b):
    return "".join([i if i == " " else alphabet[(alphabet.index(i) + (shift if b else -shift)) % len(alphabet)] for i in s.upper()])
    
def test():
    x = int(input("llave: "))
    b = True if str(input("encriptar (e) o decriptar (d): ")) == "e" else False
    text = moving_shift(input("Texto a encriptar: "), x, b)
    print(text + "\n")

test()