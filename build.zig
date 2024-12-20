const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.resolveTargetQuery(.{
        .abi = .none,
        .os_tag = .freestanding,
        .cpu_arch = .aarch64,
    });
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "raspi",
        .root_source_file = b.path("src/main.zig"),
        .optimize = optimize,
        .target = target,
        .link_libc = false,
        .linkage = .static,
        .strip = true,
    });
    exe.root_module.addImport("kernel", &exe.root_module);
    exe.setLinkerScript(b.path("linker.ld"));
    exe.addAssemblyFile(b.path("src/start.S"));

    const objcopy = exe.addObjCopy(.{ .format = .bin });

    b.installArtifact(exe);
    b.getInstallStep().dependOn(&b.addInstallBinFile(objcopy.getOutput(), "raspi-bin").step);

    const run_step = b.step("run", "Run in QEMU emulator");
    const run = b.addSystemCommand(&.{ "qemu-system-aarch64", "-M", "raspi4b", "-d", "in_asm", "-serial", "null", "-serial", "stdio" });
    run.addArg("-kernel");
    run.addFileArg(objcopy.getOutput());
    run_step.dependOn(&run.step);
    run_step.dependOn(b.getInstallStep());
}
