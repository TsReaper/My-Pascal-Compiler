int tok;
int num;
double real;
char chr;
char str[MAX_STR_LEN];

#union

%token PAS_AND PAS_ARRAY PAS_BEGIN PAS_CASE PAS_CONST PAS_DIV PAS_DO PAS_DOWNTO PAS_ELSE PAS_END
%token PAS_FILE PAS_FOR PAS_FUNCTION PAS_GOTO PAS_IF PAS_IN PAS_LABEL PAS_MOD PAS_NIL PAS_NOT PAS_OF PAS_OR
%token PAS_PACKED PAS_PROCEDURE PAS_PROGRAM PAS_RECORD PAS_REPEAT PAS_SET PAS_THEN PAS_TO PAS_TYPE
%token PAS_UNTIL PAS_VAR PAS_WHILE PAS_WITH

%token SYM_ADD SYM_SUB SYM_MUL SYM_DIV SYM_EQ SYM_LT SYM_GT SYM_LBRAC SYM_RBRAC SYM_PERIOD SYM_COMMA SYM_COLON
%token SYM_SEMICOLON SYM_CARET SYM_LPAREN SYM_RPAREN SYM_NE SYM_LE SYM_GE SYM_ASSIGN SYM_RANGE

%token TYPE_INT TYPE_REAL TYPE_CHAR TYPE_BOOL

%token BOOL_TRUE BOOL_FALSE

%token ID INT REAL CHAR STR COMMENT_BEGIN COMMENT_END

%type <tok> PAS_AND PAS_ARRAY PAS_BEGIN PAS_CASE PAS_CONST PAS_DIV PAS_DO PAS_DOWNTO PAS_ELSE PAS_END
%type <tok> PAS_FILE PAS_FOR PAS_FUNCTION PAS_GOTO PAS_IF PAS_IN PAS_LABEL PAS_MOD PAS_NIL PAS_NOT PAS_OF PAS_OR
%type <tok> PAS_PACKED PAS_PROCEDURE PAS_PROGRAM PAS_RECORD PAS_REPEAT PAS_SET PAS_THEN PAS_TO PAS_TYPE
%type <tok> PAS_UNTIL PAS_VAR PAS_WHILE PAS_WITH

%type <tok> SYM_ADD SYM_SUB SYM_MUL SYM_DIV SYM_EQ SYM_LT SYM_GT SYM_LBRAC SYM_RBRAC SYM_PERIOD SYM_COMMA SYM_COLON
%type <tok> SYM_SEMICOLON SYM_CARET SYM_LPAREN SYM_RPAREN SYM_NE SYM_LE SYM_GE SYM_ASSIGN SYM_RANGE

%type <tok> TYPE_INT TYPE_REAL TYPE_CHAR TYPE_BOOL
%type <tok> BOOL_TRUE BOOL_FALSE

%type <str> ID STR
%type <num> INT
%type <real> REAL
%type <chr> CHAR
%type <tok> COMMENT_BEGIN COMMENT_END
