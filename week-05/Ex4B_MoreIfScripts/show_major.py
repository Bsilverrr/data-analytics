student_name = 'Brandon Silverio'
student_major = 'xyz' 

if student_major == 'BIOL':
    major_name = 'Biology'
    department_office = 'Science Bldg, Room 310'
elif student_major == 'CSCI':
    major_name = 'Computer Science'
    department_office = 'Sheppard Hall, Room 314'
elif student_major == 'ENG':
    major_name = 'English'
    department_office = 'Kerr Hall, Room 201'
elif student_major == 'HIST':
    major_name = 'History'
    department_office = 'Kerr Hall, Room 114'
elif student_major == 'MKT':
    major_name = 'Marketing'
    department_office = 'Westly Hall, Room 310'
else:
    major_name = '<unknown>'
    department_office = ''

print(f'Student: {student_name}')
print(f'Major: {major_name}')
print(f'Department Office: {department_office}')