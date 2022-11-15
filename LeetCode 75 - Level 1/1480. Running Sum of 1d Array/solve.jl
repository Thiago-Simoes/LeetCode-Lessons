function runningSum(array)
    @assert 1 <= length(array) <= 1000
    ret = []
    for i in eachindex(array)
        @assert (-10^6 <= array[i] <= 10^6) "-10^6 <= nums[i] <= 10^6        "
        push!(ret, sum(array[begin:i]))
    end
    return ret
end
