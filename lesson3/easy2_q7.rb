advice = "Few things in life are as important as house training your pet dinosaur."


new_advice = advice.slice!(0..38)

p new_advice
p advice

# slice would not modify the origial array, so the advice array would return its orignial value

advice = "Few things in life are as important as house training your pet dinosaur."


new_advice = advice.slice!(0, advice.index('house'))

p new_advice
p advice
