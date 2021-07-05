.data 
     array: .space 40
     nullspace: .asciiz " "
.text
.globl main
main:
    la $a0,array       # a0储存数组的起始地址
    addi $t1,10        # t1储存数组长度
    move $t0,$zero     # t0计数，初始化为0
    move $s0,$a0       # s0记录当前输入的地址（以a0为起始地址）
    cin:
    li $v0,5           # 循环开始 
    syscall
    sll $s1,$t0,2      # s1记录偏移量，s1 = t0 * 4 
    add $s0,$s1,$a0    # s0 = a0 + 4*i (s0为当前输入地址)
    sw $v0,0($s0)      # 将v0中的数字存入s0表示的地址
    addi $t0,$t0,1     # t0 = t0 + 1
    bne $t0,$t1,cin    # if(t0 != t1) 跳转到cin
    
    addi $t2,$t1,-1    # t2 = 9 
    move $t0,$zero     # t0计数(i)，初始化为0
    Loop1:
    
    move $t3,$zero     # for(j=0;j<9-i;j++)
    Loop2:
    sub $t4,$t2,$t0    # t4=t2-t0，储存9-i

    sll $t5,$t3,2      # t5记录偏移量
    add $t6,$t5,$a0    # t6记录当前地址
    lw $s4,0($t6)      # s4 = num[j]
    lw $s5,4($t6)      # s5 = num[j+1]
    slt $s6,$s4,$s5    # if s4<s5 ,s6=1
    beq $zero,$s6,ELSE # if s4>=s5 ,go to else
    move $t7,$s4
    move $s4,$s5
    move $s5,$t7
    sw $s4,0($t6)
    sw $s5,4($t6)
    ELSE:
    
    addi $t3,$t3,1     # t3++
    bne $t3,$t4,Loop2       
    
    addi $t0,$t0,1     # t0 = t0 + 1
    bne $t0,$t2,Loop1  # if(t0 != t1) 跳转到Loop1

    move $a1,$a0       # 将a0记录的地址转移到a1
    move $t0,$zero     # t0计数，初始化为0
    cout:sll $s1,$t0,2 # s1记录偏移量，s1 = t0 * 4 
    add $s0,$a1,$s1
    lw $a0,0($s0)
    li $v0,1           
    syscall
    la $a0,nullspace   # a0储存空格地址
    li $v0,4
    syscall
    addi $t0,$t0,1     # t0 = t0 + 1
bne $t0,$t1,cout   # if t0！=10 跳转到cout
