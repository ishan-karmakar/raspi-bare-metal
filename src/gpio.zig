pub const BASE = 0x7E200000;

pub const GPFSEL0: *volatile u32 = @ptrFromInt(BASE + 0x0);
pub const GPFSEL1: *volatile u32 = @ptrFromInt(BASE + 0x4);
pub const GPFSEL2: *volatile u32 = @ptrFromInt(BASE + 0x8);
pub const GPFSEL3: *volatile u32 = @ptrFromInt(BASE + 0xC);
pub const GPFSEL4: *volatile u32 = @ptrFromInt(BASE + 0x10);
pub const GPFSEL5: *volatile u32 = @ptrFromInt(BASE + 0x14);

pub const GPSET0: *volatile u32 = @ptrFromInt(BASE + 0x1C);
pub const GPSET1: *volatile u32 = @ptrFromInt(BASE + 0x20);

pub const GPCLR0: *volatile u32 = @ptrFromInt(BASE + 0x28);
pub const GPCLR1: *volatile u32 = @ptrFromInt(BASE + 0x2C);

pub const GPLEV0: *volatile u32 = @ptrFromInt(BASE + 0x34);
pub const GPLEV1: *volatile u32 = @ptrFromInt(BASE + 0x38);

pub const GPEDS0: *volatile u32 = @ptrFromInt(BASE + 0x40);
pub const GPEDS1: *volatile u32 = @ptrFromInt(BASE + 0x44);

pub const GPREN0: *volatile u32 = @ptrFromInt(BASE + 0x4C);
pub const GPREN1: *volatile u32 = @ptrFromInt(BASE + 0x50);

pub const GPFEN0: *volatile u32 = @ptrFromInt(BASE + 0x58);
pub const GPFEN1: *volatile u32 = @ptrFromInt(BASE + 0x5C);

pub const GPHEN0: *volatile u32 = @ptrFromInt(BASE + 0x64);
pub const GPHEN1: *volatile u32 = @ptrFromInt(BASE + 0x68);

pub const GPLEN0: *volatile u32 = @ptrFromInt(BASE + 0x70);
pub const GPLEN1: *volatile u32 = @ptrFromInt(BASE + 0x74);

pub const GPAREN0: *volatile u32 = @ptrFromInt(BASE + 0x7C);
pub const GPAREN1: *volatile u32 = @ptrFromInt(BASE + 0x80);

pub const GPAFEN0: *volatile u32 = @ptrFromInt(BASE + 0x88);
pub const GPAFEN1: *volatile u32 = @ptrFromInt(BASE + 0x8C);

pub const GPIO_PUP_PDN_CNTRL_REG0: *volatile u32 = @ptrFromInt(BASE + 0xE4);
pub const GPIO_PUP_PDN_CNTRL_REG1: *volatile u32 = @ptrFromInt(BASE + 0xE8);
pub const GPIO_PUP_PDN_CNTRL_REG2: *volatile u32 = @ptrFromInt(BASE + 0xEC);
pub const GPIO_PUP_PDN_CNTRL_REG3: *volatile u32 = @ptrFromInt(BASE + 0xF0);
