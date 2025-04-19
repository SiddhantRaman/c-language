# Any thing starting with a # is a comment and is ignored by the assembler
# Label : Any word ending with a : is a label
# directives : anything staing with .
_start:
    addi x1, x0, 2
    addi x2, x0, 5
    addi x3, x0, 0
    j addLoop
    j .
    
addLoop:
    add x3, x3, x1
    addi x2, x2, -1
    bnez x2, addLoop