function sortTwoLists(list1::Vector, list2::Vector)
    @assert maximum([maximum([list1; 0]), maximum([list2; 0])]) <= 100
    @assert minimum([minimum([list1; 0]), minimum([list2; 0])]) >= -100
    @assert maximum([length(list1), length(list2)]) <= 50
    list_ret = vcat(list1, list2)
    sort(list_ret)
end