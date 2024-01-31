# java -jar drawj2d.jar -T screen -W 103 -H 100 -c intro-fenomenosond.hcl
# java -jar drawj2d.jar -T rmn -W 103 -H -c intro-fenomenosond.hcl

font Lines 4
offset [expr 103/2] 5

tlb {\displaystyle k = \dfrac{2\pi}{\lambda};\ \ \omega = \dfrac{2\pi}{T};} -1 10 1 10
tlb {\displaystyle v = \dfrac{\lambda}{T} = \dfrac{\dfrac{2\pi}{k}}{\dfrac{2\pi}{\omega}} = \dfrac{\omega}{k}} -1 30 1 30
tlb {\displaystyle v _{\text{cuerda}} \cong \sqrt{\dfrac{T}{\mu}}} -1 50 1 50
tlb {\displaystyle v _{\text{olas}} \cong \sqrt{\dfrac{g\lambda}{2\pi}}} -1 70 1 70