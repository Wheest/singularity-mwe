#!/bin/bash
# full experiment

RESULTS_DIR=$1
cd $RESULTS_DIR

LOG_FILE=$RESULTS_DIR/quick.out
touch $LOG_FILE # good to test early if we can write in our results directory

## setup experiment, making sure to pass our log file paths
cd /exper
./application/_build/bin/my_app $LOG_FILE full
