.syntax unified
.global lab2

// Define a macro for factorial calculation
.macro factorial n, result
    mov \result, #1         
    cmp \n, #1              
    ble 2f                  
    mov r4, #2              
1:                         
    mul \result, \result, r4 
    add r4, r4, #1          
    cmp r4, \n              
    ble 1b                  // Continue loop if r4 <= n
2:                          
.endm

lab2:
    // Setup initial values
    mov r0, #4             // r0 = a
    mov r1, #6              // r1 = b
    mov r2, #3              // r2 = c
    mov r5, #0		    


    add r3, r0, r1          // r3 = a + b
    asr r3, r3, #1          // r3 = (a + b) / 2

    factorial r2, r5        

    add r3, r3, r5          // r3 = (a + b) / 2 + c!

    pop { r0, r1, r2, r3, r5 }                 
