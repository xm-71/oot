glabel func_80914610
/* 03FD0 80914610 8FA30010 */  lw      $v1, 0x0010($sp)           
/* 03FD4 80914614 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 03FD8 80914618 84680002 */  lh      $t0, 0x0002($v1)           ## 00000002
/* 03FDC 8091461C C45003D4 */  lwc1    $f16, 0x03D4($v0)          ## 000003D4
/* 03FE0 80914620 846B0004 */  lh      $t3, 0x0004($v1)           ## 00000004
/* 03FE4 80914624 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 03FE8 80914628 448B3000 */  mtc1    $t3, $f6                   ## $f6 = 0.00
/* 03FEC 8091462C 468042A0 */  cvt.s.w $f10, $f8                  
/* 03FF0 80914630 46803220 */  cvt.s.w $f8, $f6                   
/* 03FF4 80914634 46105480 */  add.s   $f18, $f10, $f16           
/* 03FF8 80914638 4600910D */  trunc.w.s $f4, $f18                  
/* 03FFC 8091463C 440A2000 */  mfc1    $t2, $f4                   
/* 04000 80914640 00000000 */  nop
/* 04004 80914644 A46A0002 */  sh      $t2, 0x0002($v1)           ## 00000002
/* 04008 80914648 C44A03D8 */  lwc1    $f10, 0x03D8($v0)          ## 000003D8
/* 0400C 8091464C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 04010 80914650 460A4400 */  add.s   $f16, $f8, $f10            
/* 04014 80914654 4600848D */  trunc.w.s $f18, $f16                 
/* 04018 80914658 440D9000 */  mfc1    $t5, $f18                  
/* 0401C 8091465C 03E00008 */  jr      $ra                        
/* 04020 80914660 A46D0004 */  sh      $t5, 0x0004($v1)           ## 00000004
