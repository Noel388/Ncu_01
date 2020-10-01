# Ncu_01

The .R file contain a list of Monosaccharide and a simple function that output a 0/1 data frame. 

#### Example
```
> input = "Galb1-3GlcNAcb1-3Galb1-4[Fuca1-3]GlcNAcb-Sp"
> output = Nuc_01(input)
> output
                                            6dAltNAc 6dTalNAc LDmanHep DDmanHep GlcNAc ManNAc GalNAc GulNAc AltNAc
Galb1-3GlcNAcb1-3Galb1-4[Fuca1-3]GlcNAcb-Sp        0        0        0        0      1      0      0      0      0
                                            AllNAc TalNAc IdoNAc QuiNAc RhaNAc FucNAc Neu5Ac Neu5Gc MurNAc MurNGc 6dGul
Galb1-3GlcNAcb1-3Galb1-4[Fuca1-3]GlcNAcb-Sp      0      0      0      0      0      0      0      0      0      0     0
                                            6dAlt 6dTal 4eLeg GlcN ManN GalN GulN AltN AllN TalN IdoN GlcA ManA GalA
Galb1-3GlcNAcb1-3Galb1-4[Fuca1-3]GlcNAcb-Sp     0     0     0    1    0    0    0    0    0    0    0    0    0    0
                                            GulA AltA AllA TalA IdoA Glc Man Gal Gul Alt All Tal Ido Qui Rha Fuc Oli Tyv
Galb1-3GlcNAcb1-3Galb1-4[Fuca1-3]GlcNAcb-Sp    0    0    0    0    0   0   0   1   0   0   0   0   0   0   0   1   0   0
                                            Abe Par Dig Col Ara Lyx Xyl Rib Kdn Neu Sia Pse Leg Aci Bac Kdo Dha Mur Api
Galb1-3GlcNAcb1-3Galb1-4[Fuca1-3]GlcNAcb-Sp   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
                                            Fru Tag Sor Psi
Galb1-3GlcNAcb1-3Galb1-4[Fuca1-3]GlcNAcb-Sp   0   0   0   0
```

Note that the monosaccharide are obtained from Symbol Nomenclature for Glycans (SNFG) : (citation) Symbol Nomenclature for Graphical Representation of Glycans, Glycobiology 25: 1323-1324, 2015.
