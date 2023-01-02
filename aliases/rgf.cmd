:: searches for filenames matching provided pattern [optionally] inside a provided path
@echo off
IF "%~2" NEQ "" (GOTO :two)
IF "%~1" NEQ "" (GOTO :one)

rg --files .
EXIT /b 0

:two
rg --files "%2" | rg "%1"
EXIT /b 0

:one
rg --files . | rg "%1"
eXIT /b 0


