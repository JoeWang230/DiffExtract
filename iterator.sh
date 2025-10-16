#!/bin/bash
x=1
while [ $x -le 100 ]
do
	  mkdir run$x
	  sed -i 's/seed.*/seed '$x'/' in.diffCE
	  mpirun -np 1 ./spk_openmpi < in.diffCE
	  mv dump.diffCE run$x/
	    x=$(( $x + 1 ))
done
