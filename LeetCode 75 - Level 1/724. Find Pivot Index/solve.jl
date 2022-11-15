function pivotIndex(nums::Vector)::Int64
    @assert (1 <= length(nums) <= 10^4) "1 <= nums.length <= 104"
    @assert (-1000 <= minimum(nums) <= 1000) "-1000 <= nums[i] <= 1000"
    
    for i in eachindex(nums)
        if sum(nums[begin:i-1]) == sum(nums[i+1:end])
            return i # Diferent from Python, Julia starts indexing at 1
        end
    end
    return -1
end