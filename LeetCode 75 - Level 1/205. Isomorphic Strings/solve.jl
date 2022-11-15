function isIsomorphic(s::String, t::String)
    if length(s) != length(t)
        return false
    end
    vs = []
    vt = []
    for i in eachindex(s)
        if (!(s[i] in vs) || isempty(vs)) push!(vs, s[i]) end
        if (!(t[i] in vt) || isempty(vt)) push!(vt, t[i]) end
    end
    if length(vs) != length(vt)
        return false
    end

    for i in eachindex(vs)
        s = replace(s, vs[i] => i)
        t = replace(t, vt[i] => i)
    end
    return s == t
end