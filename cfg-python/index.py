# Writing a function
def product(title, price, discount, review, image):
    print("Hello, World")
# Calling a function
product()

## LIST

# Instead of putting the data like this...
student_1 = "Alice"
student_2 = "Amanda"
...

# Write a data structure like this:
students = ["Alice", "Amanda", "Gabby", "Grace"]
print(students[2])
# Outcome: Gabby

students = ["Alice", "Amanda", "Gabby", "Grace"]
for student in students:
    print(student)
# Outcome: Alice Amanda Gabby Grace

    #methods of...
    #adding new value
students.append("Amal") 
print(students)

    #recognising input
student_name = input("What is your name? - ")
if student_name in students:
    print("Welcome back!")
else:
    print("Sorry, you are not my student.")

    #counting data
print(len(students))

    #finding data
marks = [100, 300, 10, 15, 89]
print(max(marks))
print(min(marks))
print(sorted(marks))

# PRACTICE

# Create a list
books = [
    "Prosperity Without Growth",
    "Doughnut Economics",
    "A Monk Who Sold His Ferrari"
    ]
# Print a list
for library in books:
    print(library)
# Access individual values alist[0]
    print(books[0])
# For loop

# DICTIONARY
menu = {"Pizza":5, "Pasta":3, "Burger":2}
print(menu["Pizza"])

place = {
    "name":"Alice",
    "city":"London",
    "age":32,
    "address":{
        "street_number":45,
        "post_code":70
    }
}