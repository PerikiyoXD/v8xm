add_rules("mode.debug", "mode.release")

add_repositories("local-repo repo")
add_requires("v8 12.4.111")

target("demo")
    set_kind("binary")
    add_files("src/main.cpp")
    add_packages("v8")
    -- c++17
    set_languages("cxx17")
    -- D_V8_COMPRESS_POINTERS
    add_defines("V8_COMPRESS_POINTERS=1")
    -- V8_31BIT_SMIS_ON_64BIT_ARCH 
    add_defines("V8_31BIT_SMIS_ON_64BIT_ARCH=1")
    add_defines("V8_ENABLE_SANDBOX=1")