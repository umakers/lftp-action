#!/bin/sh -l

lftp -c "set ftp:ssl-allow no; open -u $INPUT_USER,$INPUT_PASSWORD $INPUT_HOST mirror -Rev . ./public_html  --ignore-time --parallel=10 --exclude-glob .git* --exclude .git/ --exclude App_Data/ --exclude ^\media/$ --exclude ^\Media/$"
