def range(start,last) #4
    return [] if last-1 < start
    # return [start] if start == last-1 #4
    # emptyarr = [start] #1 4
    # p start
    [start] + range(start+1,last)
    
    
end

def range_it(start,last)
    # emptyarr= []
    (start...last).map {|n| n}

end

# p range(1,5) #[1,2,3,4]
# p range_it(1,5) #[1,2,3,4]

def exp1(b,n)
    return 1 if n == 0 
    b*exp1(b,n-1)
end

def exp2(b,n)
    return 1 if n == 0 
    if n.even?
        exp2(b, n / 2) ** 2
    else
        b * (exp2(b, (n - 1) / 2) ** 2)
    end

end
#go through each ele of arr
#dup each subarray
def deepdup(arr)
    copy = []
    arr.each do |ele| #nbw
        if ele.is_a?(Array)
            copy << deepdup(ele)
        else
            copy << ele
        end
    end
    copy
end


robot_parts = [
    ["nuts", "bolts", "washers"],
    ["capacitors", "resistors", "inductors"]
]

arr_1 = deepdup(robot_parts)



# robot_parts[1] << "LEDs"

# robot_parts[0][0] += "a"
# p robot_parts
# p arr_1
# p robot_parts[0][0].object_id
# p arr_1[0][0].object_id

# robot_parts_copy = robot_parts.dup

# # shouldn't modify robot_parts
# robot_parts_copy[1] << "LEDs"
# # but it does
# robot_parts[1] # => ["capacitors", "resistors", "inductors", "LEDs"]



def fib_it(n)
    if n == 1
        return [0]
    end
    if n == 2
        return [0,1]
    end

    new_arr = [0,1]
    (n-2).times do |i|
        new_arr << new_arr[-1] + new_arr[-2]
    end

    new_arr
end



def fib(n)
    if n == 1
        return [0]
    end
    if n == 2
        return [0,1]
    end
    fib(n-1) << fib(n-2)[-1] + fib(n-1)[-1]
end

#p fib(3)


# p exp1(3,3)
# p exp2(3,3)


def quicksort(array)

return array if array.length <= 1

pivot = array[0]

left = array[1..-1].select {|ele|  ele if ele < pivot }
right = array[1..-1].select {|ele| ele if ele >= pivot}

quicksort(left) + [pivot] + quicksort(right)

end

# arr = [6,34,1,8,3,6,8,2,5]
# p quicksort(arr)

def bsearch(array, n)
    #array is already sorted
    #find the index of n
    #base case
    return nil if array.empty?

    pivot = array.length/2 #pivot is index of middle number
    left = array[0...pivot]
    right = array[pivot + 1..-1]

    if array[pivot] == n
        return pivot 
    elsif  array[pivot] < n 
        return nil if bsearch(right, n) == nil
        return pivot + 1 + bsearch(right, n) #1
    else
        bsearch(left, n)
    end
end


p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil


def bubble(array)


    sorted = false

    while !sorted 
        sorted = true
        
        if array[]

            sorted = false
        end

    end

end

def merge(array)

    return array if array.length == 1



end

