#x86, LINUX, 32bit, ELF executable, AT&T syntax

.text	
    .global _start
_start:
	  movl    $len,%edx
	  movl    $msg,%ecx
	  movl    $1,%ebx
	  movl    $4,%eax	# system call number (sys_write)
	  int     $0x80  	# call kernel                 

	  movl    $0,%ebx
	  movl    $1,%eax	# system call number (sys_exit)
	  int     $0x80		# call kernel
.data

msg:
	.ascii    "Hello, world!\n"
	len = . - msg