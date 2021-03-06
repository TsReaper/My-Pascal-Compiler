#ifndef MPC_AST_CHAR_VAL_H
#define MPC_AST_CHAR_VAL_H

#include "ast/val/literal/ast_literal.h"

class ast_char_val : public ast_literal {
public:
    explicit ast_char_val(char value);

    void explain_impl(std::string &res, int indent) const override;

protected:
    void codegen() override;

private:
    char value;
};

#endif //MPC_AST_CHAR_VAL_H
