
.thumb

.section .isr_vector
.globl __stack_top
.long __stack_top
.long Reset_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler
.long Default_Handler

.text
.thumb
.thumb_func
.type Reset_Handler, function
Reset_Handler:
	b .

.thumb_func
.type Default_Handler, function
Default_Handler:
	b .
