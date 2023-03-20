module Calculate
    function plus(m, n)
        return m + n
    end
end

if abspath(PROGRAM_FILE) == @__FILE__
    using .Calculate

    Calculate.main()
end
