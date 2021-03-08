
#install python library biopython
pip3 install biopython

    
# install faToVcf
rsync -aP rsync://hgdownload.soe.ucsc.edu/genome/admin/exe/linux.x86_64/faToVcf .
chmod +x faToVcf
mv faToVcf scripts/
