.data            	#Zona de datos
vector: .word 1 6		#Vector a cargar
#####
      .text      	#Zona de instrucciones
main: li $v0, 1  		#Llamada al sistema para print int
      lw $a0, vector ($0)	#Cargamos el primer numero
      addi $s0, $a0, 0		#Salvamos el primer numero
      syscall			#Llamada a sistema
      lw $a0, vector + 4($0)	#Cargamos el segundo numero
      addi $s1, $a0, 0		#Salvamos el segundo numero
      syscall			#Muestra el primer número en pantalla
      #addi $a0, $s0, 1		#Se realiza la suma sin modificar $s0
      #syscall    		#Muestra el segundo número en pantalla
loop: 			#Inicio del ciclo
      addi $s0, $s0, 1		#Sumamos 1
      addi $a0, $s0, 0		#Copiamos el valor $s0 ya actualizado
      syscall			#Imprimimos en consola
      ble $s0, $s1, loop	#$s0 Less than or equal to $s1
				#Salto a la etiqueta "loop"
      #syscall			#Llamada a systema

      li $v0, 10		#Finalizar programa
      syscall