#pragma once

#include <limits>
#include <cmath>
#include <tuple>
#include "rv32_64f.hpp"

namespace rv32_64d
{
    constexpr inline uint64_t bits(double d)
    {
        return reinterpret_cast<uint64_t&>(d);
    }

    constexpr inline double number(uint64_t b)
    {
        return reinterpret_cast<double&>(b);
    }

    inline bool isquietnan(double f)
    {
        return std::isnan(f) && (bits(f)&0x0008000000000000ULL) != 0;
    }

    inline bool issignalingnan(double f)
    {
        return std::isnan(f) && (bits(f)&0x0008000000000000ULL) == 0;
    }

    inline double load(double mem)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        asm volatile("fld %0,%1"
            : "=f" (fd)
            : "m" (mem));
        return fd;
    }

    inline double store(double fs)
    {
        double mem = std::numeric_limits<double>::signaling_NaN();
        asm volatile("fsd %1,%0" : "=m" (mem) : "f" (fs));
        return mem;
    }

    inline std::pair<double, uint64_t> fmadd_d(double fs1, double fs2, double fs3)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        FR4OP("fmadd.d", fd, fs1, fs2, fs3);
        return {fd, rv32_64f::frflags()};
    }

    inline std::pair<double, uint64_t> fmsub_d(double fs1, double fs2, double fs3)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        FR4OP("fmsub.d", fd, fs1, fs2, fs3);
        return {fd, rv32_64f::frflags()};
    }

    inline std::pair<double, uint64_t> fnmsub_d(double fs1, double fs2, double fs3)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        FR4OP("fnmsub.d", fd, fs1, fs2, fs3);
        return {fd, rv32_64f::frflags()};
    }

    inline std::pair<double, uint64_t> fnmadd_d(double fs1, double fs2, double fs3)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        FR4OP("fnmadd.d", fd, fs1, fs2, fs3);
        return {fd, rv32_64f::frflags()};
    }

    inline std::pair<double, uint64_t> fadd_d(double fs1, double fs2)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        FROP("fadd.d", fd, fs1, fs2);
        return {fd, rv32_64f::frflags()};
    }
    
    inline std::pair<double, uint64_t> fsub_d(double fs1, double fs2)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        FROP("fsub.d", fd, fs1, fs2);
        return {fd, rv32_64f::frflags()};
    }

    inline std::pair<double, uint64_t> fmul_d(double fs1, double fs2)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        FROP("fmul.d", fd, fs1, fs2);
        return {fd, rv32_64f::frflags()};
    }

    inline std::pair<double, uint64_t> fdiv_d(double fs1, double fs2)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        FROP("fdiv.d", fd, fs1, fs2);
        return {fd, rv32_64f::frflags()};
    }

    inline std::pair<double, uint64_t> fsqrt_d(double fs1)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        asm volatile("fsqrt.d %0,%1" : "=f" (fd) : "f" (fs1));
        return {fd, rv32_64f::frflags()};
    }

    inline std::pair<double, uint64_t> fsgnj_d(double fs1, double fs2)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        FROP("fsgnj.d", fd, fs1, fs2);
        return {fd, rv32_64f::frflags()};
    }

    inline std::pair<double, uint64_t> fsgnjn_d(double fs1, double fs2)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        FROP("fsgnjn.d", fd, fs1, fs2);
        return {fd, rv32_64f::frflags()};
    }

    inline std::pair<double, uint64_t> fsgnjx_d(double fs1, double fs2)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        FROP("fsgnjx.d", fd, fs1, fs2);
        return {fd, rv32_64f::frflags()};
    }

    inline std::pair<double, uint64_t> fmin_d(double fs1, double fs2)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        FROP("fmin.d", fd, fs1, fs2);
        return {fd, rv32_64f::frflags()};
    }

    inline std::pair<double, uint64_t> fmax_d(double fs1, double fs2)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        FROP("fmax.d", fd, fs1, fs2);
        return {fd, rv32_64f::frflags()};
    }

    inline std::pair<float, uint64_t> fcvt_s_d(double fs1)
    {
        rv32_64f::fsflags(0);
        float fd = std::numeric_limits<float>::signaling_NaN();
        asm volatile("fcvt.s.d %0,%1" : "=f" (fd) : "f" (fs1));
        return {fd, rv32_64f::frflags()};
    }
    
    inline std::pair<double, uint64_t> fcvt_d_s(float fs1)
    {
        rv32_64f::fsflags(0);
        double fd = std::numeric_limits<double>::signaling_NaN();
        asm volatile("fcvt.d.s %0,%1" : "=f" (fd) : "f" (fs1));
        return {fd, rv32_64f::frflags()};
    }

    inline std::pair<bool, uint64_t> feq_d(double fs1, double fs2)
    {
        rv32_64f::fsflags(0);
        bool rd = false;
        asm volatile("feq.d %0,%1,%2" : "=r" (rd) : "f" (fs1), "f" (fs2));
        return {rd, rv32_64f::frflags()};
    }
    
    inline std::pair<bool, uint64_t> flt_d(double fs1, double fs2)
    {
        rv32_64f::fsflags(0);
        bool rd = false;
        asm volatile("flt.d %0,%1,%2" : "=r" (rd) : "f" (fs1), "f" (fs2));
        return {rd, rv32_64f::frflags()};
    }
    
    inline std::pair<bool, uint64_t> fle_d(double fs1, double fs2)
    {
        rv32_64f::fsflags(0);
        bool rd = false;
        asm volatile("fle.d %0,%1,%2" : "=r" (rd) : "f" (fs1), "f" (fs2));
        return {rd, rv32_64f::frflags()};
    }

    inline uint64_t fclass_d(double fs1)
    {
        uint64_t rd = -1;
        asm volatile("fclass.d %0,%1" : "=r" (rd) : "f" (fs1));
        return rd;
    }

    inline std::pair<int64_t, uint64_t> fcvt_w_d(double fs1)
    {
        rv32_64f::fsflags(0);
        int64_t rd = 0;
        asm volatile("fcvt.w.d %0,%1" : "=r" (rd) : "f" (fs1));
        return {rd, rv32_64f::frflags()};
    }

    inline std::pair<uint64_t, uint64_t> fcvt_wu_d(double fs1)
    {
        rv32_64f::fsflags(0);
        uint64_t rd = 0;
        asm volatile("fcvt.wu.d %0,%1" : "=r" (rd) : "f" (fs1));
        return {rd, rv32_64f::frflags()};
    }

    inline float fcvt_d_w(int64_t rs1)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        asm volatile("fcvt.d.w %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }

    inline double fcvt_d_wu(uint64_t rs1)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        asm volatile("fcvt.d.wu %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }

    inline std::pair<int64_t, uint64_t> fcvt_l_d(double fs1)
    {
        rv32_64f::fsflags(0);
        int64_t rd = 0;
        asm volatile("fcvt.l.d %0,%1" : "=r" (rd) : "f" (fs1));
        return {rd, rv32_64f::frflags()};
    }

    inline std::pair<uint64_t, uint64_t> fcvt_lu_d(double fs1)
    {
        rv32_64f::fsflags(0);
        uint64_t rd = 0;
        asm volatile("fcvt.lu.d %0,%1" : "=r" (rd) : "f" (fs1));
        return {rd, rv32_64f::frflags()};
    }

    inline uint64_t fmv_x_d(double fs1)
    {
        uint64_t rd = 0;
        asm volatile("fmv.x.d %0,%1" : "=r" (rd) : "f" (fs1));
        return rd;
    }

    inline double fcvt_d_l(int64_t rs1)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        asm volatile("fcvt.d.l %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }

    inline double fcvt_d_lu(uint64_t rs1)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        asm volatile("fcvt.d.lu %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }

    inline double fmv_d_x(uint64_t rs1)
    {
        double fd = std::numeric_limits<double>::signaling_NaN();
        asm volatile("fmv.d.x %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }
}
