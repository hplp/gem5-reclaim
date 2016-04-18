#pragma once

#include <limits>
#include <cmath>
#include "rv32_64f.hpp"

#include <cstdio>

namespace rv32_64d
{
    constexpr inline uint64_t bits(const double d)
    {
        return *((uint64_t*)&d);
    }

    constexpr inline double number(const uint64_t b)
    {
        return *((double*)&b);
    }

    inline bool isquietnan(double f)
    {
        return std::isnan(f) && (bits(f)&0x0008000000000000ULL) != 0;
    }

    inline bool issignalingnan(double f)
    {
        return std::isnan(f) && (bits(f)&0x0008000000000000ULL) == 0;
    }

    double load(double mem)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        asm("fld %0,%1"
            : "=f" (fd)
            : "m" (mem));
        return fd;
    }

    double store(double fs)
    {
        double mem = std::numeric_limits<double>::signaling_NaN();
        asm("fsd %0,%1"
            :
            : "f" (fs), "m" (mem));
        return mem;
    }

    double fmadd_d(double fs1, double fs2, double fs3)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        FR4OP("fmadd.d", fd, fs1, fs2, fs3);
        return fd;
    }

    double fmsub_d(double fs1, double fs2, double fs3)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        FR4OP("fmsub.d", fd, fs1, fs2, fs3);
        return fd;
    }

    double fnmsub_d(double fs1, double fs2, double fs3)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        FR4OP("fnmsub.d", fd, fs1, fs2, fs3);
        return fd;
    }

    double fnmadd_d(double fs1, double fs2, double fs3)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        FR4OP("fnmadd.d", fd, fs1, fs2, fs3);
        return fd;
    }

    double fadd_d(double fs1, double fs2)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        FROP("fadd.d", fd, fs1, fs2);
        return fd;
    }
    
    double fsub_d(double fs1, double fs2)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        FROP("fsub.d", fd, fs1, fs2);
        return fd;
    }

    double fmul_d(double fs1, double fs2)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        FROP("fmul.d", fd, fs1, fs2);
        return fd;
    }

    double fdiv_d(double fs1, double fs2)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        FROP("fdiv.d", fd, fs1, fs2);
        return fd;
    }

    double fsqrt_d(double fs1)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        asm("fsqrt.d %0,%1" : "=f" (fd) : "f" (fs1));
        return fd;
    }
}
