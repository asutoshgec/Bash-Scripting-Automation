#!/usr/bin/env bash
for i in $(ls)
do
ls -l | awk '{print $3}'
done

