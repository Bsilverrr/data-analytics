# Description: This script tests various numeric
#              conversion techniques
# Author: Brandon Silverio

a = "  101.1 "
b = '55'
c = "402 Stevens"
d = 'Number 5  '

# a_int = int(a)   # ValueError: invalid literal for int() with base 10: '  101.1 ' int() only works on strings that are pure whole numbers
b_int = int(b)     # This works becuase its a whole number.
# c_int = int(c)   # ValueError: invalid literal for int() with base 10: '402 Stevens' int() only works on strings that are pure whole numbers
# d_int = int(d)   # ValueError: invalid literal for int() with base 10: 'Number 5  ' int() only works on strings that are pure whole numbers

a_float = float(a)    # This works 
b_float = float(b)    # This works 
# c_float = float(c)  # ValueError: could not convert string to float: '402 Stevens'
# d_float = float(d)  # ValueError: could not convert string to float: 'Number 5  '
# float() handles decimals, so a works here since it has one decimal point.
# c and d failed because of the letters.

a_int_float = int(float(a))  #casting to int will drop the decimal and it doesn't round

c_number = int(c[:3])    # pulled 402 from ' 402 stevens'
d_number = int(d[7])     # pulled 5 from 'Number 5  '

print(a.strip())    # removed spaces before and after 101.1
print(d.strip())    # removed spaces after Number 5

print(b_int, type(b_int))
print(a_float, type(a_float))
print(b_float, type(b_float))
print(a_int_float, type(a_int_float))
print(c_number, type(c_number))
print(d_number, type(d_number))