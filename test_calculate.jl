module TestCalculate
    using Test

    include("calculate.jl")

    function main()
        @testset "add" begin
            @test Calculate.add(1, 2) == 3
            @test Calculate.add(2, 3) == 5
        end
    end
end

if abspath(PROGRAM_FILE) == @__FILE__
    using .TestCalculate

    TestCalculate.main()
end
