#ifndef MPC_SEM_ARITH_H
#define MPC_SEM_ARITH_H

#include "sem/type/sem_type.h"
#include "sem/val/sem_value.h"

namespace sem {
    const sem_type &assert_can_do_add(const sem_type &type_l, const sem_type &type_r);

    const sem_type &assert_can_do_sub(const sem_type &type_l, const sem_type &type_r);

    const sem_type &assert_can_do_mul(const sem_type &type_l, const sem_type &type_r);

    const sem_type &assert_can_do_div(const sem_type &type_l, const sem_type &type_r);

    const sem_type &assert_can_do_div_floor(const sem_type &type_l, const sem_type &type_r);

    const sem_type &assert_can_do_mod(const sem_type &type_l, const sem_type &type_r);

    sem_value do_arith_add(
            const sem_type &type_l, const sem_type &type_r, const sem_value &value_l, const sem_value &value_r
    );

    sem_value do_arith_sub(
            const sem_type &type_l, const sem_type &type_r, const sem_value &value_l, const sem_value &value_r
    );

    sem_value do_arith_mul(
            const sem_type &type_l, const sem_type &type_r, const sem_value &value_l, const sem_value &value_r
    );

    sem_value do_arith_div(
            const sem_type &type_l, const sem_type &type_r, const sem_value &value_l, const sem_value &value_r
    );

    sem_value do_arith_div_floor(
            const sem_type &type_l, const sem_type &type_r, const sem_value &value_l, const sem_value &value_r
    );

    sem_value do_arith_mod(
            const sem_type &type_l, const sem_type &type_r, const sem_value &value_l, const sem_value &value_r
    );
}

#endif //MPC_SEM_ARITH_H
