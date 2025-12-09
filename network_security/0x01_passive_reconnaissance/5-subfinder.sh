#!/bin/bash
subfinder -silent -d $1 | tee /dev/tty | dnsx -silent -a -resp-only -o $1.txt
