#!bin/bash
#https://github.com/dennisntoiti/azubi
N=$5

declare -A tree;

for (( i = 0; i < 63; i++ )); do
	for (( j = 0; j < 100; j++ )); do
		tree[$i, $j]="_";
	done
done

draw_y() {
	if (( $3 >= $4 ))
	then
		tree[$(( $2+$3 )), $1]="1";
		tree[$2, $(($1+$4))]="1";
		tree[$2, $(($1-$4))]="1";
		draw_y $1 $(( $2-1 )) $3 $(( $4+1 ));
	else
		return 1
	fi
}

draw_picture() {
	if (( $4 == $N ))
	then
		return 1;
	else
		draw_y $(( $1-1 )) $(( $2-$3 )) $(( $3 )) 1;
		draw_picture $(( $1-$3 )) $(( $2-$3*2 )) $(( $3/2 )) $(( $4+1 ));
		draw_picture $(( $1+$3 )) $(( $2-$3*2 )) $(( $3/2 )) $(( $4+1 ));
	fi
}

draw_picture 50 62 16 0;

# printing part
for (( i = 0; i < 63; i++ )); do
	for (( j = 0; j < 100; j++ )); do
		echo -n ${tree[$i, $j]};
	done
	echo
done