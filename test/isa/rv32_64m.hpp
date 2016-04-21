#pragma once

#include "rv32_64i.hpp"

namespace rv32_64m
{
    inline int64_t mul(int64_t rs1, int64_t rs2)
    {
        int64_t rd = 0;
        ROP("mul", rd, rs1, rs2);
        return rd;
    }

    inline int64_t mulh(int64_t rs1, int64_t rs2)
    {
        int64_t rd = 0;
        ROP("mulh", rd, rs1, rs2);
        return rd;
    }

    inline int64_t mulhsu(int64_t rs1, uint64_t rs2)
    {
        int64_t rd = 0;
        ROP("mulhsu", rd, rs1, rs2);
        return rd;
    }

    inline uint64_t mulhu(uint64_t rs1, uint64_t rs2)
    {
        uint64_t rd = 0;
        ROP("mulhu", rd, rs1, rs2);
        return rd;
    }

    inline int64_t div(int64_t rs1, int64_t rs2)
    {
        int64_t rd = 0;
        ROP("div", rd, rs1, rs2);
        return rd;
    }

    inline uint64_t divu(uint64_t rs1, uint64_t rs2)
    {
        uint64_t rd = 0;
        ROP("divu", rd, rs1, rs2);
        return rd;
    }

    inline int64_t rem(int64_t rs1, int64_t rs2)
    {
        int64_t rd = 0;
        ROP("rem", rd, rs1, rs2);
        return rd;
    }

    inline uint64_t remu(uint64_t rs1, uint64_t rs2)
    {
        uint64_t rd = 0;
        ROP("remu", rd, rs1, rs2);
        return rd;
    }

    inline int64_t mulw(int64_t rs1, int64_t rs2)
    {
        int64_t rd = 0;
        ROP("mulw", rd, rs1, rs2);
        return rd;
    }

    inline int64_t divw(int64_t rs1, int64_t rs2)
    {
        int64_t rd = 0;
        ROP("divw", rd, rs1, rs2);
        return rd;
    }

    inline uint64_t divuw(uint64_t rs1, uint64_t rs2)
    {
        uint64_t rd = 0;
        ROP("divuw", rd, rs1, rs2);
        return rd;
    }

    inline int64_t remw(int64_t rs1, int64_t rs2)
    {
        int64_t rd = 0;
        ROP("remw", rd, rs1, rs2);
        return rd;
    }

    inline uint64_t remuw(uint64_t rs1, uint64_t rs2)
    {
        uint64_t rd = 0;
        ROP("remuw", rd, rs1, rs2);
        return rd;
    }
}
