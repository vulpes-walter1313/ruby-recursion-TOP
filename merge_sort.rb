def merge_sort(arr)
  if arr.length <= 1
    return arr
  else
    middle_index = arr.length / 2
    left =  merge_sort(arr[0...middle_index])
    right = merge_sort(arr[middle_index...arr.length])
    merge(left, right)
  end
end

def merge(left, right)
  result = []

  while !left.empty? && !right.empty?
    if left.first < right.first
      result.push(left.shift)
    else
      result.push(right.shift)
    end
  end
  return result.concat(left).concat(right)
end

test_array = []
50.times do |i|
  test_array.push(rand(256))
end

puts "unsorted: #{test_array}"
puts "Sorted: "
p merge_sort(test_array)