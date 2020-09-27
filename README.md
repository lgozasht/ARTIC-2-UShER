## Fasta2UShER

We provide a tool, Fasta2UShER.py, that converts SARS-CoV-2 genomic data in fasta format into a merged VCF viable for input to UShER (see https://github.com/yatisht/usher ). Fasta2UShER.py can take one or many multiple sequence alignment files as input (including standard multiple sequence alignment output from the SARS-CoV-2 ARTIC Network protocol, see https://artic.network/ncov-2019). Fasta2UShER.py also possesses an input option for unalifgned SARS-CoV-2 data. In this case Fasta2UShER.py employs multiple alignment using fast Fourier transform (MAFFT, see https://mafft.cbrc.jp/alignment/software/) to construct an alignment for each user specified sequence with the SARS-CoV-2 reference. In addition, Fasta2UShER.py considers missing data and can automatically filter variants at problematic sites (see https://virological.org/t/issues-with-sars-cov-2-sequencing-data/473/12 and https://www.biorxiv.org/content/biorxiv/early/2020/06/09/2020.06.08.141127.full.pdf).

### Input

Multiple sequence alignment file(s) (suchlike ARTIC Network multiple sequence alignment output) or unaligned full SARS-CoV-2 genomic sequence(s) in fasta format

### Options

**-inpath**: Path to directory containing ONLY multiple sequence alignment or unaligned files in fasta format (make sure no other files exist in this directory).

**-outfile**: Output VCF file name

**-unaligned**: Specifies unaligned input files

**-mask_problematic_sites**: Ignore problematic sites per masking recomendations

### Usage

Please ensure sequenceAnalyzer.py is in your current working directory. 

```
python3 Fasta2UShER.py -inpath ./test -outfile ./test/test_merged.vcf
```

### Output

Merged VCF with missing data for a particular sample denoted as "." in the corresponding genotype column.

For the example above, a new VCF *test/test_merged.vcf* is generated (identical to the one already provided), which can be used by UShER to place the new samples. 

## Reference
**UShER:**
* Coming soon

**For ARTIC-2-UShER, please also cite:**
* Yatish Turakhia, Bryan Thornlow, Landen Gozashti, Angie S. Hinrichs, Jason D. Fernandes, David Haussler, and Russell Corbett-Detig, "Stability of SARS-CoV-2 Phylogenies", bioRxiv [pre-print](https://www.biorxiv.org/content/10.1101/2020.06.08.141127v1) 2020.
