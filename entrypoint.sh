#!/bin/sh -l

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ftp:use-mode-z true; set ftp:ssl-force $INPUT_FORCESSL; set ssl:verify-certificate false; mirror --reverse --delete --continue  --verbose=1 --ignore-time --parallel=10 -p -x ^\.git/$ -x App_Data/ -x ^\media/$ -x ^\Media/$  $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"
