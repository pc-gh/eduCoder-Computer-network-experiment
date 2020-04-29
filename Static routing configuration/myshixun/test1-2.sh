cat second/PC1_startup.vpc second/PC2_startup.vpc
grep -C0 "hostname\|interface\|address" second/R1_i1_startup-config.cfg
grep -C0 "hostname\|interface\|address" second/R2_i2_startup-config.cfg
grep -C0 "hostname\|interface\|address" second/R3_i3_startup-config.cfg