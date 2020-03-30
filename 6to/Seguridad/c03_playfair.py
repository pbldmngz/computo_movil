import textwrap
def key_maker(key): # Generar la matriz de llave
    alphabet = "A B C D E F G H I K L M N O P Q R S T U V W X Y Z".replace(" ", "")
    key = key.upper().replace("J", "I")
    if not len(key) == len(list(dict.fromkeys(list(key.upper())))): return None
    return textwrap.wrap(key + "".join([i if i not in key else "" for i in alphabet]), 5)

def playfair_encrypt(key, plain_text): # Método principal
    plain_text = plain_text.upper()
    key = key_maker(key)
    cypher = []
    for text in plain_text.replace("J", "I").split(" "):
        if len(text)%2 != 0: text += "X"
        text = textwrap.wrap(text, 2)
        cypher.append("".join([encrypt_method(key, i) for i in text]))
    return " ".join(cypher)

def playfair_decrypt(key, cypher_text):
    key = key_maker(key)
    plain_text = []
    for text in cypher_text.split(" "):
        text = textwrap.wrap(text, 2)
        plain_text.append("".join([decrypt_method(key, i) for i in text]))
    return " ".join(plain_text)

def encrypt_method(key_matrix, pair):
    data = coordinates(key_matrix, pair)
    if data[0][0] == data[1][0]: # misma columna
        return key_matrix[data[0][0]][(data[0][1]+1)%5] + key_matrix[data[1][0]][(data[1][1]+1)%5]
    elif data[0][1] == data[1][1]: # misma fila
        return key_matrix[(data[0][0]+1)%5][data[0][1]] + key_matrix[(data[1][0]+1)%5][data[1][1]]
    else: # están en diagonal
        temp = data[0]
        data[0] = [data[0][0], data[1][1]]
        data[1] = [data[1][0], temp[1]]
        return key_matrix[data[0][0]][data[0][1]] + key_matrix[data[1][0]][data[1][1]]

def decrypt_method(key_matrix, pair):
    data = coordinates(key_matrix, pair)
    if data[0][0] == data[1][0]: # misma columna
        return key_matrix[data[0][0]][(data[0][1]+4)%5] + key_matrix[data[1][0]][(data[1][1]+4)%5]
    elif data[0][1] == data[1][1]: # misma fila
        return key_matrix[(data[0][0]+4)%5][data[0][1]] + key_matrix[(data[1][0]+4)%5][data[1][1]]
    else: # están en diagonal
        temp = data[0]
        data[0] = [data[0][0], data[1][1]]
        data[1] = [data[1][0], temp[1]]
        return key_matrix[data[0][0]][data[0][1]] + key_matrix[data[1][0]][data[1][1]]

def coordinates(key_matrix, pair): # [Piso, Habitación]
    compass = [-1, -1]
    for i in range(len(key_matrix)):
        if key_matrix[i].find(pair[0]) >= 0: compass[0] = [i, key_matrix[i].find(pair[0])]
        if key_matrix[i].find(pair[1]) >= 0: compass[1] = [i, key_matrix[i].find(pair[1])]
    return compass

def test():
    key = input("Key: ")
    text = input("Text: ")
    print(playfair_encrypt(key, text))
    print(playfair_decrypt(key, playfair_encrypt(key, text)))

test()