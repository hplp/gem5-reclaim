#pragma once

#include <tuple>

namespace rv32_64a
{
    inline std::pair<int64_t, int64_t> amoswap_w(int64_t mem, int64_t rs2)
    {
        int64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amoswap.w %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }
    
    inline std::pair<int64_t, int64_t> amoadd_w(int64_t mem, int64_t rs2)
    {
        int64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amoadd.w %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }

    inline std::pair<uint64_t, uint64_t> amoxor_w(uint64_t mem, uint64_t rs2)
    {
        uint64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amoxor.w %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }
    
    inline std::pair<uint64_t, uint64_t> amoand_w(uint64_t mem, uint64_t rs2)
    {
        uint64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amoand.w %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }

    inline std::pair<uint64_t, uint64_t> amoor_w(uint64_t mem, uint64_t rs2)
    {
        uint64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amoor.w %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }

    inline std::pair<int64_t, int64_t> amomin_w(int64_t mem, int64_t rs2)
    {
        int64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amomin.w %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }

    inline std::pair<int64_t, int64_t> amomax_w(int64_t mem, int64_t rs2)
    {
        int64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amomax.w %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }

    inline std::pair<uint64_t, uint64_t> amominu_w(uint64_t mem, uint64_t rs2)
    {
        uint64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amominu.w %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }

    inline std::pair<uint64_t, uint64_t> amomaxu_w(uint64_t mem, uint64_t rs2)
    {
        uint64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amomaxu.w %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }

    inline std::pair<int64_t, int64_t> amoswap_d(int64_t mem, int64_t rs2)
    {
        int64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amoswap.d %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }
    
    inline std::pair<int64_t, int64_t> amoadd_d(int64_t mem, int64_t rs2)
    {
        int64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amoadd.d %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }

    inline std::pair<uint64_t, uint64_t> amoxor_d(uint64_t mem, uint64_t rs2)
    {
        uint64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amoxor.d %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }
    
    inline std::pair<uint64_t, uint64_t> amoand_d(uint64_t mem, uint64_t rs2)
    {
        uint64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amoand.d %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }

    inline std::pair<uint64_t, uint64_t> amoor_d(uint64_t mem, uint64_t rs2)
    {
        uint64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amoor.d %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }

    inline std::pair<int64_t, int64_t> amomin_d(int64_t mem, int64_t rs2)
    {
        int64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amomin.d %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }

    inline std::pair<int64_t, int64_t> amomax_d(int64_t mem, int64_t rs2)
    {
        int64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amomax.d %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }

    inline std::pair<uint64_t, uint64_t> amominu_d(uint64_t mem, uint64_t rs2)
    {
        uint64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amominu.d %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }

    inline std::pair<uint64_t, uint64_t> amomaxu_d(uint64_t mem, uint64_t rs2)
    {
        uint64_t rd = 0;
        uint64_t addr = (uint64_t)&mem;
        asm("amomaxu.d %0,%2,(%1)" : "=r" (rd) : "r" (addr), "r" (rs2));
        return {mem, rd};
    }
}
