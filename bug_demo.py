#!/bin/bash
python3 -c "
try:
    from bug_demo import process_data
    result = process_data([1, 2, 3])
    exit(0)  # если не упало - хороший коммит
except IndexError:
    exit(1)  # если IndexError - плохой коммит
except:
    exit(125)  # другие ошибки - пропустить
"
