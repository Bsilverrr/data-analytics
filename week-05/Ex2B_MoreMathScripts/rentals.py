import math

people = 38
van_capacity = 15
van_cost_per_day = 250
vans_needed = math.ceil(people / van_capacity)
total_cost = vans_needed * van_cost_per_day
cost_per_person = total_cost / people

print(f'Tourists: {people}')
print(f'Vans needed: {vans_needed}')
print(f'Total cost: ${total_cost:,.2f}')
print(f'Cost per person: ${cost_per_person:,.2f}')