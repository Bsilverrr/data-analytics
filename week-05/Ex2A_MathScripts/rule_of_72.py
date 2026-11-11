savings_total = float(input("Please enter your current savings total: $"))
interest_rate = float(input("Please enter your interest rate (as a percentage): "))
doubled = savings_total * 2
years = 72 / interest_rate

print(f'Your current savings is {savings_total:,.2f}.')
print(f'At a {interest_rate / 100:.0%} interest rate, your savings account will be')
print(f'worth {doubled:,.2f} in {years:.1f} years')

# i noticed that input() always gives you a string, even if you type a number. You have to
# use float() or int() on it before you can do math with it.
# float() crashes if what you type isn't a plain number. I tested "65,000"
# and it failed because of the comma. "eight" failed too because it was a word.
