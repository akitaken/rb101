require 'pry'

def joinor(arr, delimiter=', ', conjunction='or')

  joined_arr = ""

  arr.each_with_index do | digit, idx |

    if idx == (arr.size - 1)
      joined_arr << "#{arr[idx]}"
    elsif idx == (arr.size - 2)
      joined_arr << "#{arr[idx]} #{conjunction} "
    else
      joined_arr << "#{arr[idx]}#{delimiter}"
    end
  end
  joined_arr
end

array = [1,2,3,4]
arr1 = [1]
arr2 = [1,2]
arr3 = [1,2,3]

p joinor(array)
p joinor(array, '; ')
p joinor(array, '; ', 'and')

p joinor(arr1)
p joinor(arr2)
p joinor(arr3)