#!usr/bin/bash

test="Hello,world!"
reg ="^Hello"


if [[ $test =~ $reg ]]; then
        echo "yes"
else
        echo "no"
fi



