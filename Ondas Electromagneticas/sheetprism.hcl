# java -jar drawj2d.jar -T screen -W 103 -H 330 sheetprism.hcl
# java -jar drawj2d.jar -T rmn -W 330 -H 330 sheetprism.hcl

font TeX 4
offset [expr 103/2] 5

set A {-50 50}; set B {50 50}; set C {-50 85}; set D {50 85}
set E {-17 35}; set F {-17 100}; set G {17 35}; set H {17 100}

line $A $B; line $C $D

pen inkblue

line $E $F; line $G $H

set X {-50 35}; set P {-17 50}; set Q {17 85}; set Y {50 100}

pen inkred

line $X $P
lineto $Q
lineto $Y

line [geom.extend $X $P 0 55]
line [geom.extend $Y $Q 0 55]

pen black

m $A; mr 0 -1; tlb {n_1} NE
m $C; mr 0 -1; tlb {n_2} NE
m $C; mr 0 +1; tlb {n_1} SE

texdimline -40 50 -40 85 e

pen inkred

set W {24.363 68.801}; set Z {-24.363 66.199}

texdimline $P $Z d

pen inkblue

m $P

texdimangle $X $E {\ }
texdimangle $Q $F {\ }

mr -3.5 -7.5; tlb {\theta_{i_1}} C
mr 7 13.5; tlb {\theta_{r_1}} C

m $Q

texdimangle $P $G {\ }
texdimangle $Y $H {\ }

mr -3 -8; tlb {\theta_{i_2}} C
mr 7 13.5; tlb {\theta_{r_2}} C

pen black

m $P; tlb {A} NE
m $Q; mr -1 2; tlb {B} SW

tlb {\displaystyle \cos \theta_{r_1}=\dfrac{e}{\ \overline{AB}\ };\quad \sin \left(\theta_{r_2}-\theta_{i_2}\right)=\dfrac{d}{\ \overline{AB}\ }} -1 120 1 120

tlb {\displaystyle \overline{AB}=\overline{AB};\quad d=e\cdot\dfrac{\sin \left(\theta_{r_2}-\theta_{i_2}\right)}{\cos \theta_{r_1}}} -1 140 1 140

set M {0 160}; set N {-50 210}; set Ñ {50 210};
set J {0 210}; set K {-25 185}; set L {25 185}

line $M $N; line $M $Ñ

texdimangle $M $Ñ $N {\phi}

pen inkred

line [geom.extend -48 195 $K 0 37]
line $K $L
line [geom.extend $L 48 195 30 0]

texdimangle [geom.intersect -48 195 $K $L 48 195] [geom.intersect -48 195 $K $M $Ñ] $L {\delta}

pen inkblue

line [geom.extend $J $L 5 30]
line [geom.extend $J $K 10 30]

texdimangle $K -48 195 -46.214 163.786 {\theta_{i_1}}
texdimangle $L 46.214 163.786 48 195 {\theta_{r_2}}
texdimangle $K $L [geom.intersect $J $K $J $L] {\theta_{r_1}}
texdimangle $L [geom.intersect $J $K $J $L] $K {\theta_{i_2}}
texdimangle $J $L 1 211 {\phi}

pen black

tlb {\displaystyle \left( 180\degree - \phi \right) + \theta_{r_1} + \theta_{i_2} = 180\degree; \quad \phi = \theta_{r_1} + \theta_{i_2}} -1 230 1 230
tlb {\displaystyle \left( 180\degree - \delta \right) + \left( \theta_{i_1} - \theta_{r_1} \right) + \left( \theta_{r_2} - \theta_{i_2} \right) = 180\degree} -1 250 1 250
tlb {\displaystyle \delta = \theta_{i_1} + \theta_{r_2} - \phi} -1 270 1 270