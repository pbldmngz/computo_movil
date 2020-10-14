alphabet = list("A B C D E F G H I J K L M N Ñ O P Q R S T U V W X Y Z".replace(" ", ""))
l = len(alphabet)

def moving_shift(s, shift):
    return "".join([i if i == " " else alphabet[(alphabet.index(i) + shift) % l] for i in s.upper()])

def demoving_shift(s, shift):
    return "".join([i if i == " " else alphabet[(alphabet.index(i) - shift) % l] for i in s.upper()])
    
def test():
    x = int(input("llave: "))
    text = moving_shift(input("Texto a encriptar: "), x)
    print(text + "\n")
    for n in range(l):
        print(demoving_shift(text, n))

test()