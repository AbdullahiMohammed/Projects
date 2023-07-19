f = open(r"C:\Users\DELL\Desktop\techstuff\Projects\Python Projects\petnames.txt", "r")
f_content = f.read()
f_content_list = f_content.split("\n")

for file in f_content_list:
    print(file)

# print(f_content_list)