#!/bin/bash

assert() {
	expected="$1"
	input="$2"

	gcc -o 9cc main.c
	./9cc "$input" > tmp.s
	gcc -o tmp tmp.s
	./tmp
	actual="$?"
	
	if [ "$actual" = "$expected" ]; then
		echo "$input => $actual"
	else
		echo "$input => $expected expectet, but got $actual"
		exit 1
	fi
}

assert 0 0
assert 42 42

echo OK
