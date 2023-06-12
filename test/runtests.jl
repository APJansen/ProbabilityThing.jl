using ProbabilityThing
using Test

@testset "ProbabilityThing.jl" begin
    # Write your tests here.
    for distribution in [Normal(), Uniform()]

        @testset "Testing distribution $distribution" begin
            @test pdf(distribution, 0.0) >= 0
            @test cdf(distribution, Inf) ≈ 1.0
        end
    end
end
