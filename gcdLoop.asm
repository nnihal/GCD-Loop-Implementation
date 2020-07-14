.data 
str1: .asciiz "Enter a number: "	 
str2: .asciiz "Enter another number: " 
str3: .aVize Tarihlerisciiz "\n divisor ="

.text main: 
li $v0, 4 
la $a0, str1 
syscall 
li $v0, 5 
syscall 
 move $t0, $v0
 move $s0, $v0
 li $v0, 4 
 la $a0, str2 
 syscall 

 li $v0, 5 
 syscall 
  move $t1, $v0 

  jal gcdLoop 
  
  gcdLoop: #t3 = r
  	sub $t3, $s0, $t1
	move $s0, $t3
  	slt $t4, $s0, $t1
  	beq $t3 ,$zero, Exit
  	beq $t4, $zero, gcdLoop
  	move $s0, $t1
  	move $t1, $t3
  	jal gcdLoop
  Exit:
  
  


    li $v0, 4
    la $a0, str3
    syscall

    li $v0, 1
    move $a0, $t1
    syscall
