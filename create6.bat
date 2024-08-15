@echo off
set GITHUB_TOKEN=github_pat_11BKR7C6Q0ZxjuoSoAHLwB
set GITHUB_TOKEN2=_1mJ9gvIdGeGCqoeb2W12zZysQac1HcJito1TA52aVmm3GAYKO64oDSS8yrI
set REPO_OWNER=genofotolam
set REPO_NAME=canon

set WORKFLOW_FILE=revisio6.yml

curl -X POST -H "Accept: application/vnd.github.v3+json" ^
-H "Authorization: token %GITHUB_TOKEN%%GITHUB_TOKEN2%" ^
https://api.github.com/repos/%REPO_OWNER%/%REPO_NAME%/actions/workflows/%WORKFLOW_FILE%/dispatches ^
-d "{\"ref\":\"main\"}"

pause
