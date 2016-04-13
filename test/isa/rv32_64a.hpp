#pragma once

#include <tuple>

namespace rv32_64a
{
}

#define AMO(rs2_type, m, r, d, inst)                \
do                                                  \
{                                                   \
    uint64_t mem = (m);                             \
    rs2_type rs2 = (r);                             \
    uint64_t rd = (d);                              \
    asm(inst " %0,%2,(%1)"                          \
        : "=r" (rd)                                 \
        : "r" (&mem), "r" (rs2));                   \
    return std::pair<mem_type, rd_type>(mem, rd);   \
} while (false)
#define AMOSWAP_W(mem, rs2, rd) AMO(uint32_t, mem, rs2, rd, "amoswap.w")
