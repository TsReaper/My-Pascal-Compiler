ast_const_def_seq* const_def_seq_node;
ast_const_def* const_def_node;

#union

%type <node> const_def_part
%type <const_def_seq_node> const_def_body
%type <const_def_node> const_def

%%

const_def_part:
    PAS_CONST const_def_body {
        $$ = $2;
    }
;

const_def_body:
    const_def SYM_SEMICOLON {
        $$ = new ast_const_def_seq();
        $$->add_const_def($1);
        YY_SET_LOCATION($$);
    }
    | const_def_body const_def SYM_SEMICOLON {
        $$ = $1;
        $$->add_const_def($2);
        YY_SET_LOCATION($$);
    }
;

const_def:
    ID SYM_EQ exp {
        $$ = new ast_const_def(new ast_id($1), $3);
        YY_SET_LOCATION($$);
    }
;
