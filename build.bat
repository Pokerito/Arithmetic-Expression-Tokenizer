@echo off
set FLEX_PATH=C:\Users\HP\scoop\apps\winflexbison\2.5.25\win_flex.exe
set BISON_PATH=C:\Users\HP\scoop\apps\winflexbison\2.5.25\win_bison.exe

echo Running Bison...
"%BISON_PATH%" -d parser.y
if %errorlevel% neq 0 exit /b %errorlevel%

echo Running Flex...
"%FLEX_PATH%" lexer.l
if %errorlevel% neq 0 exit /b %errorlevel%

echo Compiling with GCC...
gcc parser.tab.c lex.yy.c -o arithmetic_tokenizer.exe
if %errorlevel% neq 0 exit /b %errorlevel%

echo Build successful! Run arithmetic_tokenizer.exe to test.
