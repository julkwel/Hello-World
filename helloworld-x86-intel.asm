; DOS, 16-bit, single segment, .com executable, intel syntax

    org  0x100    

    mov  dx, msg
    mov  ah, 9
    int  0x21

    mov  ah, 0x4c
    int  0x21

    msg  db 'Hello, World!', 0x0d, 0x0a, '$' 