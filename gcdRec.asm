.data
str1: .asciiz "Enter an integer: "
str2: .asciiz "\nEnter another integer: "
str3: .asciiz "\nThe greatest common divisor is: "

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

  jal gcdRec
  


#Request firstinteger from the user

#Request second integer from the user

#call gcdRec with method with two paremeters

#get the result from the gcdRec and print it

gcdRec:
#find the gcd of the given two integers recursively



