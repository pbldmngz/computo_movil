#Implementación de cifrado RSA en Python
import sys												#Importamos sys para poder obtener parámetros directamente de consola

def max_div(a, b): 
	return a if b == 0 else max_div(b, a%b) 			#Hallar el máximo común divisor

def encrypt(msg, e, n):
	return "".join([chr((ord(m)**e)%n) for m in msg])	#Convertir caracteres a sus valores en Unicode, 
														#hacer una operación y luego volver a convertirlos a caracter
def decrypt(ctx, n, d):									
	return "".join([chr((ord(t)**d)%n) for t in ctx])	#Proceso inverso, haciéndo operaciones con la otra llave

def base(en, p, q):
	n = p*q 											#Obtener el valor de N
	z = (p-1)*(q-1)										#Obtener el valor de Z

	for e in range(2, z): 								#Obtener el valor de E
		if max_div(e, z) == 1: break

	for i in range(1, 10): 								#Obtener el valor de D
		j = 1 + i*z
		if j%e == 0:
			d = j//e
			break
	
	m = input("Mensaje: ")

	if en.lower() == "encrypt":
		encrypted = encrypt(m, e, n)					#Llamar al método de encriptación
		print("Texto cifrado: ", encrypted)
	elif en.lower() == "decrypt":
		decrypted = decrypt(m, n, d)					#Llamar al método de decriptación
		print("Texto descifrado: ", decrypted)
	else: print("Parámetro '{}' no reconocido".format(en))

base(sys.argv[1], int(sys.argv[2]), 					#Ejecutar el código en consola de la forma: 
	int(sys.argv[3])) 									#python c03_rsa.py encrypt/decrypt primo otro_primo