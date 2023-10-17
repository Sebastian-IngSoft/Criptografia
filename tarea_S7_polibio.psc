Algoritmo Cifrado_Polibio
	Definir i,j,contador_abc como Entero
	contador_abc = 0
	Definir M Como Caracter
	Dimension M[5,5]
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Para j<-1 Hasta 5 Con Paso 1 Hacer
			contador_abc = contador_abc +1
			Segun contador_abc Hacer
				1:
					M[i,j]='a'
				2:
					M[i,j]='b'
				3:
					M[i,j]='c'
				4:
					M[i,j]='d'
				5:
					M[i,j]='e'
				6:
					M[i,j]='f'
				7:
					M[i,j]='g'
				8:
					M[i,j]='h'
				9:
					M[i,j]='i'
				10:
					M[i,j]='k'
				11:
					M[i,j]='l'
				12:
					M[i,j]='m'
				13:
					M[i,j]='n'
				14:
					M[i,j]='o'
				15:
					M[i,j]='p'
				16:
					M[i,j]='q'
				17:
					M[i,j]='r'
				18:
					M[i,j]='s'
				19:
					M[i,j]='t'
				20:
					M[i,j]='u'
				21:
					M[i,j]='v'
				22:
					M[i,j]='w'
				23:
					M[i,j]='x'
				24:
					M[i,j]='y'
				25:
					M[i,j]='z'
				De Otro Modo:
					M[i,j]='error'
			Fin Segun
		Fin Para
	Fin Para
	definir contador_columna, contador_fila Como Entero
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		contador_fila = contador_fila + 1
		Si i == 1 Entonces
			escribir sin saltar "  "
			para h<- 1 hasta 5 con paso 1 Hacer
				contador_columna=contador_columna+1
				Escribir Sin Saltar " " contador_columna
			FinPara
			Escribir ""
		Fin Si
		Escribir Sin Saltar contador_fila " " 
		Para j<-1 Hasta 5 Con Paso 1 Hacer
			Escribir Sin Saltar " " M[i,j]
		Fin Para
		Escribir " "
	Fin Para
	
	
	Definir texto_limpio Como Caracteres
    Dimension array_abc[100] 
	
    Escribir "Ingrese texto a cifrar:"
    Leer texto_limpio
	
    // Asignar cada caracter a un elemento del arreglo
    Para i <- 1 Hasta Longitud(texto_limpio) Con Paso 1 Hacer
        array_abc[i] = Subcadena(texto_limpio, i, i)
    Fin Para
	
    // Mostrar el texto cifrado
    Escribir Sin Saltar"Cifrado: "
    Para i <- 1 Hasta Longitud(texto_limpio) Con Paso 1 Hacer
		Para k<-1 Hasta 5 Con Paso 1 Hacer
			Para l<-1 Hasta 5 Con Paso 1 Hacer
				Si M[k,l] == array_abc[i] Entonces
					Escribir Sin Saltar k l
				Fin Si
			Fin Para
		Fin Para
    Fin Para
FinAlgoritmo