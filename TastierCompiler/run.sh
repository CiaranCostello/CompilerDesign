#!/bin/bash
if make; then
	pushd ../TastierMachine
	if cabal install; then
		popd
		mono bin/tcc.exe test/Programs/Test.TAS test.asm;
		if [ -e test.asm ]; then
			if tasm test.asm test.bc; then
				tvm test.bc test/Inputs/test.IN;
				rm -f test.asm test.bc
			fi
		fi
	else
		popd
	fi
fi

