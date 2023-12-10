"""Provides a simple way to test your rules as an external workspace.
Add a basic smoke-test target below.
"""

load("@bazel_skylib//rules:build_test.bzl", "build_test")
load("@bazel_skylib//rules:diff_test.bzl", "diff_test")
load("@bazel_skylib//rules:write_file.bzl", "write_file")

genrule(
    name = "gen",
    srcs = ["unencrypted.yaml"],
    outs = ["encrypted"],
    cmd = "$(sops_BIN) --encrypt --age age1yt3tfqlfrwdwx0z0ynwplcr6qxcxfaqycuprpmy89nr83ltx74tqdpszlw unencrypted.yaml > $@",
    toolchains = [
        "@rules_sops//sops:resolved_toolchain",
    ],
)

build_test(
    name = "smoke_test",
    targets = [
        # targets you add above
        ":encrypted",
    ],
)

genrule(
    name = "get_version",
    srcs = [],
    outs = ["version"],
    cmd = "$(sops_BIN) --version > $@",
    toolchains = [
        "@rules_sops//sops:resolved_toolchain",
    ],
)

write_file(
    name = "verison_golden",
    out = "version.golden",
    content = [
        "sops 3.8.1 (latest)\n",
    ],
)

diff_test(
    name = "diff_test",
    file1 = ":version",
    file2 = ":verison_golden",
)
