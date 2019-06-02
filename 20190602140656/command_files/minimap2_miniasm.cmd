minimap2 -x ava-ont -t 4 {input.fastq} {input.fastq} | gzip -1 > minimap2.paf.gz
miniasm -f {input.fastq} minimap2.paf.gz > minimap2_miniasm.gfa
awk '/^S/{{print ">"$2"\\n"$3}}' minimap2_miniasm.gfa | fold > {output}
