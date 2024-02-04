#!/bin/bash

echo "[" > log.json
git log --pretty=format:'{"commit": "%H", "author": "%an", "date": "%ad", "message": "%f"},' --date=iso  >> log.json
echo "]" >> log.json
 
