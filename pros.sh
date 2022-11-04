#!/usr/bin/env bash

p=$(ps ax | wc -l)
t=$(ps amx | wc -l)
result="Number of processes $p\nNumber os threads $t"

whiptail --title "Number of processes" --msgbox "$result" 8 78