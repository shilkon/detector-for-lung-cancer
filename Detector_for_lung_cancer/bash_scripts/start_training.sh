#!/bin/bash

read -p "Введите количество эпох для эксперимента: " experiment_epochs

if [ -z "$experiment_epochs" ]; then
    echo "Вы не ввели количество эпох. Завершение скрипта."
    exit 1
fi

python3 -c "import sys; sys.path.append('../'); from run import run; run('training.LunaTrainingApp', '--epochs', '$experiment_epochs')"
