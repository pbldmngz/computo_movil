alphabet = list("A B C D E F G H I J K L M N Ñ O P Q R S T U V W X Y Z".replace(" ", ""))
def moving_shift(s):
    return "".join([i if i == " " else alphabet[alphabet[::-1].index(i)] for i in s.upper()])
# Es mejor hacerlo con diccionario, Big O notation lo dice, pero me pareció excesivo
print("Resultado: " + moving_shift(input("Texto a encriptar o desencriptar: ")))