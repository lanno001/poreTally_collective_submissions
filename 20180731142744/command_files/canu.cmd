canu -d . -p canu_assembly maxThreads=16 useGrid=false genomeSize=4641652 -nanopore-raw {input.fastq}
mv canu_assembly.contigs.fasta {output}
