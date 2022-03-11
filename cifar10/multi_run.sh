#!/usr/bin/env bash

#size_target=( 6.0e+04 4.0e+04 2.0e+04 )
#size_target=( 4.0e+04 2.0e+04 )
#size_target=( 6.0e+04 )
#size_target=( 4.0e+04 )
size_target=( 2.0e+04 )
cd_ops=( 0.0e+00 1.0e-08 1.0e-07 1.0e-06 5.0e-06 )
#cd_ops=( 1.0e-08 1.0e-07 1.0e-06 5.0e-06 )

sz_skip=( 6.0e+04 )
cdo_skip=( 0.0e+00 1.0e-07 )

for sz in "${size_target[@]}"
do
    for cdo in "${cd_ops[@]}"
    do
        echo "Size-Target = ${sz}, Cd-Ops = ${cdo}"
        #if [[ "${sz_skip[*]}" =~ "${sz}" ]] && [[ "${cdo_skip[*]}" =~ "${cdo}" ]]; then
        #    echo "Skip"
        #    continue
        #fi
        source run.sh ${sz} ${cdo} search ft
    done
done
