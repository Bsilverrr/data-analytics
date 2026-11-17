bank_balance = 700.00
savings_goal = 9000.00
weekly_savings = 550.00
treat_time = 75.00

while bank_balance < savings_goal:
    bank_balance = bank_balance + weekly_savings

    if bank_balance >= savings_goal * 0.75:
        bank_balance = bank_balance - treat_time
        print(f'So close! After treating myself, my balance is up to ${bank_balance:,.2f}.')
    elif bank_balance > savings_goal * 0.5:
        print(f'Almost there! This week my balance is up to ${bank_balance:,.2f}.')
    else:
        print(f'This week my balance increased to ${bank_balance:,.2f}.')

print(f'Goal met! My current balance is ${bank_balance:,.2f}.')