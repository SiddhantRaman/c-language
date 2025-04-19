# Any thing starting with a # is a comment and is ignored by the assembler
# Label : Any word ending with a : is a label
# directives : anything staing with .
_start:
    li sp, 0x80002000
    jal siddhant
    addi a2, x0, 5
    addi a3, x0, 2
    addi a4, x0, 0
    jal _addLoop
    j .
    
_addLoop:
    add a4, a4, a2
    addi a3, a3, -1
    bnez a3, _addLoop