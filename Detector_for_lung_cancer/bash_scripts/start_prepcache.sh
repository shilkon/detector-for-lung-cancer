#!/bin/bash

read -p "Введите аргументы для функции run (разделите их пробелами): " args

python3 -c "import sys; sys.path.append('../'); from run import run; run('prepcache.LunaPrepCacheApp', *'$args'.split())"

