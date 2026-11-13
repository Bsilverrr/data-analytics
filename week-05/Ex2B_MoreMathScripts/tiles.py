import math

length = 12
width = 10
area = length * width

boxes_needed = math.ceil(area / 12)
tiles_extra = area * 1.10
boxes_buy = math.ceil(tiles_extra / 12)

print(f'The room is {length} x {width} feet, which is {area} square feet.')
print(f'Which needs {area} tiles, or {boxes_needed} full boxes.')
print(f'With 10% extra that is {tiles_extra:.0f} tiles, so {boxes_buy} boxes will be bought.')