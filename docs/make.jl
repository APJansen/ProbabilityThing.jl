using ProbabilityThing
using Documenter

DocMeta.setdocmeta!(ProbabilityThing, :DocTestSetup, :(using ProbabilityThing); recursive=true)

makedocs(;
    modules=[ProbabilityThing],
    authors="Aron <aronpjansen@gmail.com> and contributors",
    repo="https://github.com/apjansen/ProbabilityThing.jl/blob/{commit}{path}#{line}",
    sitename="ProbabilityThing.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://apjansen.github.io/ProbabilityThing.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/apjansen/ProbabilityThing.jl",
    devbranch="main",
)
