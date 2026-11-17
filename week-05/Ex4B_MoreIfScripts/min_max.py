a = 89
b = 23
c = 54

# smallest
if a < b and a < c:
    smallest = a
elif b < c:
    smallest = b
else:
    smallest = c

# largest
if a > b and a > c:
    largest = a
elif b > c:
    largest = b
else:
    largest = c

print(f'The numbers are {a}, {b}, and {c}')
print(f'The smallest is {smallest}')
print(f'The largest is {largest}')