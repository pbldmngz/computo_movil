//Implementación de cifrado knapsack en Python
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.util.Random;
import java.util.Scanner;


public class c04_knapsack {

    // w: Secuencia de enteros super incrementales para la llave privada
    // b: Secuencia de la llave publica para el cifrado
    private static BigInteger[] w, b;
    // q: Entero aleatorio mas grande que la sumatoria de W
    // r: Entero aleatorio coprimo de Q
    private BigInteger q, r;
    private Random rand = new Random();
    private static final int MAX_CHARS = 10;  // Maximo numero de caracteres permitidos en el mensaje
    private static final int BINARY_LENGTH = MAX_CHARS * 8;  // Lo mismo pero en binario
    private static final Charset UTF8 = Charset.forName("UTF-8");  // Procesamiento UTF-8


    
    /**
     * Constructor
     */
    public c04_knapsack() {
        genKeys();
    }

    /**Generar las llaves publicas y privadas para el cifrado y descrifado de un mensaje con una longitud predeterminada; la llave publica es el arreglo b, y la privada es la 
     * combinacion de w, q, y r
     */
    public void genKeys() {
        
        int maxBits = 50;
        // Maximo numero de bits de un entero aleatorio

        // w sera el arreglo superincremental de enteros
        w = new BigInteger[BINARY_LENGTH];

        // Generar un entero aleatorio como punto de partida.
        w[0] = new BigInteger(maxBits, rand).add(BigInteger.ONE); //agregar uno para estar seguros (el rango de numeros aleatorios incluye 0)
        BigInteger sum = new BigInteger(w[0].toByteArray());  // Sumatoria del arreglo w
        for (int i = 1; i < w.length; i++) {  // Popular el arreglo con enteros superincrementales
            w[i] = sum.add(new BigInteger(maxBits, rand).add(BigInteger.ONE));
            sum = sum.add(w[i]);
        }

        // q debe de ser un entero aleatorio mayor a la sumatoria del arreglo w
        q = sum.add(new BigInteger(maxBits, rand).add(BigInteger.ONE));

        // r = q - 1 puesto que siempre sera un numero coprimo a q
        r = q.subtract(BigInteger.ONE);

        // Generar secuencia de la llave publica
        b = new BigInteger[BINARY_LENGTH];
        for (int i = 0; i < b.length; i++) {
            b[i] = w[i].multiply(r).mod(q);
        }
    }

    //Cifrar el mensaje
    public String encryptMsg(String message) {
        if (message.length() > MAX_CHARS)
            throw new IndexOutOfBoundsException("Longitud maxima permitida de mensaje es:  " + MAX_CHARS + ".");
        if (message.length() <= 0)
            throw new Error("Mensaje vacio. No se puede cifrar");

        // Convertir mensaje a un String binario
        String msgBinary = new BigInteger(message.getBytes(UTF8)).toString(2);
        // Agregar ceros a la izquierda si el binario convertido no es de la misma longitud que w y b 
        if (msgBinary.length() < BINARY_LENGTH) {
            msgBinary = String.format("%0" + (BINARY_LENGTH - msgBinary.length()) + "d", 0) + msgBinary;
        }

        // Generar el mensaje cifrado
        BigInteger result = BigInteger.ZERO;
        for (int i = 0; i < msgBinary.length(); i++) {
            result = result.add(b[i].multiply(new BigInteger(msgBinary.substring(i, i+1))));
        }

        return result.toString();
    }

    //Descifrar el mensaje
    public String decryptMsg(String ciphertext) {

        //Operacion necesaria para el descifrado asignada a una variable tmp
        BigInteger tmp = new BigInteger(ciphertext).mod(q).multiply(r.modInverse(q)).mod(q);
        byte[] decrypted_binary = new byte[w.length];  // El mensaje descifrado en binario

        for (int i = w.length - 1; i >= 0; i--) {
            if (w[i].compareTo(tmp) <= 0) {  // Comparar valores de w a tmp para encontrar elemento mayor, que sea menor o igual a tmp
                tmp = tmp.subtract(w[i]);
                decrypted_binary[i] = 1;
            } else {
                decrypted_binary[i] = 0;
            }
        }

        // Convertir byte[] a String
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < decrypted_binary.length; i++) {
            sb.append(decrypted_binary[i]);
        }

        return new String(new BigInteger(sb.toString(), 2).toByteArray());
    }


    //Main
    public static void main(String[] args) {
        c04_knapsack crypto = new c04_knapsack();
        System.out.println("Se han generado las llaves publicas y privadas\n");

        System.out.println("\nLlaves publicas");
        for (int i = 0; i < b.length; i++) {
            System.out.println(b[i]);
        }

        System.out.println("\nLlaves privadas");
        for(int i = 0; i < w.length; i++) {
            System.out.println(w[i]);
        }

        Scanner input = new Scanner(System.in);
        String message;
        while (true) {
            System.out.println("\nIngresa un mensaje para cifrar a un entero:");
            message = input.nextLine();
            if (message.length() > MAX_CHARS)
                System.out.printf("\nTu mensaje debe de ser de a lo mas %d caracteres! Intenta de nuevo.\n\n", MAX_CHARS);
            else if (message.length() <= 0)
                System.out.println("\nMensaje vacio. Intenta de nuevo\n\n");
            else break;
        }


        System.out.println("\nPlaintext:");
        System.out.println(message);
        System.out.println("\nNumero de bytes en el Plaintext = " + message.getBytes().length);

        String encrypted = crypto.encryptMsg(message);
        System.out.println("\n\"" + message + "\"" + " cifrado es:");
        System.out.println(encrypted);

        System.out.println("\nDescifrado es:");
        System.out.println(crypto.decryptMsg(encrypted));
    }
}