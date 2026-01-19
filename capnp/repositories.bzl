load("//capnp/internal:capnp_lang_toolchain_gen.bzl", "capnp_lang_toolchain_gen")
load("//capnp/internal:capnp_toolchain_gen.bzl", "capnp_toolchain_gen")
load(
    "//capnp/toolchain_defs:cc_defs.bzl",
    "CC_LANG_PLUGIN",
    "CC_LANG_REPO",
    "CC_LANG_RUNTIME",
    "CC_LANG_SHORTNAME",
)
load(
    "//capnp/toolchain_defs:toolchain_defs.bzl",
    "CAPNP_TOOLCHAIN_DEFAULT_CAPNP_TOOL",
    "CAPNP_TOOLCHAIN_REPO",
)

def capnp_toolchain(capnp_tool = CAPNP_TOOLCHAIN_DEFAULT_CAPNP_TOOL):
    capnp_toolchain_gen(
        name = CAPNP_TOOLCHAIN_REPO,
        capnp_tool = capnp_tool,
    )

def capnp_cc_toolchain(plugin = CC_LANG_PLUGIN, runtime = CC_LANG_RUNTIME):
    capnp_lang_toolchain_gen(
        name = CC_LANG_REPO,
        lang_shortname = CC_LANG_SHORTNAME,
        plugin = CC_LANG_PLUGIN,
        runtime = CC_LANG_RUNTIME,
    )
