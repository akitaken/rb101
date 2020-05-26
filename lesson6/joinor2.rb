# simpler launch school version using case
# note this uses the oxford comma

require 'pry'

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then "#{arr.first}" # interpolated string otherwise it returns an integer
  when 2 then arr.join(" #{word} ")
  else
      arr[-1] = "#{word} #{arr.last}"
      p arr
      arr.join(delimiter)
      p arr

  end  
end


array = [1,2,3,4]
arr1 = [1]
arr2 = [1,2]
arr3 = [1,2,3]

# p joinor(array)
# p joinor(array, '; ')
p joinor(array, '; ', 'and')

p joinor(arr1)
p joinor(arr2)
p joinor(arr3)
