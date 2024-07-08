#!/usr/bin/env bash

# @[Firas Zemzem](https://github.com/Zemzemfiras1) 

# Define the file containing SRA identifiers
AccessionFilePath="../data/accessions.txt"

# Check if accessions.txt exists
if [ ! -f "${AccessionFilePath}" ]; then
    echo "Error: accessions.txt not found."
    exit 1
fi

mkdir -p ../data/fastq/


# Assign command-line arguments to variables
start_line="2" 
end_line=$(wc -l < "${AccessionFilePath}")

# Iterate over each SRA identifier from the file within the specified range
for sra_id in $(sed -n "${start_line},${end_line}p" "$AccessionFilePath"); do
    
    echo "Downloading FASTQ data for accession ID: $sra_id"
    
    fastq-dump -A "$sra_id" --split-files -O data/fastq/
    
    echo "Download completed for accession ID: $sra_id"
done

echo "All downloads completed successfully."

    


