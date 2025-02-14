add_rules("mode.debug", "mode.release")
target("reactphysics3d")
    set_kind("$(kind)")
    set_exceptions("no-cxx")
    add_files("src/**.cpp")
    add_includedirs("include")
    set_languages("cxx11")
    set_options("")
    
    if is_mode("debug") then
        set_symbols("debug")
        set_optimize("none")
    elseif is_mode("release") then
        set_strip("all")
        set_fpmodels("fast")
        set_optimize("aggressive")
    end