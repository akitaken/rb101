arr = [[1, 3], [2]]
p arr[0][1]

arr[1] = 'hi there'
p arr

arr[0][1] = 5
p arr

arr[0] << 7
p arr

arr_2 = [{ a: 'ant' }, { b: 'bear' }]
arr_2[0][:c] = 'cat'
arr_2[2] = {d: 'dog'}
p arr_2

arr_3 = [['a', ['b']], { b: 'bear', c: 'cat' }, 'cab']
p arr_3[0][1][0]
p arr_3[1]
p arr_3[1][:b]
p arr_3[2][1]

a = [1, 3]
b = [2]
arr = [a, b]
p arr

a[1] = 5
p arr # => [[1, 5], [2]]

arr[0][1] = 8
p arr # => [[1, 8], [2]]
p a   # => [1, 8]