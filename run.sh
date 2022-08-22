#!/bin/bash

if [ "$#" -gt 0 ]; then
    export command=$1

    watch() {
        echo "Watching all ingredient files";
        find content/ -name '*.yaml' -type f  | entr -c make copy
    }

    bar() {
        echo "bar function run"
    }
fi

$command
