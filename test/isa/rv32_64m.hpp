#pragma once

#include "rv32_64i.hpp"

namespace rv32_64m
{
}

#define MUL(rs1, rs2, result) REG_REG(int64_t, int64_t, int64_t, rs1, rs2, result, "mul")
#define MULH(rs1, rs2, result) REG_REG(int64_t, int64_t, int64_t, rs1, rs2, result, "mulh")
#define MULHSU(rs1, rs2, result) REG_REG(int64_t, uint64_t, int64_t, rs1, rs2, result, "mulhsu")
#define MULHU(rs1, rs2, result) REG_REG(uint64_t, uint64_t, uint64_t, rs1, rs2, result, "mulhu")
#define DIV(rs1, rs2, result) REG_REG(int64_t, int64_t, int64_t, rs1, rs2, result, "div")
#define DIVU(rs1, rs2, result) REG_REG(uint64_t, uint64_t, uint64_t, rs1, rs2, result, "divu")
#define REM(rs1, rs2, result) REG_REG(int64_t, int64_t, int64_t, rs1, rs2, result, "rem")
#define REMU(rs1, rs2, result) REG_REG(uint64_t, uint64_t, uint64_t, rs1, rs2, result, "remu")

#define MULW(type, rs1, rs2, result) REG_REG(type, type, int64_t, rs1, rs2, result, "mulw")
#define DIVW(type, rs1, rs2, result) REG_REG(type, type, int64_t, rs1, rs2, result, "divw")
#define DIVUW(type, rs1, rs2, result) REG_REG(type, type, int64_t, rs1, rs2, result, "divuw")
#define REMW(type, rs1, rs2, result) REG_REG(type, type, int64_t, rs1, rs2, result, "remw")
#define REMUW(type, rs1, rs2, result) REG_REG(type, type, int64_t, rs1, rs2, result, "remuw")
