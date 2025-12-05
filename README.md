# Arithmetic Expression Tokenizer

A Lex and Yacc (Flex and Bison) project to tokenize and evaluate arithmetic expressions.

## Project Structure
- `lexer.l`: The Flex (Lex) tokenizer definition.
- `parser.y`: The Bison (Yacc) parser and grammar definition.
- `build.bat`: A batch script to compile the project using `win_flex` and `win_bison`.
- `arithmetic_tokenizer.exe`: The compiled executable (after running build).

## Documentation
- `task.md`: The task checklist.
- `implementation_plan.md`: The original plan.
- `walkthrough.md`: A walkthrough of the project and verification.

## How to Build
Run the `build.bat` script:
```powershell
.\build.bat
```

## How to Run
Run the executable and type expressions:
```powershell
.\arithmetic_tokenizer.exe
```
Or pipe input:
```powershell
echo "3 + 5 * 2" | .\arithmetic_tokenizer.exe
```
