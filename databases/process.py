log_file = open("um-server-01.txt") #opens the file and saves it to a variable called log_file


def sales_reports(log_file): # def is used to create a new function, in this case sales_reports that takes a parameter of log_file (the file we opened above)
    for line in log_file: # this starts a for loop and loops over every line in the log_file variable
        line = line.rstrip() # rstrip returns a copy of the string with trailing characters removed
        day = line[0:3] # will take the first three characters in the a line and save it to a variable called day
        if day == "Mon": # if day is equal to "Tue", then we will print that line. 
            print(line)


sales_reports(log_file) # this is what actually calls the function we defined on line 4

def melons_over_ten(log_file):
    for line in log_file:
        line = line.rstrip()
        number_of_melons = line[16:17]
        if int(number_of_melons) > 10:
            print(number_of_melons)

melons_over_ten(log_file)