#Anh Nguyen
#Bitmap Project: Drawing a little ghost giving hearts in pastel pink background
# Bitmap Display Configuration:
# - Unit width in pixels: 8
# - Unit height in pixels: 8
# - Display width in pixels: 256
# - Display height in pixels: 512
# - Base Address for Display: 0x10008000 ($gp)
#
.data 
#All colors code needed for the drawing
	Red: .word 0xE42402
	Green: .word 0x369470
	Yellow: .word 0xFFD700
	Pink: .word 0xEE719D
	DarkPurple: .word 0x4B0082
	Purple: .word 0xFFDFD3
	White: .word 0xFFFFFF
	Black: .word 0x000000
	Grey: .word  0xD3D3D3
	LightPurple: .word 0xCBC3E3
	Tomato: .word 0xFF6347
	Blue: .word 0x4169E1
#Addresses
topHeart: .word 0x10008900	#address of the top hearts
bottomHeart: .word 0x10008000	#address of the bottom hearts
middleItem: .word 0x10008400	#address of the middle hearts
addrr: .word 0x10008000		#base address
ghostAddress: .word 0x10009108	#the ghost address
.text
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		lw $t0, addrr
		
		#Start filling the background with pastel pink color
		addi $sp, $sp, -4
 		sw $ra, 0($sp)
		lw $t9, Purple			#loading background color
		add $t1, $zero, $zero		
		addi $t2, $zero, 2048  		#bitmap size = 64 x 8 = 2048
		lw $t0, addrr 			#load base address
		loopBackgroundColor:
			beq $t1, $t2, finish
			sw $t9, 0($t0) 		#Paint the background with pastel pink
			addi $t0, $t0, 4 
			addi $t1, $t1, 1
			j loopBackgroundColor
		finish:
			lw $t0, 0($sp)
   			addi $sp, $sp, 4

#Start with drawing hearts		
drawHearts:	
		#Top Pink Heart
		lw $t0, topHeart
		lw $t1, Pink
 		addi $t0, $t0, 256
 		addi $t0, $t0, 128 	#First line of heart
 		sw $t1, 64($t0)
 		sw $t1, 80($t0)
 		
 		addi $t0, $t0, 128 	#Second line of heart
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 		sw $t1, 84($t0)
 		
 		addi $t0, $t0, 128 	#Third line of heart
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 		sw $t1, 84($t0)

 		addi $t0, $t0, 128 	#Forth line of heart
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 
 		
 		addi $t0, $t0, 128 	#Fifth line of heart 
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		
 		addi $t0, $t0, 128 
 		sw $t1, 72($t0)
 		########
 		#Top Red Heart on the left of the Pink heart 
 		lw $t0, topHeart
		lw $t1, DarkPurple
	
		addi $t0, $t0, 256
 		addi $t0, $t0, 128
 		sw $t1, 8($t0) 
 		sw $t1, 24($t0)
 		
 		addi $t0, $t0, 128 
 		sw $t1, 4($t0)
 		sw $t1, 8($t0)
 		sw $t1, 12($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		
 		addi $t0, $t0, 128 
 		sw $t1, 4($t0)
 		sw $t1, 8($t0)
 		sw $t1, 12($t0)
 		sw $t1, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)

 		addi $t0, $t0, 128 
 		sw $t1, 8($t0)
 		sw $t1, 12($t0)
 		sw $t1, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 
 		
 		addi $t0, $t0, 128 
 		sw $t1, 12($t0)
 		sw $t1, 16($t0)
 		sw $t1, 20($t0)
 		
 		addi $t0, $t0, 128 
 		sw $t1, 16($t0)
 		#####
 		
 		#Bottom Yellow Heart
		lw $t0, bottomHeart
		lw $t1, Yellow
 		addi $t0, $t0, 256
 		addi $t0, $t0, 128 
 		sw $t1, 64($t0)
 		sw $t1, 80($t0)
 		
 		addi $t0, $t0, 128 
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 		sw $t1, 84($t0)
 		
 		addi $t0, $t0, 128 
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 		sw $t1, 84($t0)

 		addi $t0, $t0, 128 
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 
 		
 		addi $t0, $t0, 128 
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		
 		addi $t0, $t0, 128 
 		sw $t1, 72($t0)
 		####
 		
 		#Bottom Green Heart
 		lw $t0, bottomHeart
		lw $t1, Green
	
		#Green Heart on the left of the Yellow Heart 
		addi $t0, $t0, 256
 		addi $t0, $t0, 128 
 		sw $t1, 8($t0) 
 		sw $t1, 24($t0)
 		
 		addi $t0, $t0, 128 
 		sw $t1, 4($t0)
 		sw $t1, 8($t0)
 		sw $t1, 12($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		
 		addi $t0, $t0, 128
 		sw $t1, 4($t0)
 		sw $t1, 8($t0)
 		sw $t1, 12($t0)
 		sw $t1, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)

 		addi $t0, $t0, 128 
 		sw $t1, 8($t0)
 		sw $t1, 12($t0)
 		sw $t1, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 
 		
 		addi $t0, $t0, 128 
 		sw $t1, 12($t0)
 		sw $t1, 16($t0)
 		sw $t1, 20($t0)
 		
 		addi $t0, $t0, 128
 		sw $t1, 16($t0)
 		
 		#Tomato Heart in the middle line 
 	
 		lw $t0, middleItem
		lw $t1, Tomato
	
		addi $t0, $t0, 256
 		addi $t0, $t0, 128 
 		sw $t1, 36($t0) 
 		sw $t1, 52($t0)
 		
 		addi $t0, $t0, 128 
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		
 		addi $t0, $t0, 128 
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)

 		addi $t0, $t0, 128 
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 
 		
 		addi $t0, $t0, 128 
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		
 		addi $t0, $t0, 128 
 		sw $t1, 44($t0)
 		#####
 		

 		#draw another heart next to the middle heart
 		lw $t0, middleItem
		lw $t1, Blue
 		addi $t0, $t0, 256
 		addi $t0, $t0, 128 
 		sw $t1, 92($t0)
 		sw $t1, 108($t0)
 		
 		addi $t0, $t0, 128 
 		sw $t1, 88($t0)
 		sw $t1, 92($t0)
 		sw $t1, 96($t0)
 		sw $t1, 104($t0)
 		sw $t1, 108($t0)
 		sw $t1, 112($t0)
 		
 		addi $t0, $t0, 128 
 		sw $t1, 88($t0)
 		sw $t1, 92($t0)
 		sw $t1, 96($t0)
 		sw $t1, 100($t0)
 		sw $t1, 104($t0)
 		sw $t1, 108($t0)
 		sw $t1, 112($t0)

 		addi $t0, $t0, 128 
 		sw $t1, 92($t0)
 		sw $t1, 96($t0)
 		sw $t1, 100($t0)
 		sw $t1, 104($t0)
 		sw $t1, 108($t0)
 
 		
 		addi $t0, $t0, 128 
 		sw $t1, 96($t0)
 		sw $t1, 100($t0)
 		sw $t1, 104($t0)
 		
 		addi $t0, $t0, 128 
 		sw $t1, 100($t0)
 		####
 		
 		
 		#Draw a ghost in the bottom 
 	drawGhost:	
 		lw $t0, ghostAddress	#Load ghost address
 		lw $t1, White		#Load all the colors needed to draw the ghost
 		lw $t2, Black
 		lw $t3, Grey
 		lw $t4, LightPurple
 		lw $t5, Red
 		
 		sw $t2, 36($t0)		#Starting point to draw a ghost
 		sw $t2, 40($t0)
 		sw $t2, 44($t0)
 		sw $t2, 48($t0)
 		sw $t2, 52($t0)
 		sw $t2, 56($t0)
 		sw $t2, 60($t0)
 		sw $t2, 64($t0) 	#+6 draw a heart next to the head tip
 		sw $t5, 88($t0)
 		sw $t5, 92($t0)
 		sw $t9, 96($t0)
 		sw $t5, 100($t0)
 		sw $t5, 104($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 32($t0)
 		sw $t2, 36($t0)
 		sw $t3, 40($t0)
 		sw $t3, 44($t0)
 		sw $t3, 48($t0)
 		sw $t3, 52($t0)
 		sw $t3, 56($t0)
 		sw $t3, 60($t0)
 		sw $t3, 64($t0)
 		sw $t2, 68($t0)
 		sw $t2, 72($t0)
 		sw $t5, 88($t0)
 		sw $t5, 92($t0)
 		sw $t5, 96($t0)
 		sw $t5, 100($t0)
 		sw $t5, 104($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 28($t0)
 		sw $t3, 32($t0)
 		sw $t3, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t3, 72($t0)
 		sw $t2, 76($t0)
 		sw $t5, 92($t0)
 		sw $t5, 96($t0)
 		sw $t5, 100($t0)
 			
 		addi $t0, $t0, 128
 		sw $t2, 24($t0)
 		sw $t3, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t3, 76($t0)
 		sw $t2, 80($t0)
 		sw $t5, 96($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 20($t0)
 		sw $t3, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t3, 80($t0)
 		sw $t2, 84($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 16($t0)
 		sw $t3, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 		sw $t3, 84($t0)
 		sw $t2, 88($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 16($t0)
 		sw $t3, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 		sw $t3, 84($t0)
 		sw $t2, 88($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 12($t0)
 		sw $t3, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t2, 44($t0)
 		sw $t2, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t2, 72($t0)
 		sw $t2, 76($t0)
 		sw $t1, 80($t0)
 		sw $t1, 84($t0)
 		sw $t3, 88($t0)
 		sw $t2, 92($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 12($t0)
 		sw $t3, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t2, 44($t0)
 		sw $t2, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t2, 72($t0)
 		sw $t2, 76($t0)
 		sw $t1, 80($t0)
 		sw $t1, 84($t0)
 		sw $t3, 88($t0)
 		sw $t2, 92($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 12($t0)
 		sw $t3, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t2, 44($t0)
 		sw $t2, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t2, 72($t0)
 		sw $t2, 76($t0)
 		sw $t1, 80($t0)
 		sw $t1, 84($t0)
 		sw $t3, 88($t0)
 		sw $t2, 92($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 12($t0)
 		sw $t3, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t4, 36($t0)
 		sw $t4, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t4, 80($t0)
 		sw $t4, 84($t0)
 		sw $t3, 88($t0)
 		sw $t2, 92($t0)
		
		addi $t0, $t0, 128
		sw $t2, 12($t0)
 		sw $t3, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t4, 36($t0)
 		sw $t4, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t2, 60($t0)
 		sw $t2, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t4, 80($t0)
 		sw $t4, 84($t0)
 		sw $t3, 88($t0)
 		sw $t2, 92($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 12($t0)
 		sw $t3, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 		sw $t1, 84($t0)
 		sw $t3, 88($t0)
 		sw $t2, 92($t0)
 		sw $t2, 96($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 12($t0)
 		sw $t3, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 		sw $t1, 84($t0)
 		sw $t3, 88($t0)
 		sw $t3, 92($t0)
 		sw $t3, 96($t0)
 		sw $t2, 100($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 12($t0)
 		sw $t3, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 		sw $t1, 84($t0)
 		sw $t1, 88($t0)
 		sw $t1, 92($t0)
 		sw $t3, 96($t0)
 		sw $t2, 100($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, -4($t0)
 		sw $t9, 0($t0)
 		sw $t9, 4($t0)
 		sw $t2, 8($t0)
 		sw $t3, 12($t0)
 		sw $t1, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 		sw $t1, 84($t0)
 		sw $t3, 88($t0)
 		sw $t3, 92($t0)
 		sw $t3, 96($t0)
 		sw $t2, 100($t0)
 		
 		
 		addi $t0, $t0, 128
 		sw $t2, -8($t0)
 		sw $t3, -4($t0)
 		sw $t2, 0($t0)
 		sw $t2, 4($t0)
 		sw $t3, 8($t0)
 		sw $t1, 12($t0)
 		sw $t1, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 		sw $t1, 84($t0)
 		sw $t3, 88($t0)
 		sw $t2, 92($t0)
 		sw $t2, 96($t0)
 		sw $t2, 100($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, -8($t0)
 		sw $t3, -4($t0)
 		sw $t3, 0($t0)
 		sw $t3, 4($t0)
 		sw $t1, 8($t0)
 		sw $t1, 12($t0)
 		sw $t1, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 		sw $t1, 84($t0)
 		sw $t2, 88($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, -8($t0)
 		sw $t3, -4($t0)
 		sw $t1, 0($t0)
 		sw $t1, 4($t0)
 		sw $t1, 8($t0)
 		sw $t1, 12($t0)
 		sw $t1, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t1, 80($t0)
 		sw $t3, 84($t0)
 		sw $t2, 88($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, -8($t0)
 		sw $t3, -4($t0)
 		sw $t3, 0($t0)
 		sw $t1, 4($t0)
 		sw $t1, 8($t0)
 		sw $t1, 12($t0)
 		sw $t1, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t1, 76($t0)
 		sw $t3, 80($t0)
 		sw $t2, 84($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, -4($t0)
 		sw $t2, 0($t0)
 		sw $t3, 4($t0)
 		sw $t1, 8($t0)
 		sw $t1, 12($t0)
 		sw $t1, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t1, 68($t0)
 		sw $t1, 72($t0)
 		sw $t3, 76($t0)
 		sw $t2, 80($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 4($t0)
 		sw $t3, 8($t0)
 		sw $t3, 12($t0)
 		sw $t1, 16($t0)
 		sw $t1, 20($t0)
 		sw $t1, 24($t0)
 		sw $t1, 28($t0)
 		sw $t1, 32($t0)
 		sw $t1, 36($t0)
 		sw $t1, 40($t0)
 		sw $t1, 44($t0)
 		sw $t1, 48($t0)
 		sw $t1, 52($t0)
 		sw $t1, 56($t0)
 		sw $t1, 60($t0)
 		sw $t1, 64($t0)
 		sw $t3, 68($t0)
 		sw $t3, 72($t0)
 		sw $t2, 76($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 8($t0)
 		sw $t2, 12($t0)
 		sw $t3, 16($t0)
 		sw $t3, 20($t0)
 		sw $t3, 24($t0)
 		sw $t3, 28($t0)
 		sw $t3, 32($t0)
 		sw $t3, 36($t0)
 		sw $t3, 40($t0)
 		sw $t3, 44($t0)
 		sw $t3, 48($t0)
 		sw $t3, 52($t0)
 		sw $t3, 56($t0)
 		sw $t3, 60($t0)
 		sw $t3, 64($t0)
 		sw $t2, 68($t0)
 		sw $t2, 72($t0)
 		
 		addi $t0, $t0, 128
 		sw $t2, 12($t0)
 		sw $t2, 16($t0)
 		sw $t2, 20($t0)
 		sw $t2, 24($t0)
 		sw $t2, 28($t0)
 		sw $t2, 32($t0)
 		sw $t2, 36($t0)
 		sw $t2, 40($t0)
 		sw $t2, 44($t0)
 		sw $t2, 48($t0)
 		sw $t2, 52($t0)
 		sw $t2, 56($t0)
 		sw $t2, 60($t0)
 		sw $t2, 64($t0)
 		sw $t2, 68($t0)
 			
	addi $sp, $sp, -4
	sw $ra, 0($sp)
 		
exit:
	li $v0, 10 	#exit program
	syscall

	
