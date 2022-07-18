---
title:      C++ Vector
date:       2021-12-01
lastmod : 2022-01-25
summary:    A through explanation C++ Vectors
categories: C++
tags: ["standard-template-library","OOP"]
---
# Vector
Vector is a collection of object of same type,every object has an associated index which gives access to that object. **It is a container** instead of an object, because it contains other objects. Also vector is a class template(c++ has both class and function templates) and **NOT a type**. We can use vectors without knowing what templates are but if we are interested we can check [official documentation related to templates][1].

# How to use vectors?
We can simply include vector header file to use it.
```cpp
#include<vector>
```
We are ready to use vectors in our code now.

# Declaration and Initialisation
Syntax for declaration of a vector is given below.
```cpp
std::vector<type> variable_name;
```
For example, we can declare a vector of `int` with the name `int_vec` like this
```cpp
std::vector<int> int_vec;
```
We can even create a vector of vectors.
```cpp
std::vector<vector<int>> vec_vec;
```
We can initialise a vector in many ways. We can use `{}`.
```cpp
std::vector<int> v{1,2,3};
```
Above code will initialise a vector `v` containing elements `1,2,3`. \
We can also use equality operator to initialise. For example
```cpp
std::vector<int> v={1,2,3};
```
We have a special Initialisation for vector of `n` length, and all elements equal to `m`.
```cpp
std::vector<int> v(n,m);
```
We can also copy a vector into other during initialisation,using `vec(vec_to_be_copied)` or by simply using `=`(equal) operator.
```
std::vector<int> vec1(vec_to_be_copied);
std::vector<int> vec2=vec_to_be_copied;
```

# Adding elements to the vector
We can add elements at runtime to the vector using `push_back` vector member function. It takes a value to be added as its parameter. For example look at this code
```cpp
std::vector<int> v;
v.push_back(10);
```
Here `push_back` appends 10 to the vector `v`. Lets look at another example.
```cpp
vector<int> iv;
   for (int i = 0; i < 150; i++)
      iv.push_back(i);
```
Here sequentially integers are being appended in vector. Also it is better to give value at runtime to the vector and initialising an empty vector instead of having a vector of predefined size(If you need a vector of predefined size, use array), unless all the elements needs to be of the same value.

# Accessing elemets of a vector
We can access the elements of vector using several different methods.\
First being a simple for loop. Code below prints all the elemets of a vector.
```cpp
for(auto elem : vector)
    std::cout<<elem<<std::endl;
```
But changes made to elem are not reflected inside `vector` . For that we can instead use `&elem`. \
If you are familiar with arrays or accessing values using subscript, you can access elemets on vectors using indices too. `vector[0]` will return first element inside `vector`, `vector[1]` second element and so on. And to write equivalent code using indices, and for we first need to find the size of `vector`. That we can do using `size()` method.
```cpp
for(auto i=0;i<vector.size();i++)
    vector[i];
```
However this method does not add elements

[1]: https://en.cppreference.com/w/cpp/language/templates
