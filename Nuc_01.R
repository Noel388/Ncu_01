# load function
library("stringr")

# load list
Mono_c = c("Glc", "Man", "Gal", "Gul", "Alt", "All", "Tal", "Ido", "GlcNAc", "ManNAc", "GalNAc", "GulNAc", "AltNAc", "AllNAc", "TalNAc", "IdoNAc", "GlcN", "ManN", "GalN", "GulN", "AltN", "AllN", "TalN", "IdoN", "GlcA", "ManA", "GalA", "GulA", "AltA", "AllA", "TalA", "IdoA", "Qui", "Rha", "6dGul", "6dAlt", "6dTal", "Fuc", "QuiNAc", "RhaNAc", "6dAltNAc", "6dTalNAc", "FucNAc", "Oli", "Tyv", "Abe", "Par", "Dig", "Col", "Ara", "Lyx", "Xyl", "Rib", "Kdn", "Neu5Ac", "Neu5Gc", "Neu", "Sia", "Pse", "Leg", "Aci", "4eLeg", "Bac", "LDmanHep", "Kdo", "Dha", "DDmanHep", "MurNAc", "MurNGc", "Mur", "Api", "Fru", "Tag", "Sor", "Psi")

# reorder the list from longest to smallest
Mono_c = Mono_c[order(nchar(Mono_c), decreasing = T)]


# Function
Nuc_01 = function(nuc_df){
	mono_df = c()
	for (mod_i in 1:length(nuc_df)){
		mono_df_temp = c()
		string = nuc_df[mod_i]
		for (time in 1:length(Mono_c)){
			word = Mono_c[time]
			if (str_detect(string, word) == T){
				string = str_remove(string, word)
				mono_df_temp = c(mono_df_temp, 1)
			}else{
				mono_df_temp = c(mono_df_temp, 0)
			}
		}
		mono_df = rbind(mono_df, mono_df_temp)
	}
}
