@echo off
rem launch this from msvc-enabled console

set CFLAGS=/Wall /WX /wd4710 /wd5045 /std:c11 /FC /TC /Zi /nologo

cl.exe %CFLAGS% test.c
