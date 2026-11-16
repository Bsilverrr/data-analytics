contact_info = {
    'name': 'Brandon Silverio',
    'address': '42 Mulberry Lane',
    'city': 'Newark',
    'state': 'NJ',
    'zip': '07102'
}

print(f"{contact_info['name']}\n{contact_info['address']}\n{contact_info['city']}, {contact_info['state']} {contact_info['zip']}")

del contact_info['name']

full_name = {
    'first name': 'Brandon',
    'last name': 'Silverio'
}

full_name.update({'honorific': 'Mr.'})

contact_info.update(full_name)

print(f"""{contact_info['honorific']} {contact_info['first name']} {contact_info['last name']}
{contact_info['address']}
{contact_info['city']}, {contact_info['state']} {contact_info['zip']}""")