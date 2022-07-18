---
title:      Python Decorators in Brief
date:       2021-05-27
summary:    Python decorators in brief without trying to overwhelm the user with information.
tags: ["decorator","OOP"]
categories: ["Python"]
---
# Python Decorators
Python decorators can be hard to understand at first(at least they were for me) but become so obvious when understood. Online tutorials and blogs helped me but not a lot,I ended up learning by implementing them. So I am writing this to solidify what I understood.
# Functions are first class objects
First,functions are first-class objects,that means they act like int,floats.strings etc. Which means they can also be passed as arguments to other functions and can be assigned to variables.For example we can do:
```python
def fun():
	return "spam"

# we assign our fun to otherName
otherName=fun

# here we call fun using othername variable
otherName()


def otherFun(farg):
    # inside function we call function passed as a argument
	print(farg())

# here we call otherFun and pass our function as an argument
otherFun(fun) 
```
Of above `otherName=fun` and `otherFun(fun)` are important as they are our decorator equivalent to a mix of these as well see next.

# What Decorators Really mean

So lets understand what decorators really do
```python
def decorator(funarg):
    print("inside decorator")
    return "returned from decorator"

def fun():
    print("inside decorator")
 	return "returned from fun"

print(decorator(fun))
```
This is equivalent to
```python
def decorator(funarg):
	print("inside decorator")
	return "returned from decorator"

@decorator
def fun():
    print("inside decorator")

print(fun)
```
both gives us the output 
```
inside decorator
returned from decorator
```
Adding `@decorator` above function definition of `fun` is equivalent to `fun=decorator(fun)`.
That means last statement prints what got returned from calling decorator function. This is really not that helpful as it cannot take arguments in its current form.
# so what now?
To make use of decorator to its full potenteial we make decorator function return another function. This function may take arguments like normal.
It is easier to show
```python
def math(f):
    def func(a,b):
        print('.....')
        print(f(a,b))
        print('.....')
    return func

@math
def add(a,b): # add=math(add)
    return a+b

add(1,2)
```
Output:
```
.....
3
.....
```
This approach extends what a function can do.

It may or may not be clear why this can be so important,so lets look at this
```python
def math(f):
    def func(a,b,num_sys='decimal'):
        num=f(a,b)
        if num_sys=='binary':
            num= bin(num).replace("0b", "")
        return num
    return func

@math
def add(a,b):
    return a+b
@math
def mul(a,b):
    return a*b

print(add(17,5,'binary'))
print(mul(8,9))
```
Output:
```
10110
72
```
In this example we use decorator to extend our functions to convert result into binary number system.We can add more number systems without even touching functions that gives us the result and even add this type conversion to as many functions as we want.

This only covers bare minimum about decorators. We can do much more with decorators. For more detail you can check [offical documentation about decorators](https://www.python.org/dev/peps/pep-0318/).
