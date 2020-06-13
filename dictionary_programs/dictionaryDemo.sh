#!/bin/bash -x

declare -i demoDic
demoDic[0]=258
demoDic[1]=369
demoDic[3]=1
demoDic[4]=21
echo "my name is " ${demoDic[name]}
echo ${demoDic[@]}
echo ${!demoDic[@]}
echo ${#demoDic[@]}
unset demoDic[name]
echo ${demoDic[@]}
