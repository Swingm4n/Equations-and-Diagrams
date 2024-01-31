# java -jar drawj2d.jar -T screen -W 103 -H 330 ondas-armonicas.hcl
# java -jar drawj2d.jar -T rmn -W 103 -H 330 ondas-armonicas.hcl

font Lines 4
offset [expr 103/2] 5
tlb {\displaystyle k = \dfrac{2\pi}{\lambda};\ \ \omega = \dfrac{2\pi}{T};} -1 10 1 10
tlb {\displaystyle v = \dfrac{\lambda}{T} = \dfrac{\dfrac{2\pi}{k}}{\dfrac{2\pi}{\omega}} = \dfrac{\omega}{k}} -1 30 1 30
tlb {\displaystyle v _{\text{cuerda}} \cong \sqrt{\dfrac{T}{\mu}}} -1 50 1 50
tlb {\displaystyle v _{\text{olas}} \cong \sqrt{\dfrac{g\lambda}{2\pi}}} -1 70 1 70
tlb {\displaystyle v _{\text{sonido}} \cong \sqrt{\dfrac{P}{\rho}}} -1 90 1 90
tlb {\displaystyle v _{\text{luz}} = c = \dfrac{1}{\sqrt{\mu \epsilon}}} -1 110 1 110
tlb {\displaystyle y \left(x,t \right) = A \cdot \text{sen}\left(\omega t \pm kx + \phi _{0}\right)} -1 130 1 130
tlb {\displaystyle \phi _{0} = \text{arcsen}\left(\dfrac{y \left(0,0 \right)}{A}\right)} -1 150 1 150
tlb {\displaystyle v _{\text{osc}}\left(x,t\right) = \dfrac{\partial y \left(x,t \right)}{\partial t} = A\omega \cdot \text{cos}\left(\omega t \pm kx + \phi _{0}\right)} -1 170 1 170
tlb {\displaystyle v _{\text{osc máx}} = \left|A\omega\right|} -1 190 1 190
tlb {\displaystyle a _{\text{osc}}\left(x,t\right) = \dfrac{\partial v _{\text{osc}} \left(x,t \right)}{\partial t} = -A\omega^2 \cdot \text{sen}\left(\omega t \pm kx + \phi _{0}\right)} -1 210 1 210
tlb {\displaystyle a _{\text{osc máx}} = \left|A\omega^2\right|} -1 230 1 230
tlb {\displaystyle \Delta\phi _{1 \rightarrow 2} = k \cdot \Delta x_{1 \rightarrow 2}} -1 250 1 250
tlb {\displaystyle \Delta\phi _{1 \rightarrow 2} = k \cdot \Delta t_{1 \rightarrow 2}} -1 270 1 270