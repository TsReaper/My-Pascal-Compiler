#include "gen/gen.h"
#include "gen/type/gen_type.h"
#include "gen/type/gen_ptr_type.h"

llvm::PointerType *gen::get_llvm_ptr_type(const sem_type &type) {
    sem_type t = type;
    t.ptr--;
    return llvm::PointerType::getUnqual(get_llvm_type(t));
}

llvm::PointerType *gen::get_llvm_real_ptr_type() {
    return llvm::Type::getDoublePtrTy(llvm_context);
}

llvm::PointerType *gen::get_llvm_char_ptr_type() {
    return llvm::Type::getInt8PtrTy(llvm_context);
}
