# Arithmetic Expression Tokenizer & Parser (Lex/Yacc)

## Goal
Create a program that tokenizes and parses arithmetic expressions using Lex (Flex) and Yacc (Bison). The program will accept arithmetic expressions (addition, subtraction, multiplication, division) and evaluate them.

## User Review Required
> [!NOTE]
> This project requires `flex` and `bison` (or `lex` and `yacc`) and a C compiler (`gcc`) to be installed on the system to compile and run. I will provide the source code, but compilation depends on the local environment.

## Proposed Changes

### Project Structure
Directory: `C:\Users\HP\.gemini\antigravity\scratch\arithmetic_tokenizer`

#### [NEW] [lexer.l](file:///C:/Users/HP/.gemini/antigravity/scratch/arithmetic_tokenizer/lexer.l)
- Defines tokens: `NUMBER`, `PLUS`, `MINUS`, `MULTIPLY`, `DIVIDE`, `LPAREN`, `RPAREN`, `EOL`.
- Ignores whitespace.
- Returns tokens to the parser.

#### [NEW] [parser.y](file:///C:/Users/HP/.gemini/antigravity/scratch/arithmetic_tokenizer/parser.y)
- Defines the grammar for arithmetic expressions.
- Precedence rules for operators.
- Evaluates the expression and prints the result.
- Includes `main` function to drive the parsing.

#### [NEW] [build.bat](file:///C:/Users/HP/.gemini/antigravity/scratch/arithmetic_tokenizer/build.bat) (or instructions)
- Script to compile the project if tools are available.

## Verification Plan
### Automated Tests
- If tools are available, I will run a simple test case: `3 + 4 * 5`.
### Manual Verification
- User can run the compiled executable and type expressions.
