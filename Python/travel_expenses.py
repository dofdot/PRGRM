# This program takes in expenses and asks for initials of those that used their money, 
# totals it and outputs how much an individual has to pay.

# This Function takes the name and Reports the initials to sign the specific payment to.

def initials(name):
    final_initials_list = []
    final_initials = "" 
    name = name.lower().split()
    for first_letter in name:
        final_initials += first_letter[0]
    final_initials_list.append(final_initials)
    print(final_initials_list)
    print(final_initials)

initials(name_list)



