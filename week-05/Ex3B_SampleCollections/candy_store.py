candies = ('gummy bears', 'hard candy', 'sour candy')
flavors = ('watermelon', 'mango', 'green apple')

combo_1 = f'{flavors[0]} {candies[0]}'
combo_2 = f'{flavors[1]} {candies[1]}'
combo_3 = f'{flavors[2]} {candies[2]}'

candy_options = {combo_1, combo_2, combo_3}

print("Today's candy options include:")
print(candy_options)

# What i noticed about the order of the items as you
# repeat the output is that the items come back in a different order each time.
# Id have to use a list if the order matters to me.