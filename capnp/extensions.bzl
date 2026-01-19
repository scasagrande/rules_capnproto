load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load(":repositories.bzl", "capnp_cc_toolchain", "capnp_toolchain")

def _impl(_):
    http_archive(
        name = "capnproto",
        build_file = "//third_party/capnproto:BUILD.capnp.bazel",
        sha256 = "c6f25940688c87ddb24e0c4e475c3213d9b044aad2ba305439cc8c224f559da6",
        strip_prefix = "capnproto-0.10.4",
        urls = [
            "https://github.com/capnproto/capnproto/archive/refs/tags/v0.10.4.tar.gz",
        ],
    )
    capnp_toolchain()
    capnp_cc_toolchain()

capnp_toolchain_extension = module_extension(implementation = _impl)
