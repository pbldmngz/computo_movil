import sys												#Importamos sys para poder obtener parámetros directamente de consola

def max_div(a, b): 
	return a if b == 0 else max_div(b, a%b) 			#Hallar el máximo común divisor

def encrypt(msg, e, n):
	return "".join([chr((ord(m)**e)%n) for m in msg])	#Convertir caracteres a sus valores en Unicode, 
														#hacer una operación y luego volver a convertirlos a caracter
def decrypt(ctx, n, d):									
	return "".join([chr((ord(t)**d)%n) for t in ctx])	#Proceso inverso, haciéndo operaciones con la otra llave

def base(m, p, q):
	n = p*q 											#Obtener el valor de N
	z = (p-1)*(q-1)										#Obtener el valor de Z

	for e in range(2, z): 								#Obtener el valor de E
		if max_div(e, z) == 1: break

	for i in range(1, 10): 								#Obtener el valor de D
		j = 1 + i*z
		if j%e == 0:
			d = j//e
			break

	encrypted = encrypt(m, e, n)						#Llamar al método de encriptación
	print("Texto cifrado: ", encrypted)

	decrypted = decrypt(encrypted, n, d)				#Llamar al método de decriptación
	print("Texto descifrado: ", decrypted)

base(sys.argv[1], int(sys.argv[2]), int(sys.argv[3])) 	#Ejecutar el código en consola de la forma: python rsa_9864.py mensaje primo otro_primo