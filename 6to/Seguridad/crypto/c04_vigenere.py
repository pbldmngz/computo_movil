al = {'A': 0, 'B': 1, 'C': 2, 'D': 3, 'E': 4, 'F': 5, 'G': 6, 'H': 7, 'I': 8, 'J': 9, 'K': 10, 'L': 11, 'M': 12, 'N': 13, 'O': 14, 'P': 15, 'Q': 16, 'R': 17, 'S': 18, 'T': 19, 'U': 20, 'V': 21, 'W': 22, 'X': 23, 'Y': 24, 'Z': 25}
anti = {value:key for key, value in al.items()}
l = len(al)

def perfect_key(key, text):
    size = len(text)
    key = key.replace(" ", "")
    while len(key) < size: key += key
    key = list(key)
    for i in range(size): 
        if text[i] == " ": key.insert(i, " ")
    return "".join(key)[:size]

def vig_encrypt(text, key):
    text = text.upper()
    key = perfect_key(key.upper(), text)
    return "".join([" " if text[i] == " " else anti[(al[text[i]] + al[key[i]]) % l] for i in range(len(key))])

def vig_decrypt(text, key):
    key = perfect_key(key.upper(), text)
    return "".join([" " if text[i] == " " else anti[(al[text[i]] - al[key[i]]) % l] for i in range(len(key))])

def test():
    k = input("llave: ")
    text = vig_encrypt(input("Texto a encriptar: "), k)
    print(text + "\n" + vig_decrypt(text, k))

test()