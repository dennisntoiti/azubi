#!bin/bash
#https://github.com/dennisntoiti/azubi
n=$1
for ((i = 2; i <= n; i++)); do
    while ((n % i == 0)); do
        result+=("$i")
        ((n /= i))
    done
done
echo "${result[*]}"
