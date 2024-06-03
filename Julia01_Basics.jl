### A Pluto.jl notebook ###
# v0.19.42

using Markdown
using InteractiveUtils

# ╔═╡ 7fe2b194-3e3f-4777-801f-64f92538b112
md"""
# Introduction to Julia

## Overview of Julia
Julia is a high-level, high-performance programming language for technical computing. It combines the ease of use of Python with the speed of C. Julia is designed for numerical and scientific computing, making it a popular choice in data science, machine learning, and computational science.

## History and Purpose
Julia was created by Jeff Bezanson, Stefan Karpinski, Viral B. Shah, and Alan Edelman, and was first released in 2012. The creators aimed to develop a language that was both fast and easy to use, addressing the "two-language problem" where developers prototype in a high-level language like Python, but rewrite the performance-critical parts in C or Fortran.

## Installation
To install Julia, follow these steps:

1. Go to the [official Julia website](https://julialang.org/downloads/).
2. Download the installer for your operating system.
3. Run the installer and follow the instructions.

After installation, you can verify the installation by running the following command in your terminal or command prompt:

```julia
julia -v
```

This should display the installed version of Julia.

## Basic Julia Syntax and Operations
Julia syntax is clean and familiar to users of other technical computing environments. Below are some basic operations:

### Arithmetic Operations
```julia
1 + 1    # Addition
2 - 1    # Subtraction
2 * 3    # Multiplication
6 / 3    # Division
2 ^ 3    # Exponentiation
```

### Variables and Assignment
```julia
a = 10
b = 20
c = a + b
println(c)  # Output: 30
```

### Data Types
```julia
x = 1       # Integer
y = 1.0     # Float
name = "Julia"  # String
flag = true  # Boolean
```

## First Julia Program
Let's write a simple program to print "Hello, World!".

```julia
println("Hello, World!")
```

## Using Julia REPL and Jupyter Notebooks
### Julia REPL
The Julia REPL (Read-Eval-Print Loop) is an interactive command-line interface for running Julia commands.

To start the Julia REPL, simply open your terminal or command prompt and type `julia`.

### Jupyter Notebooks
Jupyter notebooks provide an interactive environment for running Julia code. To use Julia with Jupyter notebooks, you need to install the IJulia package.

First, open the Julia REPL and run:
```julia
using Pkg
Pkg.add("IJulia")
```

Then, you can start a Jupyter notebook server by running:
```julia
using IJulia
notebook()
```
### Pluto Notebooks
Pluto notebooks are specifically tailored for running Julia in a fast and interactive environment. There are some differences to Jupyter notebooks
This will open a new tab in your web browser where you can create and manage Jupyter notebooks.


## Exercises
Try these exercises to reinforce your understanding:
1. Install Julia and verify the installation.
2. Write a Julia program that calculates and prints the sum of two numbers.
3. Create a Jupyter notebook and run a simple Julia command in it.
"""

# ╔═╡ 47e3de6b-bb7f-4c6d-ad3f-752d00ce4487
md"""
# Basic Data Types and Operations

## Scalars, Strings, and Boolean Types
Julia supports various basic data types including integers, floating-point numbers, strings, and booleans.

### Integer and Floating-Point Numbers

# Integers
"""

# ╔═╡ 45cee26f-2159-4fe3-993c-d59592ec73fe
md"""
# Floating-point numbers
"""

# ╔═╡ 47c9979f-176f-4640-b589-17bb3cf1c462
c = 3.14

# ╔═╡ 59a3876e-7ae9-46fd-a02e-9d654dcec678
d = -0.001

# ╔═╡ c6b46091-561b-4beb-a932-3259c70fcadf
md"""
# Basic operations
"""

# ╔═╡ f69ab54b-bf2d-433a-9556-45e75a2fa296
md"""
### Strings
"""

# ╔═╡ 8577c7e5-8f63-462b-b679-ec65c8fba515
age = 10

# ╔═╡ c723a21f-4b74-4d0e-ae66-e07e2c32e1af
info = "Julia is $age years old."

# ╔═╡ c5892521-57a7-4b36-a774-eaa468b687c9
println(info)

# ╔═╡ 5db1515a-2f35-4aa1-ba19-789b92738dfe
md"""
### Boolean Types
"""

# ╔═╡ 80cac24d-9396-4b56-8d11-809a105e1ec7
md"""
## Arrays and Tuples
Arrays and tuples are used to store collections of values.

### Arrays
"""

# ╔═╡ 8872756c-5f0d-4b18-97a1-6874bbe9517a
numbers = [1, 2, 3, 4, 5]

# ╔═╡ e20b251c-8742-49f8-b87f-aa998a267d5d
names = ["Alice", "Bob", "Charlie"]

# ╔═╡ 08b81b91-ba78-4ef2-b6c6-09f37e721ffe
first_number = numbers[1]

# ╔═╡ e6752fc0-e8e0-45b4-b2a3-a50a7b51b8d4
second_name = names[2]

# ╔═╡ 499e3493-7656-4c3d-acc5-4a8560687c81
push!(numbers, 6)

# ╔═╡ 44bdf237-04ea-4ac7-adf6-f2d790c90dc6
pop!(numbers)

# ╔═╡ 195ebef7-4cf3-41d3-bb77-ece51d966b7a
println("Numbers: ", numbers)

# ╔═╡ 60c85c32-2938-469c-a964-d6c1b3f4253c
println("First number: ", first_number)

# ╔═╡ 89e96959-8d7b-4e2c-85ac-3104369d2343
println("Second name: ", second_name)

# ╔═╡ c84446e7-c52c-459c-8d2c-693a80238c30
md"""
### Tuples
"""

# ╔═╡ 494687b1-3720-4a9c-baf4-5e7207c5432e
coordinates = (10, 20)

# ╔═╡ add246f6-41f8-4396-aac0-981be46adbf5
person = ("Alice", 30)

# ╔═╡ a0346cc8-e917-438a-8e5c-166f9183f9c7
println("Coordinates: ", coordinates)

# ╔═╡ 844fa477-8bfa-49ef-8593-fdea123038be
println("Person: ", person)

# ╔═╡ 2edfe9e2-62b1-4f94-b91e-31d30136cee5
md"""
## Dictionaries and Sets
Dictionaries and sets are useful for storing unique values and key-value pairs.

### Dictionaries
"""

# ╔═╡ 906815f3-3f45-4860-8079-b5e81da1bf02
ages = Dict("Alice" => 25, "Bob" => 30)

# ╔═╡ 7f0777ac-9fd4-44c0-91ca-1dcacf9767bf
alice_age = ages["Alice"]

# ╔═╡ 879bb07a-7dfb-4e13-95f1-c2bee0ce0041
ages["Charlie"] = 35

# ╔═╡ 9454aa74-7054-4914-a427-6ea29ce1f65b
delete!(ages, "Bob")

# ╔═╡ 61b17f4f-babf-4232-b175-17ef3437e8fa

println("Ages: ", ages)

# ╔═╡ 9d65a19b-9830-4910-9d95-46285b6dc082
println("Alice's age: ", alice_age)

# ╔═╡ a3ef7ef4-8fef-48e6-9bfb-2e682ffca924
md"""
### Sets
"""

# ╔═╡ 5c14fd5b-7bab-4621-b141-107745f9fe64
md"""
# Defining a set
"""

# ╔═╡ 28fad2c2-1162-4904-a594-2431dbda28ce
unique_numbers = Set([1, 2, 3, 2, 1])

# ╔═╡ c405c5a7-f6a6-4c6c-b567-e25351fdf6fd
md"""
# Adding and removing elements
"""

# ╔═╡ 6768d246-bc1a-4c5f-80ad-a19553a87bcf
push!(unique_numbers, 4)

# ╔═╡ eec2c842-e90d-490b-94eb-f92906b97029
delete!(unique_numbers, 2)

# ╔═╡ 8a90c6ed-92fa-45cf-a0a6-59b87d25d4a5
println("Unique numbers: ", unique_numbers)

# ╔═╡ cf260593-f495-4664-a2b6-80ca99cbe5bb
md"""
## Basic Operations
### Arithmetic Operations
"""

# ╔═╡ bb28d91f-3faf-4a22-b8fa-b8cb602848d7
md"""
### Comparison Operations
"""

# ╔═╡ 2ba143c4-3360-4a5b-a93d-cdb9d7cfa991
sum = d + c

# ╔═╡ 2c85dd15-405e-4baa-86f9-4c0d83285186
println("Sum: ", sum)

# ╔═╡ d54c512a-e60e-414d-84bd-023a3c1e4872
quotient = c / d

# ╔═╡ aa85ba72-0a6c-41ab-b1af-137104c704b9
println("Quotient: ", quotient)

# ╔═╡ 78d16e17-a1f1-49b5-9e7e-f091474eb546
difference = c - d

# ╔═╡ d0d64bc7-e133-47a7-a043-2e1f3690aa17
println("Difference: ", difference)

# ╔═╡ cdfdb78d-2614-4c39-94be-92d72edc9639
product = c * d

# ╔═╡ c33e03a5-1db5-49b3-8dc3-608cf2fdeb76
println("Product: ", product)

# ╔═╡ da8e805a-3ff4-4569-99b1-94b904f3ab52
a = 2

# ╔═╡ 12ca2ee3-f7aa-4a4b-af11-97e57cbaa8a4
b = 3

# ╔═╡ eb2ea415-6f2d-48e0-ad51-3090e58457cc
println("a < b: ", a < b)

# ╔═╡ 54eb2484-318f-4442-a392-9b60b027e33f
println("a <= b: ", a <= b)

# ╔═╡ ecaff4d6-7492-4e65-b221-cd3852a1bb32
println("a == b: ", a == b)

# ╔═╡ 443bfdbf-1aa4-491b-8a99-b1e499326458
println("a >= b: ", a >= b)

# ╔═╡ 57bf54a6-ae7c-4e65-8f87-8b1babcf8293
println("a > b: ", a > b)

# ╔═╡ 43ddd238-5ba4-48ee-833f-1cfbab73acb1
md"""
### Logical Operations
"""

# ╔═╡ 749fdbcc-941f-499b-81fd-f6e4dfcbcac9
flag1 = false

# ╔═╡ 4987d858-8295-4b25-bbcc-0595baad8317
flag2 = true

# ╔═╡ c20f712e-20d0-499c-b5ee-1ea98363f24e
not_result = !flag1

# ╔═╡ 2dbecac3-b2d2-4fb2-ae10-13d92f1db80d
println("NOT result: ", not_result)

# ╔═╡ b2f46fc0-25ec-43ff-a218-fd25c3cb5c85
and_result = flag1 && flag2

# ╔═╡ 07c0acb4-f424-430a-b714-c3451ca45d57
println("AND result: ", and_result)

# ╔═╡ bba50ff6-adb9-4dda-b3ab-c5205d4e3d51
or_result = flag1 || flag2

# ╔═╡ fa8a22a8-aedf-4ce9-9b3a-9c4134f3f6ec
println("OR result: ", or_result)

# ╔═╡ b8e5710f-70e1-4c22-bc72-b261dc8a2c99
println("flag1 && flag2: ", flag1 && flag2)

# ╔═╡ 53ce9fb0-ed1c-4397-86cf-9bfb46544da8
println("flag1 || flag2: ", flag1 || flag2)

# ╔═╡ 9252b9be-b54d-4bd9-a7df-33d4effb5093
println("!flag1: ", !flag1)

# ╔═╡ 41aa69c0-d80e-4953-af1d-3ac39090fee6
md"""
## Working with Strings
### String Operations
"""

# ╔═╡ cf01114c-4740-4956-84e7-5759f137b0e9
str1 = "Hello"

# ╔═╡ 90991c6d-eca3-4565-874d-888e0481f1d4
str2 = "World"

# ╔═╡ 3382461a-ef05-4929-8f72-f4da54d52dec
greeting = str1 * ", " * str2 * "!"

# ╔═╡ a09aaf42-f7ad-4949-9b90-7db8aff3920f
println(greeting)

# ╔═╡ e718a841-c605-43cf-8e10-aa645df44a07
length_of_greeting = length(greeting)

# ╔═╡ 4951f5c6-ce96-4517-9103-0f219d9c0ba2
substring = greeting[1:5]

# ╔═╡ cb014c40-ea27-44ab-93b6-7ca4d3193bda
println("Greeting: ", greeting)

# ╔═╡ f5dfffbd-2fc5-42f0-9b57-fedd58542b21
println("Length of greeting: ", length_of_greeting)

# ╔═╡ bc6a8c49-e5f0-4288-bcae-1a818387db8f
println("Substring: ", substring)

# ╔═╡ 54c66f15-d0de-4344-a7b7-5aa70fed32e1
md"""
## Type Conversion and Checking
### Type Conversion
"""

# ╔═╡ d74880ec-89f9-401d-ac82-a942525ab274
num_str = "123"

# ╔═╡ 37354374-e737-4f45-a181-d8672ea09984
num = parse(Int, num_str)

# ╔═╡ 615ff1c9-78ed-400c-be2a-cff6426765eb
float_num = 3.14

# ╔═╡ 45dd4596-2dac-4913-8f65-3122cc459368
int_num = round(Int, float_num)

# ╔═╡ 767fde46-61b9-4025-b3b0-780d2b36e599
println("String to Int: ", num)

# ╔═╡ fad39cc8-62b4-4dd6-bc82-dbaa3c24df42
println("Float to Int: ", int_num)

# ╔═╡ d4e09f09-724d-458f-9337-30bcd1b19e30
md"""
### Type Checking
"""

# ╔═╡ aa0288bf-a85c-4670-b6ea-e475a4b26192
z = "Hello"

# ╔═╡ 3c6c9492-79b3-4d94-8abe-9d11a721d19c
println("Type of z: ", typeof(z))

# ╔═╡ 8b6e92ec-c9db-45f8-b16d-c553c9c7d497
md"""
## Conclusion
In this chapter, we covered:
- Basic data types: integers, floating-point numbers, strings, and booleans.
- Collections: arrays, tuples, dictionaries, and sets.
- Basic operations: arithmetic, comparison, and logical operations.
- Working with strings.
- Type conversion and checking.

Next, we will explore control flow in Julia.

## Exercises
Try these exercises to reinforce your understanding:
1. Create an array of your favorite numbers and perform basic operations on it.
2. Define a dictionary with the names and ages of your friends, and practice adding and removing entries.
3. Write a function that takes a string and returns the number of vowels in it.
"""

# ╔═╡ c296df13-1b42-4bdd-a970-5f16a2d7cb98
md"""
# Control Flow

## Conditional Statements
Conditional statements allow you to execute code blocks based on certain conditions.

### if, else, elseif
"""

# ╔═╡ 64abf742-84d0-43c7-8639-7d09293f7fc7
println("Type of x: ", typeof(x))

# ╔═╡ a25d7095-d79c-4108-a141-be02e29fa091
if x > 5
    println("x is greater than 5")
# Otherwise, execute this block
else
    println("x is not greater than 5")
end

# ╔═╡ 63d8f467-525e-4355-b625-ad2339b6e029
addition = x + y

# ╔═╡ 90b4e3b3-2b26-4d4a-9240-e929e35da813
println("Addition: ", addition)

# ╔═╡ 18bac4a0-fd16-4c78-8537-1fa32c8e355c
subtraction = x - y

# ╔═╡ a6e8c436-0969-479a-8572-5d510fa51095
println("Subtraction: ", subtraction)

# ╔═╡ 8004beb7-859c-4cec-8529-a7e875f9723b
multiplication = x * y

# ╔═╡ 8563edb4-1e24-411e-adc3-bf2d100ccc43
println("Multiplication: ", multiplication)

# ╔═╡ 8c2cc13b-dbfa-48ee-a6a3-90f23d50b3c1
division = x / y

# ╔═╡ f571b12a-4fff-4b07-9032-e96eaed35862
println("Division: ", division)

# ╔═╡ 1df47f41-6972-43d7-8d17-7fd2456f50d4
println("Type of y: ", typeof(y))

# ╔═╡ 5cebff95-7f14-479c-a7b7-4e963cd1c7f4
if y > 10
    println("y is greater than 10")
# Check if y is between 5 and 10
elseif y > 5
    println("y is between 5 and 10")
# If none of the above conditions are met, execute this block
else
    println("y is 5 or less")
end

# ╔═╡ f0559319-5062-4aa8-a4c8-72075d37cc9a
md"""
## Loops
Loops allow you to execute a block of code multiple times.

### for Loop
The `for` loop is used to iterate over a range or collection.
"""

# ╔═╡ d9257ee1-99d3-4d24-90ef-d9fd6cc6fe64
# Using for loop to iterate over a range
for i in 1:5
    println("Iteration number: $i")
end

# ╔═╡ a748b339-ad79-479b-acc5-08c0b6544d98
# Using for loop to iterate over an array
fruits = ["apple", "banana", "cherry"]

# ╔═╡ 198ac30d-6baa-4fdf-a580-6eca5c932a50
for fruit in fruits
    println("I like $fruit")
end

# ╔═╡ a6a42e3f-7317-4d0f-9cf8-c4230c9d04f0
md"""
### while Loop
The `while` loop executes as long as a specified condition is true.
"""

# ╔═╡ 3e94111a-6d60-447a-b105-ece57270ae18
# Initialize a counter
count = 1

# Loop while the counter is less than or equal to 5

# ╔═╡ 8d73df01-f966-446c-a29c-286ad1ae744c
while count <= 5
    println("Count is: $count")
    count += 1  # Increment the counter
end

# ╔═╡ a10e4b97-02e5-4deb-a157-e31498640fac
md"""
## Control Flow Keywords
### break
The `break` keyword exits the innermost loop immediately.
"""

# ╔═╡ 5a31dcfe-aa83-48e1-8f8e-936375a13336
# Loop through numbers 1 to 10
for i in 1:10
    # Break the loop if i is 5
    if i == 5
        println("Breaking the loop at i = $i")
        break
    end
    println(i)
end

# ╔═╡ 4c2f30b8-6778-43ca-a26c-361b8df8a33e
md"""
### continue
The `continue` keyword skips the rest of the current loop iteration and moves to the next iteration.
"""

# ╔═╡ e316be55-e414-4a2f-a39c-c12546009203
# Loop through numbers 1 to 5
for i in 1:5
    # Skip the iteration if i is 3
    if i == 3
        println("Skipping i = $i")
        continue
    end
    println(i)
end

# ╔═╡ 4d00cb86-0a73-4c05-9af3-6740e218df29
md"""
## Exception Handling
Exception handling is used to handle errors gracefully in your program.

### try and catch
The `try` block lets you test a block of code for errors, while the `catch` block handles the error.
"""

# ╔═╡ 5155cb58-cbf5-49a6-90e4-60f19ba637e3
# Example of try-catch
try
    # Code that might throw an error
    result = 10 / 0
    println("Result: $result")
catch e
    # Code to handle the error
    println("Caught an exception: ", e)
end

# ╔═╡ 3dd72076-062e-4e8a-b9a3-37ebf96e5fd6
md"""
### finally
The `finally` block contains code that will run no matter what, after the try and catch blocks.
"""

# ╔═╡ 96197295-d975-44cf-926d-ff50a15dc21d
# Example of try-catch-finally
try
    # Code that might throw an error
    open("non_existent_file.txt", "r")
catch e
    # Code to handle the error
    println("Caught an exception: ", e)
finally
    # Code that will run no matter what
    println("This is the finally block, it always executes.")
end

# ╔═╡ 6d5cf879-2c73-4114-8eb0-5c90beacf78a
md"""
## Conclusion
In this chapter, we covered:
- Conditional statements (`if`, `else`, `elseif`).
- Loops (`for`, `while`).
- Control flow keywords (`break`, `continue`).
- Exception handling with `try`, `catch`, and `finally`.

Next, we will explore functions in Julia.

## Exercises
Try these exercises to reinforce your understanding:
1. Write a function that prints "Even" or "Odd" for numbers 1 to 10 using a `for` loop and conditional statements.
2. Create a `while` loop that prints numbers from 1 to 10 but skips multiples of 3.
3. Write a program that attempts to read a non-existent file and handles the exception by printing an error message.
"""

# ╔═╡ 1f0d2593-4880-4e33-9fb6-67c99f1108fc
md"""
# Functions

## Defining Functions
Functions in Julia are defined using the `function` keyword or with a shorter syntax using the arrow (`->`) notation.

### Using the `function` Keyword
"""

# ╔═╡ 8ba794ae-f06a-41f6-be98-69482dad9630
begin
	# Define a function to add two numbers
	function add(x, y)
	    return x + y
	end
	
	# Call the function with arguments 3 and 4
	result = add(3, 4)
	println("Sum: ", result)
end

# ╔═╡ 74f5c66f-5043-4357-bc13-5b11fc71e822
md"""
### Using the Arrow Notation
"""

# ╔═╡ 71689561-ce3a-4a29-a82b-6d5a1158fad2
# Define a function to multiply two numbers using arrow notation
multiply = (x, y) -> x * y

# Call the function with arguments 3 and 4

# ╔═╡ 693f4a51-7284-42b6-a277-c8012fbf228b
result2 = multiply(3, 4)

# ╔═╡ 87e435af-90dc-4503-b624-b96e4cb25f8d
println("Product: ", result2)

# ╔═╡ 034d99a2-c4b5-4de0-9cdc-2c63d7d81d12
md"""
## Function Arguments
Functions in Julia can have various types of arguments: positional, keyword, and default arguments.

### Positional Arguments
"""

# ╔═╡ 2bc8d760-1933-45ae-b744-5ebe550ed14e
# Define a function with positional arguments
function greet(name)
    println("Hello, $name !")
end

# Call the function with a positional argument

# ╔═╡ 2321ef43-f223-4ec7-8090-5b2cef8a5d5f
greet("Alice")

# ╔═╡ 6c7a9196-6d69-4174-aff1-5dbd3fe95f59
md"""
### Keyword Arguments
Keyword arguments allow you to specify arguments by name.
"""

# ╔═╡ 70e15d68-d30d-4799-9977-0f27dedc5b7a
# Define a function with keyword arguments
function describe_person(name; age=30, city="Unknown")
    println("$name is $age years old and lives in $city.")
end

# Call the function with keyword arguments

# ╔═╡ 7e863675-e573-4a4f-b368-2c68656a82e6
describe_person("Bob", age=25, city="New York")

# ╔═╡ 543ef5fe-08b9-4d44-9273-1ceaf61a2aad
md"""
### Default Arguments
You can provide default values for function arguments.
"""

# ╔═╡ 11d23415-743b-4b29-9d93-4f4875ece7af
# Define a function with a default argument
function increment(x, step=1)
    return x + step
end

# Call the function without the default argument

# ╔═╡ be6ab169-3e9d-4c5e-a07f-dbd127dafa43
println("Incremented value: ", increment(5))

# Call the function with the default argument

# ╔═╡ 293dea42-a22d-4cf3-bbe6-69764650dcde
println("Incremented value with step 2: ", increment(5, 2))

# ╔═╡ 398fa550-169e-4d1c-beb6-6a3c923b36b6
md"""
## Return Values
Functions in Julia return the last evaluated expression. You can also use the `return` keyword explicitly.
"""

# ╔═╡ b0685887-e26a-4d80-ae2b-2768c04b04e3
# Define a function to find the maximum of two numbers
function max_value(a, b)
    if a > b
        return a
    else
        return b
    end
end

# Call the function and print the result

# ╔═╡ 0be8790d-b223-45c3-972b-fc30d4e0fc36
println("Max value: ", max_value(10, 20))

# ╔═╡ 1982e286-dfe4-4d2a-8383-ffcbe63c5850
md"""
## Anonymous Functions
Anonymous functions are functions without a name. They are useful for short, one-time use functions.
"""

# ╔═╡ 008de3dc-65b4-49bb-8aa9-804326a3ae43
# Define an anonymous function to square a number
square = x -> x^2

# Call the anonymous function

# ╔═╡ cf61a724-44f8-4b19-9013-9dc38a5ac9ad
println("Square of 4: ", square(4))

# ╔═╡ 1b28cb8a-ca3b-42d3-97e2-1746a643013a
md"""
## Higher-Order Functions
Higher-order functions are functions that take other functions as arguments or return functions.

### Passing Functions as Arguments
"""

# ╔═╡ 6fac9ecc-e7d2-4937-bda2-0922954d29a5
# Define a function that applies another function to an array
function apply_function(arr, func)
    return [func(x) for x in arr]
end

# Define a simple function to double a number

# ╔═╡ 98c1b10b-6b74-4826-8d56-49fbcc48851d
double = x -> x * 2

# Apply the function to an array

# ╔═╡ 25c63aff-36a8-472f-9ff6-272f51fa4eb2
result3 = apply_function([1, 2, 3, 4], double)

# ╔═╡ cb85186e-2e83-4d21-ade1-86483455ccf1
println("Doubled array: ", result3)

# ╔═╡ 3a4e7414-f3d8-40b9-98bb-6368b23c5652
md"""
### Returning Functions
"""

# ╔═╡ ee8ed91a-6406-49f4-9643-8911fa62b176
# Define a function that returns another function
function make_multiplier(factor)
    return x -> x * factor
end

# Create a multiplier function

# ╔═╡ dcb7ffff-7177-44b5-bdbc-211e4e3bbd6f
times_three = make_multiplier(3)

# Use the returned function

# ╔═╡ deb9e58d-bf2d-4b2c-94f0-449963c32ec9
println("3 times 5: ", times_three(5))

# ╔═╡ 4c281ace-94ac-4327-8f1f-2c427ec8602e
md"""
## Broadcasting Functions
Broadcasting allows you to apply a function to each element of an array or collection.
"""

# ╔═╡ 1a7770ce-4a78-4681-8bbc-09140e0d474b
begin
	# Define a simple function to increment a number
	inc = x -> x + 1
	
	# Apply the function to each element of an array using broadcasting
	arr = [1, 2, 3, 4, 5]
	result4 = inc.(arr)
	println("Incremented array: ", result4)
end

# ╔═╡ b22fe2ad-7e6e-4203-9b85-2a4c19cc13c7
md"""
## Conclusion
In this chapter, we covered:
- Defining functions using the `function` keyword and arrow notation.
- Function arguments: positional, keyword, and default arguments.
- Return values.
- Anonymous functions.
- Higher-order functions: passing functions as arguments and returning functions.
- Broadcasting functions.

Next, we will explore modules and packages in Julia.

## Exercises
Try these exercises to reinforce your understanding:
1. Write a function that calculates the factorial of a number.
2. Define a function that takes a list of numbers and returns a new list with each number squared.
3. Create a higher-order function that takes a function and a number, and returns the result of applying the function three times to the number.
4. Use broadcasting to apply a custom function to each element in an array.
"""


# ╔═╡ cc984231-a321-420a-9475-b310c234a98e
# ╠═╡ disabled = true
#=╠═╡
y = 3
  ╠═╡ =#

# ╔═╡ 6e69004e-75c5-4ccf-a8f5-0e4d6c9371d0
# ╠═╡ disabled = true
#=╠═╡
x = 0.1
  ╠═╡ =#

# ╔═╡ 36970e50-9835-45f8-8e5a-a969a9efbd6d
# Example of if-elseif-else statement
y = 7

# Check if y is greater than 10

# ╔═╡ 87441cbb-065d-4f89-a809-99867a2e6a65
# Example of if-else statement
x = 10

# If x is greater than 5, execute this block

# ╔═╡ Cell order:
# ╠═7fe2b194-3e3f-4777-801f-64f92538b112
# ╠═47e3de6b-bb7f-4c6d-ad3f-752d00ce4487
# ╠═45cee26f-2159-4fe3-993c-d59592ec73fe
# ╠═47c9979f-176f-4640-b589-17bb3cf1c462
# ╠═59a3876e-7ae9-46fd-a02e-9d654dcec678
# ╠═c6b46091-561b-4beb-a932-3259c70fcadf
# ╠═f69ab54b-bf2d-433a-9556-45e75a2fa296
# ╠═8577c7e5-8f63-462b-b679-ec65c8fba515
# ╠═c723a21f-4b74-4d0e-ae66-e07e2c32e1af
# ╠═c5892521-57a7-4b36-a774-eaa468b687c9
# ╠═5db1515a-2f35-4aa1-ba19-789b92738dfe
# ╠═80cac24d-9396-4b56-8d11-809a105e1ec7
# ╠═8872756c-5f0d-4b18-97a1-6874bbe9517a
# ╠═e20b251c-8742-49f8-b87f-aa998a267d5d
# ╠═08b81b91-ba78-4ef2-b6c6-09f37e721ffe
# ╠═e6752fc0-e8e0-45b4-b2a3-a50a7b51b8d4
# ╠═499e3493-7656-4c3d-acc5-4a8560687c81
# ╠═44bdf237-04ea-4ac7-adf6-f2d790c90dc6
# ╠═195ebef7-4cf3-41d3-bb77-ece51d966b7a
# ╠═60c85c32-2938-469c-a964-d6c1b3f4253c
# ╠═89e96959-8d7b-4e2c-85ac-3104369d2343
# ╠═c84446e7-c52c-459c-8d2c-693a80238c30
# ╠═494687b1-3720-4a9c-baf4-5e7207c5432e
# ╠═add246f6-41f8-4396-aac0-981be46adbf5
# ╠═a0346cc8-e917-438a-8e5c-166f9183f9c7
# ╠═844fa477-8bfa-49ef-8593-fdea123038be
# ╠═2edfe9e2-62b1-4f94-b91e-31d30136cee5
# ╠═906815f3-3f45-4860-8079-b5e81da1bf02
# ╠═7f0777ac-9fd4-44c0-91ca-1dcacf9767bf
# ╠═879bb07a-7dfb-4e13-95f1-c2bee0ce0041
# ╠═9454aa74-7054-4914-a427-6ea29ce1f65b
# ╠═61b17f4f-babf-4232-b175-17ef3437e8fa
# ╠═9d65a19b-9830-4910-9d95-46285b6dc082
# ╠═a3ef7ef4-8fef-48e6-9bfb-2e682ffca924
# ╠═5c14fd5b-7bab-4621-b141-107745f9fe64
# ╠═28fad2c2-1162-4904-a594-2431dbda28ce
# ╠═c405c5a7-f6a6-4c6c-b567-e25351fdf6fd
# ╠═6768d246-bc1a-4c5f-80ad-a19553a87bcf
# ╠═eec2c842-e90d-490b-94eb-f92906b97029
# ╠═8a90c6ed-92fa-45cf-a0a6-59b87d25d4a5
# ╠═cf260593-f495-4664-a2b6-80ca99cbe5bb
# ╠═bb28d91f-3faf-4a22-b8fa-b8cb602848d7
# ╠═2ba143c4-3360-4a5b-a93d-cdb9d7cfa991
# ╠═2c85dd15-405e-4baa-86f9-4c0d83285186
# ╠═d54c512a-e60e-414d-84bd-023a3c1e4872
# ╠═aa85ba72-0a6c-41ab-b1af-137104c704b9
# ╠═78d16e17-a1f1-49b5-9e7e-f091474eb546
# ╠═d0d64bc7-e133-47a7-a043-2e1f3690aa17
# ╠═cdfdb78d-2614-4c39-94be-92d72edc9639
# ╠═c33e03a5-1db5-49b3-8dc3-608cf2fdeb76
# ╠═da8e805a-3ff4-4569-99b1-94b904f3ab52
# ╠═12ca2ee3-f7aa-4a4b-af11-97e57cbaa8a4
# ╠═eb2ea415-6f2d-48e0-ad51-3090e58457cc
# ╠═54eb2484-318f-4442-a392-9b60b027e33f
# ╠═ecaff4d6-7492-4e65-b221-cd3852a1bb32
# ╠═443bfdbf-1aa4-491b-8a99-b1e499326458
# ╠═57bf54a6-ae7c-4e65-8f87-8b1babcf8293
# ╠═43ddd238-5ba4-48ee-833f-1cfbab73acb1
# ╠═749fdbcc-941f-499b-81fd-f6e4dfcbcac9
# ╠═4987d858-8295-4b25-bbcc-0595baad8317
# ╠═c20f712e-20d0-499c-b5ee-1ea98363f24e
# ╠═2dbecac3-b2d2-4fb2-ae10-13d92f1db80d
# ╠═b2f46fc0-25ec-43ff-a218-fd25c3cb5c85
# ╠═07c0acb4-f424-430a-b714-c3451ca45d57
# ╠═bba50ff6-adb9-4dda-b3ab-c5205d4e3d51
# ╠═fa8a22a8-aedf-4ce9-9b3a-9c4134f3f6ec
# ╠═b8e5710f-70e1-4c22-bc72-b261dc8a2c99
# ╠═53ce9fb0-ed1c-4397-86cf-9bfb46544da8
# ╠═9252b9be-b54d-4bd9-a7df-33d4effb5093
# ╠═41aa69c0-d80e-4953-af1d-3ac39090fee6
# ╠═cf01114c-4740-4956-84e7-5759f137b0e9
# ╠═90991c6d-eca3-4565-874d-888e0481f1d4
# ╠═3382461a-ef05-4929-8f72-f4da54d52dec
# ╠═a09aaf42-f7ad-4949-9b90-7db8aff3920f
# ╠═e718a841-c605-43cf-8e10-aa645df44a07
# ╠═4951f5c6-ce96-4517-9103-0f219d9c0ba2
# ╠═cb014c40-ea27-44ab-93b6-7ca4d3193bda
# ╠═f5dfffbd-2fc5-42f0-9b57-fedd58542b21
# ╠═bc6a8c49-e5f0-4288-bcae-1a818387db8f
# ╠═54c66f15-d0de-4344-a7b7-5aa70fed32e1
# ╠═d74880ec-89f9-401d-ac82-a942525ab274
# ╠═37354374-e737-4f45-a181-d8672ea09984
# ╠═615ff1c9-78ed-400c-be2a-cff6426765eb
# ╠═45dd4596-2dac-4913-8f65-3122cc459368
# ╠═767fde46-61b9-4025-b3b0-780d2b36e599
# ╠═fad39cc8-62b4-4dd6-bc82-dbaa3c24df42
# ╠═d4e09f09-724d-458f-9337-30bcd1b19e30
# ╠═6e69004e-75c5-4ccf-a8f5-0e4d6c9371d0
# ╠═cc984231-a321-420a-9475-b310c234a98e
# ╠═63d8f467-525e-4355-b625-ad2339b6e029
# ╠═90b4e3b3-2b26-4d4a-9240-e929e35da813
# ╠═18bac4a0-fd16-4c78-8537-1fa32c8e355c
# ╠═a6e8c436-0969-479a-8572-5d510fa51095
# ╠═8004beb7-859c-4cec-8529-a7e875f9723b
# ╠═8563edb4-1e24-411e-adc3-bf2d100ccc43
# ╠═8c2cc13b-dbfa-48ee-a6a3-90f23d50b3c1
# ╠═f571b12a-4fff-4b07-9032-e96eaed35862
# ╠═aa0288bf-a85c-4670-b6ea-e475a4b26192
# ╠═64abf742-84d0-43c7-8639-7d09293f7fc7
# ╠═1df47f41-6972-43d7-8d17-7fd2456f50d4
# ╠═3c6c9492-79b3-4d94-8abe-9d11a721d19c
# ╠═8b6e92ec-c9db-45f8-b16d-c553c9c7d497
# ╠═c296df13-1b42-4bdd-a970-5f16a2d7cb98
# ╠═87441cbb-065d-4f89-a809-99867a2e6a65
# ╠═a25d7095-d79c-4108-a141-be02e29fa091
# ╠═36970e50-9835-45f8-8e5a-a969a9efbd6d
# ╠═5cebff95-7f14-479c-a7b7-4e963cd1c7f4
# ╠═f0559319-5062-4aa8-a4c8-72075d37cc9a
# ╠═d9257ee1-99d3-4d24-90ef-d9fd6cc6fe64
# ╠═a748b339-ad79-479b-acc5-08c0b6544d98
# ╠═198ac30d-6baa-4fdf-a580-6eca5c932a50
# ╠═a6a42e3f-7317-4d0f-9cf8-c4230c9d04f0
# ╠═3e94111a-6d60-447a-b105-ece57270ae18
# ╠═8d73df01-f966-446c-a29c-286ad1ae744c
# ╠═a10e4b97-02e5-4deb-a157-e31498640fac
# ╠═5a31dcfe-aa83-48e1-8f8e-936375a13336
# ╠═4c2f30b8-6778-43ca-a26c-361b8df8a33e
# ╠═e316be55-e414-4a2f-a39c-c12546009203
# ╠═4d00cb86-0a73-4c05-9af3-6740e218df29
# ╠═5155cb58-cbf5-49a6-90e4-60f19ba637e3
# ╠═3dd72076-062e-4e8a-b9a3-37ebf96e5fd6
# ╠═96197295-d975-44cf-926d-ff50a15dc21d
# ╠═6d5cf879-2c73-4114-8eb0-5c90beacf78a
# ╠═1f0d2593-4880-4e33-9fb6-67c99f1108fc
# ╠═8ba794ae-f06a-41f6-be98-69482dad9630
# ╠═74f5c66f-5043-4357-bc13-5b11fc71e822
# ╠═71689561-ce3a-4a29-a82b-6d5a1158fad2
# ╠═693f4a51-7284-42b6-a277-c8012fbf228b
# ╠═87e435af-90dc-4503-b624-b96e4cb25f8d
# ╠═034d99a2-c4b5-4de0-9cdc-2c63d7d81d12
# ╠═2bc8d760-1933-45ae-b744-5ebe550ed14e
# ╠═2321ef43-f223-4ec7-8090-5b2cef8a5d5f
# ╠═6c7a9196-6d69-4174-aff1-5dbd3fe95f59
# ╠═70e15d68-d30d-4799-9977-0f27dedc5b7a
# ╠═7e863675-e573-4a4f-b368-2c68656a82e6
# ╠═543ef5fe-08b9-4d44-9273-1ceaf61a2aad
# ╠═11d23415-743b-4b29-9d93-4f4875ece7af
# ╠═be6ab169-3e9d-4c5e-a07f-dbd127dafa43
# ╠═293dea42-a22d-4cf3-bbe6-69764650dcde
# ╠═398fa550-169e-4d1c-beb6-6a3c923b36b6
# ╠═b0685887-e26a-4d80-ae2b-2768c04b04e3
# ╠═0be8790d-b223-45c3-972b-fc30d4e0fc36
# ╠═1982e286-dfe4-4d2a-8383-ffcbe63c5850
# ╠═008de3dc-65b4-49bb-8aa9-804326a3ae43
# ╠═cf61a724-44f8-4b19-9013-9dc38a5ac9ad
# ╠═1b28cb8a-ca3b-42d3-97e2-1746a643013a
# ╠═6fac9ecc-e7d2-4937-bda2-0922954d29a5
# ╠═98c1b10b-6b74-4826-8d56-49fbcc48851d
# ╠═25c63aff-36a8-472f-9ff6-272f51fa4eb2
# ╠═cb85186e-2e83-4d21-ade1-86483455ccf1
# ╠═3a4e7414-f3d8-40b9-98bb-6368b23c5652
# ╠═ee8ed91a-6406-49f4-9643-8911fa62b176
# ╠═dcb7ffff-7177-44b5-bdbc-211e4e3bbd6f
# ╠═deb9e58d-bf2d-4b2c-94f0-449963c32ec9
# ╠═4c281ace-94ac-4327-8f1f-2c427ec8602e
# ╠═1a7770ce-4a78-4681-8bbc-09140e0d474b
# ╠═b22fe2ad-7e6e-4203-9b85-2a4c19cc13c7
