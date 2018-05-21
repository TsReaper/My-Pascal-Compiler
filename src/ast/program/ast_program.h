#ifndef MY_PASCAL_AST_PROGRAM_H
#define MY_PASCAL_AST_PROGRAM_H

#include <string>

#include "ast/ast_node.h"
#include "ast/program/ast_block.h"

class ast_program_head : public ast_node {
public:
    explicit ast_program_head(const std::string &name);

    ~ast_program_head() override = default;

    bool analyse() override;

    void explain_impl(std::string &res, int indent) const override;

private:
    std::string name;
};

class ast_program : public ast_node {
public:
    ast_program(ast_program_head *head, ast_block *block);

    ~ast_program() override;

    bool analyse() override;

    void explain_impl(std::string &res, int indent) const override;

private:
    ast_program_head *head;
    ast_block *block;
};

#endif //MY_PASCAL_AST_PROGRAM_H