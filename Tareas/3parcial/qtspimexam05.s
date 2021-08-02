.data            		#Zona de datos
vector: .word 34 28		#Vector de datos

      .text      		#Zona de instrucciones
main: li $v0, 1  		#Llamada al sistema para imprimir entero
      lw $a0, vector ($0)	#Se extrae el numero 34
      addi $s0, $a0, 0		#Instruccion para copiar el dato del parametro(34)
      syscall			#Visualizamos en pantalla
      lw $a0, vector + 4($0)	#Se extrae el numero 28
      addi $s1, $a0, 0		#Instruccion para copiar el dato del parametro(28)
      syscall			#Visualizamos en pantalla
      add $a0, $s0, $s1		#Suma simple
      syscall    		#Muestra el segundo número en pantalla


      li $v0, 10 # Finalizarprograma
      syscall