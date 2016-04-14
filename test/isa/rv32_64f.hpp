#pragma once

#include <limits>
#include <tuple>
#include <cmath>

#include <cstdio>

namespace rv32_64f
{
    inline uint32_t bits(float f)
    {
        return *((uint32_t*)&f);
    }

    bool isquietnan(float f)
    {
        return std::isnan(f) && (bits(f)&0x00400000) != 0;
    }

    float load(float mem)
    {
        float fd = std::numeric_limits<float>::quiet_NaN();
        asm("flw %0,0(%1)"
            : "=f" (fd)
            : "r" (&mem));
        return fd;
    }

    float store(float fs)
    {
        float mem = std::numeric_limits<float>::quiet_NaN();
        asm("fsw %0,0(%1)"
            :
            : "f" (fs), "r" (&mem));
        return mem;
    }

    float fmadd_s(float fs1, float fs2, float fs3)
    {
        float fd = std::numeric_limits<float>::quiet_NaN();
        asm("fmadd.s %0,%1,%2,%3"
            : "=f" (fd)
            : "f" (fs1), "f" (fs2), "f" (fs3));
        return fd;
    }
}


