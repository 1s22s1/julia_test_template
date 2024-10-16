module TestCalculate
using Test

include("calculate.jl")

function main()
    @testset "plus" begin
        @test Calculate.plus(1, 2) == 3
        @test Calculate.plus(2, 3) == 5
    end
end
end

if abspath(PROGRAM_FILE) == @__FILE__
    using .TestCalculate

    TestCalculate.main()
end
