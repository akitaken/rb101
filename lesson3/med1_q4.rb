def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# << modifies the original array, while concatenating doesn't modify the original array
# because we want the array modified, << is the better choice

array = [0, 2, 3, 4, 5]

rolling_buffer1(array, 7, 6)

p array

rolling_buffer1(array, 7, 7)

p array

rolling_buffer1(array, 7, 8)

p array

rolling_buffer1(array, 7, 9)

p array

array = [0, 2, 3, 4, 5]

rolling_buffer2(array, 7, 6)

p array

rolling_buffer2(array, 7, 7)

p array

rolling_buffer2(array, 7, 8)

p array

rolling_buffer2(array, 7, 9)

p array
