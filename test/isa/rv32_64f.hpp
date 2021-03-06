#pragma once

#include <limits>
#include <cmath>
#include <tuple>

#define FR4OP(inst, fd, fs1, fs2, fs3) asm volatile(inst " %0,%1,%2,%3" : "=f" (fd) : "f" (fs1), "f" (fs2), "f" (fs3))
#define FROP(inst, fd, fs1, fs2) asm volatile(inst " %0,%1,%2" : "=f" (fd) : "f" (fs1), "f" (fs2))

namespace rv32_64f
{
    constexpr inline uint32_t bits(float f)
    {
        return reinterpret_cast<uint32_t&>(f);
    }

    constexpr inline float number(uint32_t b)
    {
        return reinterpret_cast<float&>(b);
    }

    inline bool isquietnan(float f)
    {
        return std::isnan(f) && (bits(f)&0x00400000) != 0;
    }

    inline bool issignalingnan(float f)
    {
        return std::isnan(f) && (bits(f)&0x00400000) == 0;
    }

    inline float load(float mem)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        asm volatile("flw %0,%1"
            : "=f" (fd)
            : "m" (mem));
        return fd;
    }

    inline float store(float fs)
    {
        float mem = std::numeric_limits<float>::signaling_NaN();
        asm volatile("fsw %1,%0" : "=m" (mem) : "f" (fs));
        return mem;
    }

    inline uint64_t frflags()
    {
        uint64_t rd = -1;
        asm volatile("frflags %0" : "=r" (rd));
        return rd;
    }

    inline uint64_t fsflags(uint64_t rs1)
    {
        uint64_t rd = -1;
        asm volatile("fsflags %0,%1" : "=r" (rd) : "r" (rs1));
        return rd;
    }

    inline std::pair<float, uint64_t> fmadd_s(float fs1, float fs2, float fs3)
    {
        fsflags(0);
        float fd = std::numeric_limits<float>::signaling_NaN();
        FR4OP("fmadd.s", fd, fs1, fs2, fs3);
        return {fd, frflags()};
    }

    inline std::pair<float, uint64_t> fmsub_s(float fs1, float fs2, float fs3)
    {
        fsflags(0);
        float fd = std::numeric_limits<float>::signaling_NaN();
        FR4OP("fmsub.s", fd, fs1, fs2, fs3);
        return {fd, frflags()};
    }

    inline std::pair<float, uint64_t> fnmsub_s(float fs1, float fs2, float fs3)
    {
        fsflags(0);
        float fd = std::numeric_limits<float>::signaling_NaN();
        FR4OP("fnmsub.s", fd, fs1, fs2, fs3);
        return {fd, frflags()};
    }

    inline std::pair<float, uint64_t> fnmadd_s(float fs1, float fs2, float fs3)
    {
        fsflags(0);
        float fd = std::numeric_limits<float>::signaling_NaN();
        FR4OP("fnmadd.s", fd, fs1, fs2, fs3);
        return {fd, frflags()};
    }

    inline std::pair<float, uint64_t> fadd_s(float fs1, float fs2)
    {
        fsflags(0);
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fadd.s", fd, fs1, fs2);
        return {fd, frflags()};
    }

    inline std::pair<float, uint64_t> fsub_s(float fs1, float fs2)
    {
        fsflags(0);
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fsub.s", fd, fs1, fs2);
        return {fd, frflags()};
    }

    inline std::pair<float, uint64_t> fmul_s(float fs1, float fs2)
    {
        fsflags(0);
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fmul.s", fd, fs1, fs2);
        return {fd, frflags()};
    }

    inline std::pair<float, uint64_t> fdiv_s(float fs1, float fs2)
    {
        fsflags(0);
        float fd = 0.0;
        FROP("fdiv.s", fd, fs1, fs2);
        return {fd, frflags()};
    }

    inline std::pair<float, uint64_t> fsqrt_s(float fs1)
    {
        fsflags(0);
        float fd = std::numeric_limits<float>::infinity();
        asm volatile("fsqrt.s %0,%1" : "=f" (fd) : "f" (fs1));
        return {fd, frflags()};
    }

    inline std::pair<float, uint64_t> fsgnj_s(float fs1, float fs2)
    {
        fsflags(0);
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fsgnj.s", fd, fs1, fs2);
        return {fd, frflags()};
    }

    inline std::pair<float, uint64_t> fsgnjn_s(float fs1, float fs2)
    {
        fsflags(0);
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fsgnjn.s", fd, fs1, fs2);
        return {fd, frflags()};
    }

    inline std::pair<float, uint64_t> fsgnjx_s(float fs1, float fs2)
    {
        fsflags(0);
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fsgnjx.s", fd, fs1, fs2);
        return {fd, frflags()};
    }

    inline std::pair<float, uint64_t> fmin_s(float fs1, float fs2)
    {
        fsflags(0);
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fmin.s", fd, fs1, fs2);
        return {fd, frflags()};
    }

    inline std::pair<float, uint64_t> fmax_s(float fs1, float fs2)
    {
        fsflags(0);
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fmax.s", fd, fs1, fs2);
        return {fd, frflags()};
    }

    inline std::pair<int64_t, uint64_t> fcvt_w_s(float fs1)
    {
        fsflags(0);
        int64_t rd = 0;
        asm volatile("fcvt.w.s %0,%1" : "=r" (rd) : "f" (fs1));
        return {rd, frflags()};
    }
    
    inline std::pair<uint64_t, uint64_t> fcvt_wu_s(float fs1)
    {
        fsflags(0);
        uint64_t rd = 0;
        asm volatile("fcvt.wu.s %0,%1" : "=r" (rd) : "f" (fs1));
        return {rd, frflags()};
    }

    inline uint64_t fmv_x_s(float fs1)
    {
        uint64_t rd = 0;
        asm volatile("fmv.x.s %0,%1" : "=r" (rd) : "f" (fs1));
        return rd;
    }

    inline std::pair<bool, uint64_t> feq_s(float fs1, float fs2)
    {
        fsflags(0);
        bool rd = false;
        asm volatile("feq.s %0,%1,%2" : "=r" (rd) : "f" (fs1), "f" (fs2));
        return {rd, frflags()};
    }

    inline std::pair<bool, uint64_t> flt_s(float fs1, float fs2)
    {
        fsflags(0);
        bool rd = false;
        asm volatile("flt.s %0,%1,%2" : "=r" (rd) : "f" (fs1), "f" (fs2));
        return {rd, frflags()};
    }

    inline std::pair<bool, uint64_t> fle_s(float fs1, float fs2)
    {
        fsflags(0);
        bool rd = false;
        asm volatile("fle.s %0,%1,%2" : "=r" (rd) : "f" (fs1), "f" (fs2));
        return {rd, frflags()};
    }

    inline uint64_t fclass_s(float fs1)
    {
        uint64_t rd = -1;
        asm volatile("fclass.s %0,%1" : "=r" (rd) : "f" (fs1));
        return rd;
    }

    inline float fcvt_s_w(int64_t rs1)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        asm volatile("fcvt.s.w %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }

    inline float fcvt_s_wu(uint64_t rs1)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        asm volatile("fcvt.s.wu %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }

    inline float fmv_s_x(uint64_t rs1)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        asm volatile("fmv.s.x %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }

    inline uint64_t frcsr()
    {
        uint64_t rd = -1;
        asm volatile("frcsr %0" : "=r" (rd));
        return rd;
    }

    inline uint64_t frrm()
    {
        uint64_t rd = -1;
        asm volatile("frrm %0" : "=r" (rd));
        return rd;
    }

    inline uint64_t fscsr(uint64_t rs1)
    {
        uint64_t rd = -1;
        asm volatile("fscsr %0,%1" : "=r" (rd) : "r" (rs1));
        return rd;
    }

    inline uint64_t fsrm(uint64_t rs1)
    {
        uint64_t rd = -1;
        asm volatile("fsrm %0,%1" : "=r" (rd) : "r" (rs1));
        return rd;
    }

    inline std::pair<int64_t, uint64_t> fcvt_l_s(float fs1)
    {
        fsflags(0);
        int64_t rd = 0;
        asm volatile("fcvt.l.s %0,%1" : "=r" (rd) : "f" (fs1));
        return {rd, frflags()};
    }

    inline std::pair<uint64_t, uint64_t> fcvt_lu_s(float fs1)
    {
        fsflags(0);
        int64_t rd = 0;
        asm volatile("fcvt.lu.s %0,%1" : "=r" (rd) : "f" (fs1));
        return {rd, frflags()};
    }

    inline float fcvt_s_l(int64_t rs1)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        asm volatile("fcvt.s.l %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }

    inline float fcvt_s_lu(uint64_t rs1)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        asm volatile("fcvt.s.lu %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }
}

#define FSRMI(imm)                          \
do                                          \
{                                           \
    uint64_t rd = -1;                       \
    asm volatile("fsrmi %0," #imm : "=r" (rd));      \
    return d;                               \
} while (false)

#define FSFLAGSI(imm)                       \
do                                          \
{                                           \
    uint64_t rd = -1;                       \
    asm volatile("fsflagsi %0," #imm : "=r" (rd));   \
    return rd;                              \
} while (false)
