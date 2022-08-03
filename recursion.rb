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
            copy << ele.dup
        end

    end
    copy
end


robot_parts = [
    ["nuts", "bolts", "washers"],
    ["capacitors", "resistors", "inductors"]
]

arr_1 = deepdup(robot_parts)



robot_parts[1] << "LEDs"

robot_parts[0][0] += "a"
p robot_parts
p arr_1
p robot_parts[0][0].object_id
p arr_1[0][0].object_id

robot_parts_copy = robot_parts.dup

# shouldn't modify robot_parts
robot_parts_copy[1] << "LEDs"
# but it does
robot_parts[1] # => ["capacitors", "resistors", "inductors", "LEDs"]



def fib(n)
    [0,1].take(n) if n < 1

end

fib(1)


# p exp1(3,3)
# p exp2(3,3)