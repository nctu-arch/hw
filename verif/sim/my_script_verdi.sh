#make clean
#make build DUMP=1 DUMPER=VERDI
#make vericom DUMP=1 DUMPER=VERDI
make run DUMP=1 DUMPER=VERDI TESTDIR=../traces/traceplayer/sanity1_cvsram
make verdi DUMP=1 DUMPER=VERDI TESTDIR=../traces/traceplayer/sanity1_cvsram

make run DUMP=1 DUMPER=VERDI TESTDIR=../traces/traceplayer/sanity2
make verdi DUMP=1 DUMPER=VERDI TESTDIR=../traces/traceplayer/sanity2

make run DUMP=1 DUMPER=VERDI TESTDIR=../traces/traceplayer/sanity2_cvsram
make verdi DUMP=1 DUMPER=VERDI TESTDIR=../traces/traceplayer/sanity2_cvsram

make run DUMP=1 DUMPER=VERDI TESTDIR=../traces/traceplayer/sanity3_cvsram
make verdi DUMP=1 DUMPER=VERDI TESTDIR=../traces/traceplayer/sanity3_cvsram
