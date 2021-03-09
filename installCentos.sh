# install mafft
wget https://mafft.cbrc.jp/alignment/software/mafft-7.471-gcc_fc6.x86_64.rpm
sudo rpm -Uvh mafft-7.471-gcc_fc6.x86_64.rpm
rm mafft-7.471-gcc_fc6.x86_64.rpm

# install faToVcf
rsync -aP rsync://hgdownload.soe.ucsc.edu/genome/admin/exe/linux.x86_64/faToVcf .
chmod +x faToVcf

#install biopython
pip3 install biopython

