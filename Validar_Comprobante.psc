Algoritmo ValidarComprobanteElectronico
	
	Escribir "================================="
	Escribir "    COMPROBANTE - ELECTRONICO    "
	Escribir "================================="
	Escribir 'Ingrese el comprobante Electronico:'
	Leer numero
	valido <- Verdadero
	// Longitud
	Si Longitud(numero)<>13 Entonces
		valido <- Falso
	FinSi
	// Guion
	Si valido Entonces
		Si SubCadena(numero,5,5)<>'-' Entonces
			valido <- Falso
		FinSi
	FinSi
	// Primera letra
	Si valido Entonces
		Si SubCadena(numero,1,1)<>'B' Y SubCadena(numero,1,1)<>'F' Entonces
			valido <- Falso
		FinSi
	FinSi
	// Tres digitos de la serie
	Si valido Entonces
		Para i<-2 Hasta 4 Hacer
			c <- SubCadena(numero,i,i)
			Si c<'0' O c>'9' Entonces
				valido <- Falso
			FinSi
		FinPara
	FinSi
	// Ocho digitos del correlativo
	Si valido Entonces
		Para i<-6 Hasta 13 Hacer
			c <- SubCadena(numero,i,i)
			Si c<'0' O c>'9' Entonces
				valido <- Falso
			FinSi
		FinPara
	FinSi
	Si valido Entonces
		Escribir 'Comprobante valido.'
	SiNo
		Escribir 'Comprobante invalido.'
	FinSi
FinAlgoritmo
