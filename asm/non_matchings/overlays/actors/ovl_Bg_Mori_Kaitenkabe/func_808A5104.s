glabel func_808A5104
/* 00344 808A5104 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00348 808A5108 3C0E808A */  lui     $t6, %hi(func_808A5120)    ## $t6 = 808A0000
/* 0034C 808A510C 25CE5120 */  addiu   $t6, $t6, %lo(func_808A5120) ## $t6 = 808A5120
/* 00350 808A5110 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 00354 808A5114 E4800170 */  swc1    $f0, 0x0170($a0)           ## 00000170
/* 00358 808A5118 03E00008 */  jr      $ra                        
/* 0035C 808A511C E4800174 */  swc1    $f0, 0x0174($a0)           ## 00000174
