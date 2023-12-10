"Public API re-exports"

def encrypt(name, **kwargs):
    native.genrule(
        name = name,
        cmd = "$(sops_BIN) --help",
        outs = [name + ".out"],
        toolchains = ["@rules_sops//sops:resolved_toolchain"]
    )
