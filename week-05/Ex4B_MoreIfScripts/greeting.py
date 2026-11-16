current_hour = 14

if current_hour < 10:
    greeting = 'Good morning!'
elif current_hour < 17:
    greeting = 'Good day!'
else:
    greeting = 'Good evening!'

print(greeting)

if current_hour >= 23 or current_hour <= 4:
    greeting = 'What are you doing up so late??'
elif current_hour < 10:
    greeting = 'Good morning!'
elif current_hour < 17:
    greeting = 'Good day!'
else:
    greeting = 'Good evening!'

print(greeting)