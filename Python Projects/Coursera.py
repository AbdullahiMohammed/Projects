# age = 29

# match age:
#     case  20:
#         print('Age too low')
#     case 27:
#         print('Almost my age')
#     case _:
#         print('My age')


# name = 'Abdullahi'

# count = 0
# while count < len(name):
#     print(name[count] + " is letter " + str(count + 1) + " of my name")
#     count = count + 1

# import enum


# num_list = [33,42,5,66,77,22,16,79,36,62,78,43,88,39,53,67,89,11]

# for k,v in enumerate(num_list):
#     if v == 36:
#         print('Number found at position: ', k )

def sumof(*args):
    sum = 0
    for x in args:
        sum += x
    return sum

print(sumof(9,4,5,2,10))

