 #assignment
 #Create a file called personal_info.py and write a program that:
#1. Asks the user for their first name, last name, age, and favorite hobby

#this is an intput informations
print("=== Personal Information System ===")
first_name = input("First Name: ")
last_name = input("Last Name: ")
age = input("Age: ")
favorite_hobby = input("Favorite hobby: ")


#2. Converts their age to a number and calculates how old they'll be in 5, 10, and 20 years

age = int(age)

age_in_5 = age + 5

age_in_10 = age + 10

age_in_20 = age + 20


# 3. Creates and displays several personalized messages using different string methods

print("=== Here's your information! ===")

full_name = (f"{first_name} {last_name}")

print(f"Hello, {full_name.title()}! Nice to meet you.")

print(f"Did you know your name in uppercase is {full_name.upper()} ?")



# 4. Shows interesting facts about their input (like how many characters their name has)
# Interesting facts about the input

name_length = len(first_name + last_name)

print(f"Name length: {name_length} characters.")

print(f"In 5 years you'll be: {age_in_5} years old.")

print(f"In 10 years you'll be: {age_in_10} years old.")

print(f"In 20 years you'll be: {age_in_20} years old.")


