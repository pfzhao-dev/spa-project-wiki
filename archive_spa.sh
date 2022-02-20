#!/bin/bash
mkdir archive
cd archive
git clone --depth 1 git@github.com:nus-cs3203/spa-win.git
rm -rf spa-win/.git
git clone --depth 1 git@github.com:nus-cs3203/spa-cp.git
rm -rf spa-cp/.git
zip -r spa-win-$(date +"%Y-%b-%d").zip spa-win
zip -r spa-cp-$(date +"%Y-%b-%d").zip spa-cp
rm -rf spa-win
rm -rf spa-cp
cd ..

