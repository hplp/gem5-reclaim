#pragma once

#include <tuple>

namespace rv32_64a
{
}

#define AMO(rs2_type, m, r, d, inst)                \
do                                                  \
{                                                   \
    int64_t mem = (m);                              \
    rs2_type rs2 = (r);                             \
    int64_t rd = (d);                               \
    asm(inst " %0,%2,(%1)"                          \
        : "=r" (rd)                                 \
        : "r" (&mem), "r" (rs2));                   \
    return std::pair<int64_t, int64_t>(mem, rd);    \
} while (false)
#define AMOSWAP_W(type, mem, rs2, rd) AMO(type, mem, rs2, rd, "amoswap.w")
#define AMOADD_W(type, mem, rs2, rd) AMO(type, mem, rs2, rd, "amoadd.w")
#define AMOXOR_W(type, mem, rs2, rd) AMO(type, mem, rs2, rd, "amoxor.w")
#define AMOAND_W(type, mem, rs2, rd) AMO(type, mem, rs2, rd, "amoand.w")
#define AMOOR_W(type, mem, rs2, rd) AMO(type, mem, rs2, rd, "amoor.w")
#define AMOMIN_W(type, mem, rs2, rd) AMO(type, mem, rs2, rd, "amomin.w")
#define AMOMAX_W(type, mem, rs2, rd) AMO(type, mem, rs2, rd, "amomax.w")
#define AMOMINU_W(type, mem, rs2, rd) AMO(type, mem, rs2, rd, "amominu.w")
#define AMOMAXU_W(type, mem, rs2, rd) AMO(type, mem, rs2, rd, "amomaxu.w")

#define AMOSWAP_D(mem, rs2, rd) AMO(int64_t, mem, rs2, rd, "amoswap.d")
#define AMOADD_D(mem, rs2, rd) AMO(int64_t, mem, rs2, rd, "amoadd.d")
#define AMOXOR_D(mem, rs2, rd) AMO(uint64_t, mem, rs2, rd, "amoxor.d")
#define AMOAND_D(mem, rs2, rd) AMO(uint64_t, mem, rs2, rd, "amoand.d")
#define AMOOR_D(mem, rs2, rd) AMO(uint64_t, mem, rs2, rd, "amoor.d")
#define AMOMIN_D(mem, rs2, rd) AMO(int64_t, mem, rs2, rd, "amomin.d")
#define AMOMAX_D(mem, rs2, rd) AMO(int64_t, mem, rs2, rd, "amomax.d")
#define AMOMINU_D(mem, rs2, rd) AMO(uint64_t, mem, rs2, rd, "amominu.d")
#define AMOMAXU_D(mem, rs2, rd) AMO(uint64_t, mem, rs2, rd, "amomaxu.d")
