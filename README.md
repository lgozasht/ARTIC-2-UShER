## Fasta2UShER

We provide a tool, Fasta2UShER.py, that converts SARS-CoV-2 genomic data in fasta format into a merged VCF viable for input to UShER. Fasta2UShER.py can take a multiple sequence alignment (MSA) file as input (including standard MSA output from the [SARS-CoV-2 ARTIC Network protocol](https://artic.network/ncov-2019)). Fasta2UShER.py also possesses an input option for unalifgned SARS-CoV-2 data. In this case Fasta2UShER.py employs multiple alignment using Fast Fourier Transform ([MAFFT](https://mafft.cbrc.jp/alignment/software/)) to construct an alignment for each user specified sequence with the SARS-CoV-2 reference. In addition, Fasta2UShER.py considers missing data and can automatically filter variants at [problematic sites](https://virological.org/t/issues-with-sars-cov-2-sequencing-data/473/12) (also see this [pre-print](https://www.biorxiv.org/content/biorxiv/early/2020/06/09/2020.06.08.141127.full.pdf)). Fasta2UShER no longer supports multiple msa files as input. If you possess multiple independently generated msa's, please remove gaps and use the unaligned input option.

### Installation

* For MacOS 10.14 and above: 
```
./installMacOS.sh  
```
* For Ubuntu 18.04 and above (requires sudo privileges):
```
./installUbuntu.sh  
```
* For CentOS 7 and above (requires sudo privileges): 
```
./installCentOS.sh  
```

### Input

MSA file or unaligned full SARS-CoV-2 genomic sequence(s) in fasta format

### Options

**-inpath**: Path to directory containing ONLY multiple sequence alignment or unaligned files in fasta format (Make sure no other files exist in this directory. Please also ensure that your reference genome **is not** in this directory to avoid iteratively adding the reference to the tree.)

**-output**: Output VCF file name

**-reference**: Reference genome fasta file with identical reference header to that of the input MSA (if MSA is used as input)

**-unaligned**: Specifies unaligned input files

**-auto_mask**: Ignore problematic sites per masking recomendations

**-user_specified_mask**: Path to VCF fle containing custom masking recomendations (please ensure VCF format is consistent with [this](https://raw.githubusercontent.com/W-L/ProblematicSites_SARS-CoV2/master/problematic_sites_sarsCov2.vcf))

**-thread**: Number of threads to use for MSA (Default = 1)

### Usage

Pease ensure that faToVcf exists in the same directory as Fasta2UShER.py!

```
python3 Fasta2UShER.py -reference NC_045512v2.fa  -inpath ./test/ -unaligned -output test_merged.vcf
```

### Output

Merged VCF with missing data for a particular sample denoted as "." in the corresponding genotype column.

For the example above, a new VCF *test_merged.vcf* is generated (identical to the one already provided), which can be used by UShER to place the new samples.


## Acknowledgement

We thank Jim Kent and the UCSC Genome Browser team for allowing us to download the `faToVcf` utility (from http://hgdownload.soe.ucsc.edu/admin/exe/) for `Fasta2UShER`. Please read the license terms for `faToVcf` here: https://github.com/ucscGenomeBrowser/kent/blob/master/src/LICENSE.

## Reference

* Yatish Turakhia, Nicola De Maio, Bryan Thornlow, Landen Gozashti, Robert Lanfear, Conor R. Walker, Angie S. Hinrichs, Jason D. Fernandes, Rui Borges, Greg Slodkowicz, Lukas Weilguny, David Haussler, Nick Goldman and Russell Corbett-Detig, "Stability of SARS-CoV-2 Phylogenies", PLOS Genetics 2020 (https://doi.org/10.1371/journal.pgen.1009175).
