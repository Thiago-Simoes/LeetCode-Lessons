function isSubsequence(s::String, t::String)
    @assert (0 <= length(s) <= 100) "0 <= s.length <= 100"
    @assert (0 <= length(t) <= 104) "0 <= t.length <= 104"

    if length(s) > length(t)
        return false
    end
    if length(s) == 0
        return true
    end
    i = 1
    for j in eachindex(t)
        if s[i] == t[j]
            i += 1
        end
        if i > length(s)
            return true
        end
    end
    return false
end