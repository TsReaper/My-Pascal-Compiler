ast_assign* assign_node;

#union

%type <assign_node> assign

%%

assign:
    lhs SYM_ASSIGN exp {
        $$ = new ast_assign($1, $3);
        YY_SET_LOCATION($$);
    }
;
