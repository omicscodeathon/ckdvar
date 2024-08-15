# ckdvar
# Investigating Structural Variants in Chronic Kidney Disease: A Bioinformatics Analysis

## Table of Contents  
1. [Background](https://github.com/omicscodeathon/cdkvar/blob/main/README.md#background)
2. [Objective](https://github.com/omicscodeathon/cdkvar/blob/main/README.md#objective)
3. [Workflow](https://github.com/omicscodeathon/cdkvar/blob/main/README.md#workflow)
4. [Bioinformatics Tools Required](https://github.com/omicscodeathon/cdkvar/blob/main/README.md#bioinformatics-tools-required)
5. [Methods](#Methods)
6. [Results](#Results)
7. [Conclusion](#Conclusion)
8. [Significance](#Significance)
9. [Team Members](https://github.com/omicscodeathon/cdkvar/blob/main/README.md#team-members)

## Background

Chronic kidney disease (CKD) is becoming a major public health problem worldwide. CKD is defined as a progressive loss of renal function, measured by a decline in glomerular filtration rate (GFR < 60 mL/min/1.73 m2) (Smyth et al., 2014). Chronic kidney disease (CKD) has become a serious public health problem because of its associated morbidity, premature mortality, and attendant healthcare costs(Meguid and Bello 2005; Levey et al., 2007). The rising number of persons with CKD is linked with the aging population structure and an increased prevalence of diabetes, hypertension, and obesity(Adler et al., 2003).

CKD patients are also characterized by a high genomic instability, Patients suffering chronic renal failure (CRF) exhibit a high incidence of cancer, as well as high levels of genetic damage. (Sandoval et al., 2012; Lialiaris et al., 2010).  In addition, it has been observed that CKD patients repair less efficiently DNA damage (Stoyanova et al., 2014). CKD patients present increased levels of C-reactive protein (CRP), which is indicative of an inflammatory status(Rodríguez-Ribera et al., 2015; Dungey et al., 2013). Variants in genes regulating such different pathways may affect CKD incidence and/or its progression(Ehret et al., 2011), for example studies shows single-nucleotide polymorphisms (SNPs) associated with different CKD related pathologies like hypertension, coronary artery disease ,  subclinical vascular disease  and kidney functional traits in CKD patients (Schunkert et al., 2011; Bis et al., 2011; Köttgen et al., 2010)

The Global Burden of Disease (GBD) studies have shown that CKD has emerged as a leading cause of worldwide mortality(Rhee et al.,2015). Chronic kidney disease (CKD) has emerged as one of the most prominent causes of death and suffering in the 21st century (Kovesdy et al., 2022). It is, therefore, paramount that CKD is identified, monitored, and treated, and that preventative and therapeutic measures addressing CKD are systematically implemented worldwide. 

Structural variants (SVs) are significant contributors to genetic diversity, and it includes insertions/deletions (InDels), inversions, translocations and copy number variations (CNVs)  (Alkan et al., 2011; Freeman et al., 2006; Sharp et al., 2005; Tattini et al., 2015., Carvalho et al., 2016).
Genetic variations can contribute to variations in phenotypic traits; previous studies have indicated that SVs were more significantly related to phenotypic diversity than single nucleotide polymorphisms (SNPs) (Chiang et al., 2017. However, SNPs and CNVs are shown to capture 83.6 and 17.7% of total genetic variation in gene expression, respectively (Stranger et al., 2007). Thus, the study of SVs can improve our understanding of the evolution of populations, phenotypic polymorphisms, and the functional genome.
	
Structural variations have attracted remarkable attention in both evolutionary and medical studies over the last two decades(Wang et al., 2023). Hence this study tend to investigate structural variants associated with chronic kidney disease by whole genome sequencing.

## Objectives

This study seeks to investigate novel structural variants in chronic kidney disease

## Workflow

<p align="center">
    <img width="100%" src="https://github.com/omicscodeathon/ckdvar/blob/main/workflow/ckdvar.PNG" alt="Workflow">
</p>

<p align="center">
Figure 1: Detailed flow of the various methods carried out in the study.   
</p>


### Bioinformatics Tools Required 
```
sra-tools
FastQC
Trim Galore
GATK
SAMtools
Burrows Wheeler Aligner
Picard
DELLY
MANTA
CNVnator
ANNOVAR
SV Typer
Genomestrip
```
## Methods
 - The data for this analysis was retrieved from the NCBI (https://www.ncbi.nlm.nih.gov/) SRA database Bioproject PRJNA 863410 was selected to be used in the analysis.
 - The quality control of the dataset were checked using FastQC, it provide a simple way to do some quality control checks on raw sequence data
 - Raw reads were trimmed to a minimum base quality using trimmomatic, the tool was used to adapters, low quality reads and the reads were shorter after trimming.
 - The filtered reads were aligned to the hg38 human genome  reference sequence using Burrow-Wheeler Aligner (BWA).
 - Mapping was done using Burrow-Wheeler Aligner (BWA) to generate reads for SAM files for base quality score recalibration and variant calling.

### Contributors
- [Firas Zemzem](https://github.com/Zemzemfiras1) : PhD student ,Laboratory of Cytogenetics, Molecular Genetics and Biology of Reproduction CHU Farhat Hached Sousse, Higher institute of Biotechnology of Monastir, University of Monastir, Tunisia.
- [Chimenya Ntweya](https://github.com/Chimenya95) : Department of medical Laboratory, Queen Elizabeth Central Hospital, Blantyre, malawi.
- [Mandar Bedse](https://github.com/mandarbedse) : Sr. Associate, Cognizant Techology Solutions, Pune, India
- [Olaitan I Awe](https://github.com/laitanawe) : Training officer, ASBCB, Cape Town, South Africa

### Thank you to the following organizations: 

- African Society for Bioinformatics and Computational Biology (ASBCB)

- National Institutes of Health (NIH) Office of Data Science Strategy (ODSS)
