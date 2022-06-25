#! /bin/bash
rm -rf docs && snap run hugo serve --disableFastRender -t anubis
