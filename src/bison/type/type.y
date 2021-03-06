ast_type_def_seq* type_def_seq_node;
ast_type_def* type_def_node;

#union

%type <node> type_def_part
%type <type_def_seq_node> type_def_body
%type <type_def_node> type_def
%type <type_node> type array_ele_type

%%

type_def_part:
    PAS_TYPE type_def_body {
        $$ = $2;
    }
;

type_def_body:
    type_def SYM_SEMICOLON {
        $$ = new ast_type_def_seq();
        $$->add_type_def($1);
        YY_SET_LOCATION($$);
    }
    | type_def_body type_def SYM_SEMICOLON {
        $$ = $1;
        $$->add_type_def($2);
        YY_SET_LOCATION($$);
    }
;

type_def:
    ID SYM_EQ type {
        ast_id *child = new ast_id($1);
        YY_SET_LOCATION(child);
        $$ = new ast_type_def(child, $3);
        YY_SET_LOCATION($$);
    }
;

type:
    array_ele_type {
        $$ = $1;
    }
    | array_type {
        $$ = $1;
    }
;

array_ele_type:
    ID {
        $$ = new ast_id($1);
        YY_SET_LOCATION($$);
    }
    | builtin_type {
        $$ = $1;
    }
    | enum_type {
        $$ = $1;
    }
    | ptr_type {
        $$ = $1;
    }
    | range_type {
        $$ = $1;
    }
    | str_type {
        $$ = $1;
    }
    | record_type {
        $$ = $1;
    }
;
