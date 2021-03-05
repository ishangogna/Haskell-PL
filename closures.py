# closures
# before understanding closures, it is important to understand first class functions
# first class functions are functions that can be used as objects, be feeded to variables, passed as parameters to another functions etc.

#lets start with a simple example : 
#This code has an outer func which simply assigns a value 'hi' to message and anotehr function that prints out the value of message
#Message here is called a 'free variable' since it wasnt really defined INSIDE the inner_func.
#The output is therefore going to be 'hi' since we are CALLING the function
# def outer_func():
#     message = "hi"

#     def inner_func():
#         print(message)

#     return inner_func()

# outer_func()

#Great now lets NOT call the function but rather just use it somewhat as a variable

# def outer_func():
#     message = 'hi'

#     def inner_func():
#         print(message)
    
#     return inner_func

# my_func = outer_func()
# my_func()

#This is exactly what a CLOSURE is! closure is the inner function that has access to local variables in scope of the outer function
# EVEN AFTER the outer function is done executing

#This becomes even more interesting when parameters are involved.

# def outer_func(msg):
#     message = msg

#     def inner_func():
#         print(message)
    
#     return inner_func

# my_func = outer_func('hello')
# my_func()