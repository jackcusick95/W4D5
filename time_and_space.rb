
def my_min(list)

    not_sorted = true #O(1)
    while not_sorted #O(n)
    not_sorted = false #O(1)
        (0...list.length-1).each do |idx| #O(n)
            if list[idx] < list[idx+1] #O(1)
                list[idx], list[idx+1] = list[idx+1], list[idx] #O(1)
                not_sorted = true #O(1)
            end 
        end 
    end
    list[-1] #O(1)
end 

#O(n) * O(n)
#O(n^2)

def efficient_my_min(list)
    list.inject { |acc, o| acc < o ? acc : o} #O(n)
end 
#O(n)

p my_min([ 0, 3, 5, 4, -5, 10, 1, 90 ])
p efficient_my_min([ 0, 3, 5, 4, -5, 10, 1, 90 ])