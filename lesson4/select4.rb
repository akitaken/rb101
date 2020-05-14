def select_fruit(hsh)

  produce_keys = hsh.keys
  fruits = {}
  counter = 0

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = hsh[current_key]

    if current_value == 'Fruit'
      fruits[current_key] = current_value
    end

    counter += 1
  end

  fruits
end



produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce)