# Chimera_Survival

This project serves to analyze the combined datasets of the reciprocal chimera survival experiments. Either CaMKK2 KO or B6/J (WT) mice received either CaMKK2 KO or WT bone marrow. This resulted in a 4 group survival experiment. The experiment was repeated twice to validate the results. Whether data comes from the first experimental replicate or the second is reflected in the `rep` parameter in the data. 

In order to determine if the datasets from each replicate could be combined, a Cox proportional hazard analysis was performed to see if the `rep` parameter had a significant effect. This analysis can be found in a .PDF file called "Recip_Chimera_CoxPH". The p-value for the `rep` parameter was .835, suggesting it did not have a significant effect on the outcomes between the two datasets. This analysis also showed that the recipient genotype has a significant effect on survival (p=0.00532).

Following this, the data was combined and analyzed in Graphpad Prism 8. This analysis can be found in the .pdf file called "Recip_Chimera_combined". Initially, a Wilcoxon test was performed to determined if there were differences present in the data, and this resulted in a highly significant observation (p < .0001). Following this, several pairwise tests were conducted with the Log-Rank Mantel-Cox test to investigate differences between groups. WT-> WT v KO-> KO was highly significant (p < .0001) suggesting that the chimera generation process did not confound the results, as we know that in regular germline WT v KO comparisons the survival is highly significant. Because we know that the recipient genotype is important from the Cox analysis, the quesiton remained which recipient genotype was driving the effect. The WT->WT v KO->WT comparison was non-significant, which suggests that KO bone marrow, by itself, is not enough to produce significant survival benefits. However the WT->WT v. WT->KO comparison was significant, which suggests that a KO recipient survives tumor challenge significantly better, even without KO bone marrow. The WT->KO v. KO->KO comparison revealed that for the full survival effect, both KO bone marrow and a KO host are required. 

Collectively, these analysis suggest that the pro-tumor effects of CaMKK2 are primarily in the host, and not in the bone marrow. Although, for the full pro-tumor effect, hematopoetic and non-hematopoetic CaMKK2 are necessary. 
