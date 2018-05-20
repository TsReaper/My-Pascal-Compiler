#include <cstdio>

#include "env/env.h"
#include "env/env_id.h"

env_type get_id_type(const std::string &id) {
    if (id_type.find(id) == id_type.end()) {
        return {false};
    } else {
        return id_type.at(id);
    }
}

env_value get_id_value(const std::string &id) {
    if (const_table.find(id) == const_table.end()) {
        return {false};
    } else {
        return const_table.at(id);
    }
}

bool register_const_id(const std::string &id, env_type type, env_value value) {
    if (id_type.find(id) != id_type.end()) {
        fprintf(stderr, "semantics error, duplicated identifier %s ", id.c_str());
        return false;
    } else if (!type.known) {
        fprintf(stderr, "semantics error, unknown identifier ");
        return false;
    } else if (!value.known) {
        fprintf(stderr, "semantics error, value is not determined ");
        return false;
    }
    id_type[id] = type;
    const_table[id] = value;
    return true;
}