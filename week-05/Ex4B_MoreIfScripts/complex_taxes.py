pay_rate = 20.00
hours_worked = 45
filing_status = 'single'

# gross pay with overtime past 40 hours
if hours_worked > 40:
    regular_pay = 40 * pay_rate
    overtime_hours = hours_worked - 40
    overtime_pay = overtime_hours * pay_rate * 1.5
    gross_weekly_pay = regular_pay + overtime_pay
else:
    gross_weekly_pay = hours_worked * pay_rate

# annual estimate
annual_gross_pay = gross_weekly_pay * 52

# tax rate based on annual income and filing status
if filing_status == 'single':
    if annual_gross_pay < 12000:
        tax_rate = 0.05
    elif annual_gross_pay < 25000:
        tax_rate = 0.10
    elif annual_gross_pay < 75000:
        tax_rate = 0.15
    else:
        tax_rate = 0.20
elif filing_status == 'joint':
    if annual_gross_pay < 12000:
        tax_rate = 0.00
    elif annual_gross_pay < 25000:
        tax_rate = 0.06
    elif annual_gross_pay < 75000:
        tax_rate = 0.11
    else:
        tax_rate = 0.20
else:
    tax_rate = 0
    print('Invalid filing status - use single or joint')

tax_withheld = gross_weekly_pay * tax_rate
net_pay = gross_weekly_pay - tax_withheld

print(f'You worked {hours_worked} hours this period.')
print(f'Because you earn ${pay_rate:.2f} per hour, your gross weekly pay is ${gross_weekly_pay:.2f}')
print(f'Your filing status is {filing_status}')
print(f'Your tax withholding for the week is ${tax_withheld:.2f}')
print(f'Your net pay is ${net_pay:.2f}')