# Protein-location-prediction
A program written to accurately predict the location of a specific protein in different strains of yeast using KNN classifiers.

This program uses the caret package in R to try and predict the location of a protein.

The analysis develops and a function with 8 attributes as variables and predicts the localisation of protein.

The various attributes are: 
1. Sequence Name: Accession number for the SWISS-PROT database (not used in the algorithm).
2. mcg: McGeoch's method for signal sequence recognition. 
3. gvh: von Heijne's method for signal sequence recognition. 
4. alm: Score of the ALOM membrane spanning region prediction program. 
5. mit: Score of discriminant analysis of the amino acid content of the N-terminal region (20 residues long) of mitochondrial and non-mitochondrial proteins. 
6. erl: Presence of "HDEL" substring (thought to act as a signal for retention in the endoplasmic reticulum lumen). Binary attribute. 
7. pox: Peroxisomal targeting signal in the C-terminus. 
8. vac: Score of discriminant analysis of the amino acid content of vacuolar and extracellular proteins. 
9. nuc: Score of discriminant analysis of nuclear localization signals of nuclear and non-nuclear proteins.

Dataset is obtained from UCI Machine Learning Repository. (https://archive.ics.uci.edu/ml/datasets/Yeast) 

The dataset was created and maintained by: 
Kenta Nakai 
Institue of Molecular and Cellular Biology 
Osaka, University 