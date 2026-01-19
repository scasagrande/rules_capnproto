load("@rules_cc//cc:cc_binary.bzl", "cc_binary")
load("@rules_cc//cc:cc_library.bzl", "cc_library")
load("@rules_cc//cc:cc_test.bzl", "cc_test")

CAPNPROTO_COPTS = [
    "--std=c++14",
    "-Wall",
    "-Wextra",
    "-Wno-deprecated-declarations",
    "-Wno-deprecated-builtins",
    "-Wno-uninitialized",
    "-Wno-strict-aliasing",
    "-Wno-sign-compare",
    "-Wno-unused-parameter",
]

CAPNPROTO_LINKOPTS = ["-lpthread"]

CAPNPROTO_INCLUDES = ["c++/src"]

def capnroto_cc_library(**kwargs):
    cc_library(
        copts = CAPNPROTO_COPTS + kwargs.pop("copts", []),
        linkopts = CAPNPROTO_LINKOPTS + kwargs.pop("linkopts", []),
        includes = CAPNPROTO_INCLUDES + kwargs.pop("includes", []),
        **kwargs
    )

def capnroto_cc_binary(**kwargs):
    cc_binary(
        copts = CAPNPROTO_COPTS + kwargs.pop("copts", []),
        linkopts = CAPNPROTO_LINKOPTS + kwargs.pop("linkopts", []),
        includes = CAPNPROTO_INCLUDES + kwargs.pop("includes", []),
        **kwargs
    )

def capnroto_cc_test(**kwargs):
    cc_test(
        copts = CAPNPROTO_COPTS + kwargs.pop("copts", []),
        linkopts = CAPNPROTO_LINKOPTS + kwargs.pop("linkopts", []),
        includes = CAPNPROTO_INCLUDES + kwargs.pop("includes", []),
        **kwargs
    )
