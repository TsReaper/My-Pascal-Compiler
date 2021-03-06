#ifndef MPC_GEN_SYS_R2I_FUNC_H
#define MPC_GEN_SYS_R2I_FUNC_H

#include <vector>

#include "ast/ast_node.h"

namespace gen {
    llvm::Value *gen_sys_int(const std::vector<ast_value_node *> &args);

    llvm::Value *gen_sys_frac(const std::vector<ast_value_node *> &args);

    llvm::Value *gen_sys_trunc(const std::vector<ast_value_node *> &args);

    llvm::Value *gen_sys_round(const std::vector<ast_value_node *> &args);
}

#endif //MPC_GEN_SYS_R2I_FUNC_H
