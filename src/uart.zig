const kernel = @import("kernel");
const BASE = 0x7E215000;

const AUX_IRQ: *volatile u32 = @ptrFromInt(BASE + 0x0);
const AUX_ENABLES: *volatile u32 = @ptrFromInt(BASE + 0x4);
const AUX_MU_IO_REG: *volatile u32 = @ptrFromInt(BASE + 0x40);
const AUX_MU_IER_REG: *volatile u32 = @ptrFromInt(BASE + 0x44);
const AUX_MU_IIR_REG: *volatile u32 = @ptrFromInt(BASE + 0x48);
const AUX_MU_LCR_REG: *volatile u32 = @ptrFromInt(BASE + 0x50);
const AUX_MU_MCR_REG: *volatile u32 = @ptrFromInt(BASE + 0x54);
const AUX_MU_LSR_REG: *volatile u32 = @ptrFromInt(BASE + 0x58);
const AUX_MU_MSR_REG: *volatile u32 = @ptrFromInt(BASE + 0x5C);

pub fn init() void {}
