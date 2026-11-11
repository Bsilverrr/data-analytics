savings_total = 55000
interest_rate = 8
doubled = savings_total * 2
years = 72 / interest_rate

print('Your current savings is ' + format(savings_total, ',.2f'))
print('At a ' + format(interest_rate / 100, '.0%') + ' interest rate, your savings account will be')
print('worth ' + format(doubled, ',.2f') + ' in ' + format(years, '.1f') + ' years')