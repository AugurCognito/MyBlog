---
title:      Python Dataclass in Brief
date:       2021-06-15
summary:    Python dataclass in brief without trying to overwhelm the user with information.
categories: python
tags:
 - dataclass
 - oop
---

# Python Dataclass
This is kind of continuation of python decorators in brief. As we have seen, decorators are a really easy way to extend our functions and methods(and classes). `dataclass`is such a very useful decorator from built-in `dataclasses` module in python(3.7+).

# Why Dataclass
What is so great about `dataclass` anyway, you ask? A lot actually.
You ever sit down trying to write a class and it a lot of work to write special methods, and especially hard to maintain them. This decorator helps massively in such cases. This decorator generate such methods automatically. \
Now lets start with code:

# Using Dataclass
Below here is a simple code snippet
```python
# to import dataclass decorator
from dataclasses import dataclass

# to use dataclass decorator onto our class
@dataclass
class item:
    item_name: str
    item_price: float
    item_quantity: int = 1

    def total_cost(self):
        pass
```
will generate, `__init__()` special method by itself equivalent to
```python
def __init__(self, name: str, item_price: float, item_quantity: int = 0):
    self.name = name
    self.item_price = item_price
    self.item_quantity = item_quantity
```

By default dataclass decorators has these parameters
```python
@dataclass(init=True, repr=True, eq=True, order=False, unsafe_hash=False, frozen=False)
class class_name:
```
to study dataclass in depth refer to [offical documentation](https://docs.python.org/3/library/dataclasses.html).
