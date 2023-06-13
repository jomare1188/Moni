#PBS -q par16
#PBS -l nodes=1:ppn=16
#PBS -N mapper
#PBS -V

source activate ANGELICA
cd /home/lovelace/proj/proj832/j18/ANGELICA/code
mkdir -p /home/lovelace/proj/proj832/j18/ANGELICA/results/

mapfile -t in < /home/lovelace/proj/proj832/j18/ANGELICA/fasta/files
mapfile -t prefix < /home/lovelace/proj/proj832/j18/ANGELICA/fasta/prefix

in=/home/lovelace/proj/proj832/j18/ANGELICA/fasta

for m in $(seq 1 23)
do
	/home/lovelace/proj/proj832/j18/ANGELICA/eggnog-mapper/emapper.py --cpu 4 --override -i ${in[$m]} -m diamond --itype genome --translate --decorate_gff yes --output_dir /home/lovelace/proj/proj832/j18/ANGELICA/results --output ${prefix[$m]}
	echo $m from 23
done

