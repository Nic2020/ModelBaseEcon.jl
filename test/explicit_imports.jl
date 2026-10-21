##################################################################################
# This file is part of ModelBaseEcon.jl
# BSD 3-Clause License
# Copyright (c) 2020-2025, Bank of Canada
# All rights reserved.
##################################################################################

# Import hygiene checks, https://github.com/JuliaTesting/ExplicitImports.jl
using ExplicitImports

@testset "ExplicitImports" begin
    test_explicit_imports(ModelBaseEcon;
        # TODO: names used through `using X` without being listed
        no_implicit_imports=false,
        # TODO: accessed as DFMModels.vars_comp_refs inside DFMModels
        no_self_qualified_accesses=(ignore=(:vars_comp_refs,),),
        # use of non-public names is checked later
        all_explicit_imports_are_public=false,
        all_qualified_accesses_are_public=false,
    )
end
