Algoritmo vernam_cifrar
	Definir break Como Logico
	Definir password_count, text_count,encryption_array Como Entero
	Definir array,text_array,password_array Como Caracter
	definir abc, password_cadena, text_cadena como cadena
	Dimension array[27]
	
	abc = "abcdefghijklmnñopqrstuvwxyz"
	para i<-1 hasta 27 con paso 1 Hacer
		array[i]=Subcadena(abc,i,i)
	FinPara
	//ingresando el texto limpio a un array y creando array para encriptar
	Escribir Sin Saltar "Ingrese texto a cifrar"
	leer text_cadena
	Dimension text_array[Longitud(text_cadena)]
	Dimension encryption_array[Longitud(text_cadena)]
	para i<-1 hasta Longitud(text_cadena) con paso 1 Hacer
		text_array[i]=Subcadena(text_cadena,i,i)
	FinPara
	//----------------
	
	
	//ingresando clave a un array
	Escribir Sin Saltar "Ingrese clave"
	leer password_cadena
	romper<- Verdadero
	Mientras romper
		si Longitud(password_cadena)<>Longitud(text_cadena) Entonces
			Escribir Sin Saltar "La clave tiene que tener la misma longitud que el texto"
			leer password_cadena
		SiNo
			romper<- falso
		FinSi
		
	FinMientras
	Dimension password_array[Longitud(password_cadena)]
	para i<-1 hasta Longitud(password_cadena) con paso 1 Hacer
		password_array[i]=Subcadena(password_cadena,i,i)
	FinPara
	//-----------
	
	
	//haciendo el match y sumando los indices para el array de encriptacion
	break = Verdadero
	password_count=0
	text_count=0
	Mientras break = Verdadero Hacer
		text_count=text_count+1
		para i<-1 hasta 27 con paso 1 Hacer
			si array[i] = text_array[text_count] Entonces
				encryption_array[text_count]=i
			FinSi
		FinPara
		password_count=password_count+1
		Para j<-1 hasta 27 con paso 1 Hacer
			si array[j] = password_array[password_count] Entonces
				encryption_array[text_count]=encryption_array[text_count]+j
			FinSi
		FinPara
		si text_count = Longitud(text_cadena) entonces//el ciclo estara activo hasta que no termine todas las caracteres del texto limpio
			break = Falso
		FinSi
		si password_count = Longitud(password_cadena)Entonces//para que el array de la clave se repita si se acaba los match
			password_count=0
		FinSi
	FinMientras
	//-----------------------
	
	//imprimiendo el abecedario segun indice del array encriptado
	print = 0
	Escribir sin saltar "Vernam: "
	Para k<-1 hasta Longitud(text_cadena) con paso 1 Hacer
		si encryption_array[K] > 27 Entonces//equivalente al MOD para que no se salga del abecedario
			print = encryption_array[k] - 27
		SiNo
			print = encryption_array[k]
		FinSi
		Escribir sin saltar array[print]
	FinPara
	

FinAlgoritmo
