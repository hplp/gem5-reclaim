#pragma once

#include <limits>
#include <cmath>

#define FR4OP(inst, fd, fs1, fs2, fs3) asm(inst " %0,%1,%2,%3" : "=f" (fd) : "f" (fs1), "f" (fs2), "f" (fs3))
#define FROP(inst, fd, fs1, fs2) asm(inst " %0,%1,%2" : "=f" (fd) : "f" (fs1), "f" (fs2))

namespace rv32_64f
{
    constexpr inline uint32_t bits(const float f)
    {
        return *((uint32_t*)&f);
    }

    constexpr inline float number(const uint32_t b)
    {
        return *((float*)&b);
    }

    inline bool isquietnan(float f)
    {
        return std::isnan(f) && (bits(f)&0x00400000) != 0;
    }

    inline bool issignalingnan(float f)
    {
        return std::isnan(f) && (bits(f)&0x00400000) == 0;
    }

    float load(float mem)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        asm("flw %0,%1"
            : "=f" (fd)
            : "m" (mem));
        return fd;
    }

    float store(float fs)
    {
        float mem = std::numeric_limits<float>::signaling_NaN();
        asm("fsw %0,%1"
            :
            : "f" (fs), "m" (mem));
        return mem;
    }

    float fmadd_s(float fs1, float fs2, float fs3)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        FR4OP("fmadd.s", fd, fs1, fs2, fs3);
        return fd;
    }

    float fmsub_s(float fs1, float fs2, float fs3)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        FR4OP("fmsub.s", fd, fs1, fs2, fs3);
        return fd;
    }

    float fnmsub_s(float fs1, float fs2, float fs3)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        FR4OP("fnmsub.s", fd, fs1, fs2, fs3);
        return fd;
    }

    float fnmadd_s(float fs1, float fs2, float fs3)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        FR4OP("fnmadd.s", fd, fs1, fs2, fs3);
        return fd;
    }

    float fadd_s(float fs1, float fs2)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fadd.s", fd, fs1, fs2);
        return fd;
    }

    float fsub_s(float fs1, float fs2)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fsub.s", fd, fs1, fs2);
        return fd;
    }

    float fmul_s(float fs1, float fs2)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fmul.s", fd, fs1, fs2);
        return fd;
    }

    float fdiv_s(float fs1, float fs2)
    {
        float fd = 0.0;
        FROP("fdiv.s", fd, fs1, fs2);
        return fd;
    }

    float fsqrt_s(float fs1)
    {
        float fd = std::numeric_limits<float>::infinity();
        asm("fsqrt.s %0,%1" : "=f" (fd) : "f" (fs1));
        return fd;
    }

    float fsgnj_s(float fs1, float fs2)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fsgnj.s", fd, fs1, fs2);
        return fd;
    }

    float fsgnjn_s(float fs1, float fs2)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fsgnjn.s", fd, fs1, fs2);
        return fd;
    }

    float fsgnjx_s(float fs1, float fs2)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fsgnjx.s", fd, fs1, fs2);
        return fd;
    }

    float fmin_s(float fs1, float fs2)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fmin.s", fd, fs1, fs2);
        return fd;
    }

    float fmax_s(float fs1, float fs2)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        FROP("fmax.s", fd, fs1, fs2);
        return fd;
    }

    int64_t fcvt_w_s(float fs1)
    {
        int64_t rd = 0;
        asm("fcvt.w.s %0,%1" : "=r" (rd) : "f" (fs1));
        return rd;
    }
    
    uint64_t fcvt_wu_s(float fs1)
    {
        uint64_t rd = 0;
        asm("fcvt.wu.s %0,%1" : "=r" (rd) : "f" (fs1));
        return rd;
    }

    uint64_t fmv_x_s(float fs1)
    {
        uint64_t rd = 0;
        asm("fmv.x.s %0,%1" : "=r" (rd) : "f" (fs1));
        return rd;
    }

    bool feq_s(float fs1, float fs2)
    {
        bool rd = false;
        asm("feq.s %0,%1,%2" : "=r" (rd) : "f" (fs1), "f" (fs2));
        return rd;
    }

    bool flt_s(float fs1, float fs2)
    {
        bool rd = false;
        asm("flt.s %0,%1,%2" : "=r" (rd) : "f" (fs1), "f" (fs2));
        return rd;
    }

    bool fle_s(float fs1, float fs2)
    {
        bool rd = false;
        asm("fle.s %0,%1,%2" : "=r" (rd) : "f" (fs1), "f" (fs2));
        return rd;
    }

    uint64_t fclass_s(float fs1)
    {
        uint64_t rd = -1;
        asm("fclass.s %0,%1" : "=r" (rd) : "f" (fs1));
        return rd;
    }

    float fcvt_s_w(int64_t rs1)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        asm("fcvt.s.w %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }

    float fcvt_s_wu(uint64_t rs1)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        asm("fcvt.s.wu %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }

    float fmv_s_x(uint64_t rs1)
    {
        float fd = std::numeric_limits<float>::signaling_NaN();
        asm("fmv.s.x %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }

    uint64_t frcsr()
    {
        uint64_t rd = -1;
        asm("frcsr %0" : "=r" (rd));
        return rd;
    }

    uint64_t frrm()
    {
        uint64_t rd = -1;
        asm("frrm %0" : "=r" (rd));
        return rd;
    }

    uint64_t frflags()
    {
        uint64_t rd = -1;
        asm("frflags %0" : "=r" (rd));
        return rd;
    }

    uint64_t fscsr(uint64_t rs1)
    {
        uint64_t rd = -1;
        asm("fscsr %0,%1" : "=r" (rd) : "r" (rs1));
        return rd;
    }

    uint64_t fsrm(uint64_t rs1)
    {
        uint64_t rd = -1;
        asm("fsrm %0,%1" : "=r" (rd) : "r" (rs1));
        return rd;
    }

    uint64_t fsflags(uint64_t rs1)
    {
        uint64_t rd = -1;
        asm("fsflags %0,%1" : "=r" (rd) : "r" (rs1));
        return rd;
    }

    int64_t fcvt_l_s(float fs1)
    {
        int64_t rd = 0;
        asm("fcvt.l.s %0,%1" : "=r" (rd) : "f" (fs1));
        return rd;
    }

    uint64_t fcvt_lu_s(float fs1)
    {
        int64_t rd = 0;
        asm("fcvt.lu.s %0,%1" : "=r" (rd) : "f" (fs1));
        return rd;
    }

    float fcvt_s_l(int64_t rs1)
    {
        float fd = 0;
        asm("fcvt.s.l %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }

    float fcvt_s_lu(uint64_t rs1)
    {
        float fd = 0;
        asm("fcvt.s.lu %0,%1" : "=f" (fd) : "r" (rs1));
        return fd;
    }
}

#define FSRMI(imm)                          \
do                                          \
{                                           \
    uint64_t rd = -1;                       \
    asm("fsrmi %0," #imm : "=r" (rd));      \
    return d;                               \
} while (false)

#define FSFLAGSI(imm)                       \
do                                          \
{                                           \
    uint64_t rd = -1;                       \
    asm("fsflagsi %0," #imm : "=r" (rd));   \
    return rd;                              \
} while (false)
