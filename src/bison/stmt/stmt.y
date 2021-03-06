ast_stmt_seq* stmt_seq_node;

#union

%type <stmt_seq_node> compound_stm stmt_seq
%type <node> stmt no_lab_stmt simple_stmt

%%

compound_stm:
    PAS_BEGIN stmt_seq PAS_END {
        $$ = $2;
    }
;

stmt_seq:
    {
        $$ = new ast_stmt_seq();
        YY_SET_LOCATION($$);
    }
    | stmt_seq stmt {
        $$ = $1;
        $$->add_stmt($2);
        YY_SET_LOCATION($$);
    }
;

stmt:
    no_lab_stmt {
        $$ = $1;
    }
    | INT SYM_COLON no_lab_stmt {
        $$ = new ast_lab_stmt($1, $3);
        YY_SET_LOCATION($$);
    }
;

no_lab_stmt:
    simple_stmt SYM_SEMICOLON {
        $$ = $1;
    }
    | compound_stm {
        $$ = $1;
    }
    | if {
        $$ = $1;
    }
    | for {
        $$ = $1;
    }
    | repeat {
        $$ = $1;
    }
    | while {
        $$ = $1;
    }
    | case {
        $$ = $1;
    }
    // TODO more statements
;

simple_stmt:
    {
        $$ = new ast_empty_stmt();
    }
    | assign {
        $$ = $1;
    }
    | proc_func_call {
        $$ = $1;
    }
    | continue {
        $$ = $1;
    }
    | break {
        $$ = $1;
    }
    | goto {
        $$ = $1;
    }
    | exit {
        $$ = $1;
    }
;
