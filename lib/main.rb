def merge_sort(arr)
  if arr.length < 2
    arr
  else
    i = 0
    j = 0
    arr1 = merge_sort(arr[0..(arr.length / 2 - 1)])
    arr2 = merge_sort(arr[(arr.length / 2)..-1])
    newArr = []
    while i < arr1.length || j < arr2.length
      if j >= arr2.length
        newArr << arr1[i]
        i += 1
      elsif i >= arr1.length
        newArr << arr2[j]
        j += 1
      elsif arr1[i] < arr2[j]
        newArr << arr1[i]
        i += 1
      else
        newArr << arr2[j]
        j += 1
      end
    end
    newArr
  end
end

arr = []
rand(200).times do
  arr << rand(200)
end

#p merge_sort [6, 5, 10, 19, 1, 2, 70, 1, 5]
p merge_sort arr
