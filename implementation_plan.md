# Arithmetic Expression Tokenizer & Parser (Lex/Yacc)

## Goal
Create a program that tokenizes and parses arithmetic expressions using Lex (Flex) and Yacc (Bison). The program will accept arithmetic expressions (addition, subtraction, multiplication, division) and evaluate them.

## User Review Required
> [!NOTE]
> This project requires `flex` and `bison` (or `lex` and `yacc`) and a C compiler (`gcc`) to be installed on the system to compile and run. I will provide the source code, but compilation depends on the local environment.

## Proposed Changes

### Project Structure
Directory: `C:\Users\HP\.gemini\antigravity\scratch\arithmetic_tokenizer`

#### [MODIFY] [lexer.l](file:///C:/Users/HP/.gemini/antigravity/scratch/arithmetic_tokenizer/lexer.l)
- Add rule for `[a-z]` to return `VARIABLE` token.
- Add rule for `=` to return `ASSIGN` token.

#### [MODIFY] [parser.y](file:///C:/Users/HP/.gemini/antigravity/scratch/arithmetic_tokenizer/parser.y)
- Add `sym[26]` array to store values for variables 'a' through 'z'.
- Define `VARIABLE` and `ASSIGN` tokens.
- Update `union` to include `ival` (integer index) for variables.
- Add grammar rule for assignment: `VARIABLE ASSIGN expr`.
- Update `factor` to resolve `VARIABLE` to its value.

#### [NEW] [build.bat](file:///C:/Users/HP/.gemini/antigravity/scratch/arithmetic_tokenizer/build.bat) (or instructions)
- Script to compile the project if tools are available.

## Verification Plan
### Automated Tests
- Test assignment: `a = 10`
- Test usage: `a + 5` -> `15`
- Test complex: `b = a * 2` -> `20`
### Manual Verification
- User can run the compiled executable and type expressions.
