.late_rodata
glabel D_80881040
    .float 0.1

.text
glabel BgHakaTrap_Init
/* 00000 8087FCA0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 8087FCA4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00008 8087FCA8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0000C 8087FCAC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00010 8087FCB0 3C058088 */  lui     $a1, %hi(D_80881010)       ## $a1 = 80880000
/* 00014 8087FCB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 8087FCB8 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 0001C 8087FCBC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 8087FCC0 24A51010 */  addiu   $a1, $a1, %lo(D_80881010)  ## $a1 = 80881010
/* 00024 8087FCC4 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00028 8087FCC8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0002C 8087FCCC 3C0B8088 */  lui     $t3, %hi(func_808809B0)    ## $t3 = 80880000
/* 00030 8087FCD0 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 00034 8087FCD4 A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
/* 00038 8087FCD8 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 0003C 8087FCDC 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00040 8087FCE0 240A0028 */  addiu   $t2, $zero, 0x0028         ## $t2 = 00000028
/* 00044 8087FCE4 13010086 */  beq     $t8, $at, .L8087FF00       
/* 00048 8087FCE8 256B09B0 */  addiu   $t3, $t3, %lo(func_808809B0) ## $t3 = 808809B0
/* 0004C 8087FCEC 26050178 */  addiu   $a1, $s0, 0x0178           ## $a1 = 00000178
/* 00050 8087FCF0 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00054 8087FCF4 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00058 8087FCF8 3C078088 */  lui     $a3, %hi(D_80880F54)       ## $a3 = 80880000
/* 0005C 8087FCFC 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00060 8087FD00 24E70F54 */  addiu   $a3, $a3, %lo(D_80880F54)  ## $a3 = 80880F54
/* 00064 8087FD04 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00068 8087FD08 0C01712B */  jal     Collider_SetCylinder
              
/* 0006C 8087FD0C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00070 8087FD10 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 00074 8087FD14 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00078 8087FD18 24190014 */  addiu   $t9, $zero, 0x0014         ## $t9 = 00000014
/* 0007C 8087FD1C 10600003 */  beq     $v1, $zero, .L8087FD2C     
/* 00080 8087FD20 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 00084 8087FD24 14610010 */  bne     $v1, $at, .L8087FD68       
/* 00088 8087FD28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8087FD2C:
/* 0008C 8087FD2C A2190168 */  sb      $t9, 0x0168($s0)           ## 00000168
/* 00090 8087FD30 A60801BC */  sh      $t0, 0x01BC($s0)           ## 000001BC
/* 00094 8087FD34 3C018088 */  lui     $at, %hi(D_80881040)       ## $at = 80880000
/* 00098 8087FD38 C4241040 */  lwc1    $f4, %lo(D_80881040)($at)  
/* 0009C 8087FD3C 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 000A0 8087FD40 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 000A4 8087FD44 3C0B8088 */  lui     $t3, %hi(func_80880484)    ## $t3 = 80880000
/* 000A8 8087FD48 15210004 */  bne     $t1, $at, .L8087FD5C       
/* 000AC 8087FD4C E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 000B0 8087FD50 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 000B4 8087FD54 A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
/* 000B8 8087FD58 A60A016A */  sh      $t2, 0x016A($s0)           ## 0000016A
.L8087FD5C:
/* 000BC 8087FD5C 256B0484 */  addiu   $t3, $t3, %lo(func_80880484) ## $t3 = 80880484
/* 000C0 8087FD60 1000006C */  beq     $zero, $zero, .L8087FF14   
/* 000C4 8087FD64 AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
.L8087FD68:
/* 000C8 8087FD68 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 000CC 8087FD6C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 000D0 8087FD70 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
/* 000D4 8087FD74 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 000D8 8087FD78 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 000DC 8087FD7C 358D0010 */  ori     $t5, $t4, 0x0010           ## $t5 = 00000010
/* 000E0 8087FD80 1461002C */  bne     $v1, $at, .L8087FE34       
/* 000E4 8087FD84 AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
/* 000E8 8087FD88 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 000EC 8087FD8C 24849CD0 */  addiu   $a0, $a0, 0x9CD0           ## $a0 = 06009CD0
/* 000F0 8087FD90 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 000F4 8087FD94 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 000F8 8087FD98 240E001E */  addiu   $t6, $zero, 0x001E         ## $t6 = 0000001E
/* 000FC 8087FD9C A20E0168 */  sb      $t6, 0x0168($s0)           ## 00000168
/* 00100 8087FDA0 3C0F8088 */  lui     $t7, %hi(D_80881014)       ## $t7 = 80880000
/* 00104 8087FDA4 8DEF1014 */  lw      $t7, %lo(D_80881014)($t7)  
/* 00108 8087FDA8 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 0010C 8087FDAC 3C018088 */  lui     $at, %hi(D_80881014)       ## $at = 80880000
/* 00110 8087FDB0 11E00007 */  beq     $t7, $zero, .L8087FDD0     
/* 00114 8087FDB4 3C088088 */  lui     $t0, %hi(func_808806BC)    ## $t0 = 80880000
/* 00118 8087FDB8 3C188088 */  lui     $t8, %hi(func_808808F4)    ## $t8 = 80880000
/* 0011C 8087FDBC 271808F4 */  addiu   $t8, $t8, %lo(func_808808F4) ## $t8 = 808808F4
/* 00120 8087FDC0 AE180164 */  sw      $t8, 0x0164($s0)           ## 00000164
/* 00124 8087FDC4 3C018088 */  lui     $at, %hi(D_80881014)       ## $at = 80880000
/* 00128 8087FDC8 10000007 */  beq     $zero, $zero, .L8087FDE8   
/* 0012C 8087FDCC AC201014 */  sw      $zero, %lo(D_80881014)($at) 
.L8087FDD0:
/* 00130 8087FDD0 AC391014 */  sw      $t9, %lo(D_80881014)($at)  
/* 00134 8087FDD4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00138 8087FDD8 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 0013C 8087FDDC 250806BC */  addiu   $t0, $t0, %lo(func_808806BC) ## $t0 = 808806BC
/* 00140 8087FDE0 AE080164 */  sw      $t0, 0x0164($s0)           ## 00000164
/* 00144 8087FDE4 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
.L8087FDE8:
/* 00148 8087FDE8 3C014361 */  lui     $at, 0x4361                ## $at = 43610000
/* 0014C 8087FDEC 44815000 */  mtc1    $at, $f10                  ## $f10 = 225.00
/* 00150 8087FDF0 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 00154 8087FDF4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00158 8087FDF8 44818000 */  mtc1    $at, $f16                  ## $f16 = 50.00
/* 0015C 8087FDFC 460A4001 */  sub.s   $f0, $f8, $f10             
/* 00160 8087FE00 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00164 8087FE04 44812000 */  mtc1    $at, $f4                   ## $f4 = 25.00
/* 00168 8087FE08 240B000A */  addiu   $t3, $zero, 0x000A         ## $t3 = 0000000A
/* 0016C 8087FE0C 46100480 */  add.s   $f18, $f0, $f16            
/* 00170 8087FE10 240C0028 */  addiu   $t4, $zero, 0x0028         ## $t4 = 00000028
/* 00174 8087FE14 E6000080 */  swc1    $f0, 0x0080($s0)           ## 00000080
/* 00178 8087FE18 A60B01B8 */  sh      $t3, 0x01B8($s0)           ## 000001B8
/* 0017C 8087FE1C 46049181 */  sub.s   $f6, $f18, $f4             
/* 00180 8087FE20 A60C01BA */  sh      $t4, 0x01BA($s0)           ## 000001BA
/* 00184 8087FE24 4600320D */  trunc.w.s $f8, $f6                   
/* 00188 8087FE28 440A4000 */  mfc1    $t2, $f8                   
/* 0018C 8087FE2C 1000002D */  beq     $zero, $zero, .L8087FEE4   
/* 00190 8087FE30 A60A016A */  sh      $t2, 0x016A($s0)           ## 0000016A
.L8087FE34:
/* 00194 8087FE34 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00198 8087FE38 1461000A */  bne     $v1, $at, .L8087FE64       
/* 0019C 8087FE3C 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 001A0 8087FE40 248481D0 */  addiu   $a0, $a0, 0x81D0           ## $a0 = 060081D0
/* 001A4 8087FE44 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 001A8 8087FE48 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 001AC 8087FE4C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 001B0 8087FE50 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 001B4 8087FE54 C60A0008 */  lwc1    $f10, 0x0008($s0)          ## 00000008
/* 001B8 8087FE58 46105481 */  sub.s   $f18, $f10, $f16           
/* 001BC 8087FE5C 1000000A */  beq     $zero, $zero, .L8087FE88   
/* 001C0 8087FE60 E6120008 */  swc1    $f18, 0x0008($s0)          ## 00000008
.L8087FE64:
/* 001C4 8087FE64 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 001C8 8087FE68 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 001CC 8087FE6C C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 001D0 8087FE70 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 001D4 8087FE74 24848D10 */  addiu   $a0, $a0, 0x8D10           ## $a0 = 06008D10
/* 001D8 8087FE78 46062200 */  add.s   $f8, $f4, $f6              
/* 001DC 8087FE7C 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 001E0 8087FE80 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 001E4 8087FE84 E6080008 */  swc1    $f8, 0x0008($s0)           ## 00000008
.L8087FE88:
/* 001E8 8087FE88 260501C4 */  addiu   $a1, $s0, 0x01C4           ## $a1 = 000001C4
/* 001EC 8087FE8C AFA50028 */  sw      $a1, 0x0028($sp)           
/* 001F0 8087FE90 0C0171F8 */  jal     Collider_InitTris              
/* 001F4 8087FE94 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 001F8 8087FE98 3C078088 */  lui     $a3, %hi(D_80880FF8)       ## $a3 = 80880000
/* 001FC 8087FE9C 260D01E4 */  addiu   $t5, $s0, 0x01E4           ## $t5 = 000001E4
/* 00200 8087FEA0 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00204 8087FEA4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00208 8087FEA8 24E70FF8 */  addiu   $a3, $a3, %lo(D_80880FF8)  ## $a3 = 80880FF8
/* 0020C 8087FEAC 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00210 8087FEB0 0C0172EB */  jal     Collider_SetTris              
/* 00214 8087FEB4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00218 8087FEB8 921901A5 */  lbu     $t9, 0x01A5($s0)           ## 000001A5
/* 0021C 8087FEBC 3C098088 */  lui     $t1, %hi(func_808801B8)    ## $t1 = 80880000
/* 00220 8087FEC0 240E0012 */  addiu   $t6, $zero, 0x0012         ## $t6 = 00000012
/* 00224 8087FEC4 240F0073 */  addiu   $t7, $zero, 0x0073         ## $t7 = 00000073
/* 00228 8087FEC8 252901B8 */  addiu   $t1, $t1, %lo(func_808801B8) ## $t1 = 808801B8
/* 0022C 8087FECC A21901A5 */  sb      $t9, 0x01A5($s0)           ## 000001A5
/* 00230 8087FED0 37280010 */  ori     $t0, $t9, 0x0010           ## $t0 = 00000010
/* 00234 8087FED4 A60E01B8 */  sh      $t6, 0x01B8($s0)           ## 000001B8
/* 00238 8087FED8 A60F01BA */  sh      $t7, 0x01BA($s0)           ## 000001BA
/* 0023C 8087FEDC A20801A5 */  sb      $t0, 0x01A5($s0)           ## 000001A5
/* 00240 8087FEE0 AE090164 */  sw      $t1, 0x0164($s0)           ## 00000164
.L8087FEE4:
/* 00244 8087FEE4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00248 8087FEE8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0024C 8087FEEC 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 00250 8087FEF0 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00254 8087FEF4 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00258 8087FEF8 10000006 */  beq     $zero, $zero, .L8087FF14   
/* 0025C 8087FEFC AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
.L8087FF00:
/* 00260 8087FF00 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 00264 8087FF04 44815000 */  mtc1    $at, $f10                  ## $f10 = 500.00
/* 00268 8087FF08 A20A0168 */  sb      $t2, 0x0168($s0)           ## 00000168
/* 0026C 8087FF0C AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
/* 00270 8087FF10 E60A00F8 */  swc1    $f10, 0x00F8($s0)          ## 000000F8
.L8087FF14:
/* 00274 8087FF14 3C068088 */  lui     $a2, %hi(D_80881008)       ## $a2 = 80880000
/* 00278 8087FF18 24C61008 */  addiu   $a2, $a2, %lo(D_80881008)  ## $a2 = 80881008
/* 0027C 8087FF1C 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00280 8087FF20 0C0187B5 */  jal     func_80061ED4              
/* 00284 8087FF24 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00288 8087FF28 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0028C 8087FF2C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00290 8087FF30 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00294 8087FF34 03E00008 */  jr      $ra                        
/* 00298 8087FF38 00000000 */  nop
