### A Pluto.jl notebook ###
# v0.19.42

using Markdown
using InteractiveUtils

# ╔═╡ 6477428c-90c8-4836-a91b-d78ace44d6d3
using Pkg

# ╔═╡ 82ac0c8c-cfbf-451f-99b4-47470589ab0c
Pkg.add("JSON")

# ╔═╡ 0440329a-e7b5-4444-8dd5-d371eeb0886b
# Add a package
Pkg.add("ExamplePackage")

# Remove a package

# ╔═╡ 535a04fc-0ecb-467f-b9e3-eb78131c10e5
Pkg.add("DataFrames")

# ╔═╡ 7072b4ca-f05e-4ba7-9d9f-9bab23a24e76
Pkg.add("Plots")

# ╔═╡ becfab58-2aab-43fb-9536-b8ed7f69a77a
Pkg.add("Flux")

# ╔═╡ 2ee4c019-a6fe-4ab7-802c-4bbefaa8143b
Pkg.add("DifferentialEquations")

# ╔═╡ 09d451da-a05d-4dcf-9913-7791397733a2
Pkg.add("JuMP")

# ╔═╡ b4352d37-e856-4878-86dd-9be2c4994c46
Pkg.add("GLPK")  # Linear programming solver

# ╔═╡ 41fe0d3e-4f57-4612-b38f-831a1b562182
Pkg.add("Makie")

# ╔═╡ b3eb1087-c9e9-4d6c-8eca-d21203099a17
Pkg.add("GLMakie")

# ╔═╡ 4abe70b1-ba14-4a55-8e59-1f1384f80a9e
Pkg.add("CairoMakie")  # Alternative backend

# ╔═╡ f2ec9dd4-063b-434f-a5ff-755e5dbbb451
Pkg.add("CSV")

# ╔═╡ 707f5723-810e-4b97-b8a6-ec4f22c65d68
Pkg.add("DataFrames")

# ╔═╡ 22501fce-8a99-43a3-b63f-f977de429cbf
Pkg.add("GLMakie")

# ╔═╡ edbd9af1-344a-4f7d-836e-bdfd9735a380
Pkg.add("GLM")

# ╔═╡ 59dc0adb-9bbe-42bb-a48a-3ad1566b7a9e
# Use the module MyModule
using .MyModule

# Call the exported function

# ╔═╡ 141bc9af-a525-49df-946c-4a70c5034317
begin
	# Load the JSON package
	using JSON
	
	# Parse a JSON string
	json_str = """{"name": "Alice", "age": 30}"""
	data = JSON.parse(json_str)
	println("Name: ", data["name"])
	println("Age: ", data["age"])
end

# ╔═╡ 8e057248-f790-4195-acb1-8154c1084f9a
# Using the Dates package
using Dates

# Current date and time

# ╔═╡ 73f7064d-0a14-4bc3-a7c3-6e3da7ac1ca7
using Plots

# Create a simple plot

# ╔═╡ 5f47e578-3afc-49a9-b504-f3e55cd67b7f
using Flux

# Define a simple neural network

# ╔═╡ 668ade95-3ac6-4e4a-a37f-b103780569db
using Flux: params

# Train the model

# ╔═╡ c58d41a8-a144-4a75-a44a-5dbc4c8f1bea
using DifferentialEquations

# Define a simple differential equation

# ╔═╡ 6383b85a-14fa-4fad-bcca-575f29bb7b4a
using JuMP, GLPK

# Define an optimization model

# ╔═╡ ff0ae183-af4e-4907-a74c-23617ab91edc
using CSV

# ╔═╡ edb59c93-a820-466a-8f79-7907d38d420e
using DataFrames

# ╔═╡ 1326d734-f395-4d50-a39b-aa962da64caa
using Statistics

# Calculate mean, median, and standard deviation

# ╔═╡ 9a67ab0e-c342-43de-859d-056ec10e829b
using GLM

# Create a DataFrame for regression

# ╔═╡ a86aa616-b5d7-4456-baf5-f744a5ffb729
md"""
# Modules and Packages

## Creating and Using Modules
Modules in Julia help organize code into namespaces. This is useful for structuring larger programs and avoiding name conflicts.

### Creating a Module
"""

# ╔═╡ 358f5c2a-1e87-4893-8956-d8126a262301
# ╠═╡ disabled = true
#=╠═╡
# Define a module named MyModule
module MyModule

# Exported function
export greet

# A simple function to greet a person
greet(name) = println("Hello, $name!")

# Internal function, not exported
goodbye(name) = println("Goodbye, $name")

end
  ╠═╡ =#

# ╔═╡ bc9604ee-e14f-44f1-9ea7-414be1422ccf
md"""
### Using a Module
"""

# ╔═╡ 1bc8725d-5c5b-4b16-9f2a-b7afdce8ed46
greet("Alice")

# Note: Trying to call the internal function will result in an error
# goodbye("Alice")  # This will throw an error

# ╔═╡ 9d62daa3-5633-49f7-9881-258c107e0219
md"""
## Loading Packages
Julia uses packages to extend its functionality. You can load and use packages with `using` and `import`.

### Installing Packages
Packages can be installed using the Julia package manager `Pkg`.
"""

# ╔═╡ 7383b226-5083-4b88-b273-26ee1bdea503
# ╠═╡ disabled = true
#=╠═╡
using Pkg
  ╠═╡ =#

# ╔═╡ aa14c313-0579-4671-bd4e-5be3410420f2
Pkg.status()  # Check the status of your packages and registry

# ╔═╡ ef6cfd3a-5c79-421b-8898-614c0da89daf
# ╠═╡ disabled = true
#=╠═╡
# Install the JSON package
using Pkg
  ╠═╡ =#

# ╔═╡ d625bd9c-adee-49eb-91dd-e8b262e8e9d5
md"""
### Using Packages
"""

# ╔═╡ c2080c12-9967-4536-87d0-b2268bfbc568
md"""
### Import vs Using
- `using` brings all exported symbols of a module into scope.
- `import` allows selective importing of specific functions or modules.
"""

# ╔═╡ 15e76176-1262-4018-aa37-9595ca0eeb17
current_time = now()

# ╔═╡ 9e7eef54-3f58-4d02-b3cb-0a6a96328338
println("Current time: ", current_time)

# Importing a specific function from Dates

# ╔═╡ 8901ac57-b6c9-47af-9702-1485248d1fbd
import Dates: Date

# Creating a specific date

# ╔═╡ 0e776066-32e0-4c85-8f00-a4b3d0eead93
specific_date = Date(2020, 1, 1)

# ╔═╡ 64e97077-176d-495e-baf3-ce04c25ebf0a
println("Specific date: ", specific_date)

# ╔═╡ b27401a7-e738-49e0-8c7d-e3988a428512
md"""
## Creating Your Own Package
Creating a package in Julia involves structuring your code properly and providing metadata.

### Package Structure
```plaintext
MyPackage/
├── Project.toml
├── src/
│   └── MyPackage.jl
```
"""

# ╔═╡ 1c8b1b68-3d2a-4608-af8c-e2b604b77760
md"""
### Example Package
1. Create a directory named `MyPackage`.
2. Inside `MyPackage`, create a `Project.toml` file with the following content:
   ```toml
   name = "MyPackage"
   uuid = "12345678-1234-5678-1234-567812345678"
   authors = ["Your Name <you@example.com>"]
   version = "0.1.0"
   ```
3. Create a `src` directory inside `MyPackage` and add a file named `MyPackage.jl` with the following content:
   ```julia
   module MyPackage

   export hello

   hello() = println("Hello from MyPackage!")

   end
   ```
4. To use your package, navigate to the directory containing `MyPackage` and run:
   ```julia
   using Pkg
   Pkg.activate(".")
   using MyPackage

   hello()
   ```
"""

# ╔═╡ 8038c3d9-79cc-4d3c-910e-a0d427339bb7
md"""
## Managing Packages with Pkg
### Adding and Removing Packages
"""

# ╔═╡ e46f7c0c-56be-4aec-a235-b77e12256431
Pkg.rm("ExamplePackage")

# ╔═╡ 40bfb495-1d1f-4ae9-9f90-4a62211eefb0
md"""
### Updating Packages
"""

# ╔═╡ 7f3fe0d5-b6cc-460f-9cda-51294a82f69d
# Update all installed packages
Pkg.update()

# ╔═╡ 8f72aa2a-73dd-4f30-a35d-9011af60f422
# Check the status of installed packages
Pkg.status()

# ╔═╡ 092514b0-0b1d-46d4-8234-9321b97c3998
md"""
## Important Julia Packages and Modules

### 1. DataFrames.jl
`DataFrames.jl` provides a data structure for storing and manipulating tabular data.
"""

# ╔═╡ c367c75b-d72d-43b7-a64c-c6ffb140cd09
# ╠═╡ disabled = true
#=╠═╡
using Pkg
  ╠═╡ =#

# ╔═╡ e8fdbde6-97bc-44bd-af06-508e7bdefb85
# ╠═╡ disabled = true
#=╠═╡
using DataFrames

# Create a DataFrame
  ╠═╡ =#

# ╔═╡ 675c1ad4-aea4-4c9f-8878-a839157d3c6c
# ╠═╡ disabled = true
#=╠═╡
df = DataFrame(Name=["Alice", "Bob", "Charlie"], Age=[25, 30, 35])
  ╠═╡ =#

# ╔═╡ f9283e79-7762-44ca-a278-86c1d1aed7a5
md"""
### 2. Plots.jl
`Plots.jl` is a powerful plotting package in Julia.
"""

# ╔═╡ d9c9215e-3f8d-47c2-93fa-c47e805bf505
# ╠═╡ disabled = true
#=╠═╡
using Pkg
  ╠═╡ =#

# ╔═╡ 31a130af-8101-437e-9c20-94b11fede07a
# ╠═╡ disabled = true
#=╠═╡
y = rand(10)
  ╠═╡ =#

# ╔═╡ c52c5e5c-c661-42dd-85bf-e9826d7c171f
md"""
### 3. Flux.jl
`Flux.jl` is a machine learning library for Julia.
"""

# ╔═╡ 2f01d835-0fca-4b20-a48b-7c885511c77d
# ╠═╡ disabled = true
#=╠═╡
using Pkg
  ╠═╡ =#

# ╔═╡ b1c19c54-e3fa-4599-934a-781421b7a0c8
# ╠═╡ disabled = true
#=╠═╡
model = Chain(
    Dense(2, 10, relu),
    Dense(10, 1)
)

# Generate some random data
  ╠═╡ =#

# ╔═╡ 946a76ef-a64f-4b71-9a55-2e6a2e16973e
X = rand(2, 100)

# ╔═╡ bad0d42a-2ff5-4b80-8dff-b2ba861817b6
opt = Descent(0.01)

# Import the `params` function

# ╔═╡ a5b99030-6405-4327-a50f-4cca05dc0fb2
println("Training completed")

# ╔═╡ 0ad1375d-b779-4169-b754-acdbf22f7d5b
md"""
### 4. DifferentialEquations.jl
`DifferentialEquations.jl` is a suite for solving differential equations.
"""

# ╔═╡ 4e488953-62f4-4039-808a-0eef468ddebe
# ╠═╡ disabled = true
#=╠═╡
using Pkg
  ╠═╡ =#

# ╔═╡ fd9a6b10-728b-40e7-93df-115983e7f8a7
function f(du, u, p, t)
    du .= 1.01 * u
end

# ╔═╡ 61b08e19-324d-47f5-b9c2-78d360ef3c41
u0 = [1.0]

# ╔═╡ 1cc8514c-fb02-491c-a12b-1e3a558e2aa9
tspan = (0.0, 1.0)

# ╔═╡ 0bd01c48-7778-466d-a391-1afd765a7acc
prob = ODEProblem(f, u0, tspan)

# ╔═╡ d8aff41a-1b54-4241-86d7-99589317d39f
sol = solve(prob)

# ╔═╡ fa7f4b33-fe3d-4286-8839-27b26e04c917
println(sol)

# ╔═╡

# ╔═╡ 980da0ac-ac7a-4da3-b6e3-be74c5f2f80e
md"""
### 5. JuMP.jl
`JuMP.jl` is used for mathematical optimization.
"""

# ╔═╡ dde07e21-30ad-4f44-9cd4-f0192ce8bf3a
# ╠═╡ disabled = true
#=╠═╡
using Pkg
  ╠═╡ =#

# ╔═╡ e098fd1b-fbdf-40b7-8035-f3133772849f
model = Model(GLPK.Optimizer)

# ╔═╡ a2bba286-1ce1-41b3-a918-00439fd23924
loss(x, y) = Flux.Losses.mse(model(x), y)

# Define the optimizer

# ╔═╡ 71d3d97e-b50c-47f7-8f64-7f5edb893092
optimize!(model)

# ╔═╡ 84b02e1e-697a-412a-9ba1-7344c268ed39
md"""
### Makie.jl
`Makie.jl`, a powerful package for creating high-performance, interactive, and extensible plotting in Julia.

#### Installation and Basic Usage
"""

# ╔═╡ 2c2c5871-385f-4da0-ad25-e15692ebb433
# ╠═╡ disabled = true
#=╠═╡
using Pkg
  ╠═╡ =#

# ╔═╡ 89206c60-dc52-46c1-9631-4a0acd732c3c
# ╠═╡ disabled = true
#=╠═╡
using Pkg
  ╠═╡ =#

# ╔═╡ de83e2b2-4e91-4c9f-b0fb-1b6d131372fb
ax = Axis(fig[1, 1], title="Sinusoidal Wave", xlabel="x", ylabel="sin(x)")

# Generate data

# ╔═╡ 9c95419a-1f78-4370-8db5-2e8b983c4de7
x2 = LinRange(0, 2pi, 100)

# ╔═╡ 359d0615-3339-4668-8fc3-da9b602efe44
y2 = sin.(x2)

# Plot the data

# ╔═╡ 33546055-a327-4e3e-9856-3fb6fe49dc90
lines!(ax, x2, y2, color=:blue, linewidth=2, label="sin(x)")

# Add a legend

# ╔═╡ b5ec6a93-eaad-449d-b94e-2d70b6b95c4a
Legend(fig[1, 2], ax, "Legend")

# Display the figure

# ╔═╡ 7e03e6ad-3783-402e-a7c7-30f83b61742c
fig

# ╔═╡ 4632e10e-644b-4b8f-8b4b-6b867cd6cea5
md"""
#### Creating Complex Plots
Makie.jl allows for the creation of complex plots with multiple subplots and interactive features.
"""

# ╔═╡ f00f2918-ac6c-402c-8c31-442012bdc29e
# ╠═╡ disabled = true
#=╠═╡
using Pkg
  ╠═╡ =#

# ╔═╡ 19b04c4d-0ad6-4d5f-882b-2a559e61b425


# ╔═╡ c17fd768-7c40-40dc-bddf-2e004283621e


# ╔═╡ f318ea1a-0a8d-4b71-856e-b72eae2b5cd9


# ╔═╡ 49046588-be06-4eb5-b93f-ee453d282b7b
md"""
## Conclusion
In this chapter, we covered:
- Creating and using modules.
- Loading and using packages.
- Importing specific functions.
- Creating your own package.
- Managing packages with Pkg.
- Important Julia packages and their usage.

Next, we will explore data structures and algorithms in Julia.

## Exercises
Try these exercises to reinforce your understanding:
1. Create a module with a function that calculates the area of a circle and use it in a separate script.
2. Install and use a package for plotting (e.g., Plots.jl) to create a simple plot.
3. Create a small package with two functions: one that converts temperatures from Celsius to Fahrenheit and another that converts from Fahrenheit to Celsius.
4. Use `DataFrames.jl` to create a DataFrame from some sample data and perform basic operations.
5. Use `JuMP.jl` to solve a simple optimization problem of your choice.
6. Use `Makie.jl` to create a complex plot with multiple subplots, including a line plot, scatter plot, and heatmap.
"""


# ╔═╡ 13b3a842-df5c-414e-9fda-dac349848f60
md"""
# Data Structures and Algorithms

## Overview
This chapter covers common data structures and algorithms in Julia. We will explore arrays, dictionaries, sets, stacks, queues, linked lists, and basic algorithms such as searching and sorting.
"""

# ╔═╡ 9bd8cda5-b65d-40aa-a91a-516a16de120f
md"""
## Arrays
Arrays are the most commonly used data structures in Julia. They store elements of the same type.

### Creating and Manipulating Arrays
"""

# ╔═╡ f89630d3-42a9-47c1-91c8-8c457ca7d0cb
# ╠═╡ disabled = true
#=╠═╡
# Define an array
arr = [1, 2, 3, 4, 5]

# Access elements by index
  ╠═╡ =#

# ╔═╡ 262245ea-c3f6-4569-aa81-1390f6c34bcc
md"""
## Dictionaries
Dictionaries store key-value pairs and provide efficient lookups.

### Creating and Manipulating Dictionaries
"""

# ╔═╡ f52fbca7-2e95-4e38-bceb-47d2d1a5d04d
begin
	# Define a dictionary
	dict = Dict("Alice" => 25, "Bob" => 30)
	
	# Access values by key
	println("Alice's age: ", dict["Alice"])
	
	# Modify values
	dict["Bob"] = 35
	println("Modified dictionary: ", dict)
	
	# Add key-value pairs
	dict["Charlie"] = 40
	println("Dictionary after addition: ", dict)
	
	# Remove key-value pairs
	delete!(dict, "Alice")
	println("Dictionary after deletion: ", dict)
end

# ╔═╡ 13f488e8-8934-44b0-82b9-1d9a5da6b432
md"""
## Sets
Sets store unique elements and provide efficient membership tests.

### Creating and Manipulating Sets
"""

# ╔═╡ 6315fad6-c800-4df1-8bb2-24a1fb658e98
# Define a set
s = Set([1, 2, 3, 3, 2, 1])

# Add elements

# ╔═╡ 40b287b5-bee4-474e-bc0d-3606e9e73b45
push!(s, 4)

# ╔═╡ 6e00ca4b-dd98-4d7f-a1a7-5619c1c49964
println("Set after push: ", s)

# Remove elements

# ╔═╡ 594adbb6-8eb1-4daf-84e2-6ee98e4f7b72
delete!(s, 2)

# ╔═╡ fc6e098b-441b-4dbd-8d1a-4703463a6a27
println("Set after delete: ", s)

# Check membership

# ╔═╡ 8211d6bd-82b6-4ebe-a893-9ecd89a4910b
println("Is 3 in the set? ", 3 in s)

# ╔═╡ d9514658-99f3-43ef-8e87-e002754d4855
md"""
## Stacks and Queues
Stacks and queues are data structures that follow specific orderings for adding and removing elements.

### Stack (LIFO)
"""

# ╔═╡ aef8593d-fbd7-4f0b-8e99-e63e47c64549
# Define a stack using an array
stack = Int[]

# Push elements onto the stack

# ╔═╡ d22f2ba5-2f81-4969-b21d-7fb38900b26f
push!(stack, 1)

# ╔═╡ fa9cde57-ae48-4df1-92e9-a155dde6ade9
push!(stack, 2)

# ╔═╡ 5ca65cc8-4f4a-4e99-9aa1-2dd5e48dbcab
push!(stack, 3)

# ╔═╡ 72844421-4766-41d2-8c82-e4cd372ca511
println("Stack after pushes: ", stack)

# Pop elements from the stack

# ╔═╡ 0f161765-e315-49b3-8312-a9a9dd0447bb
println("Popped element: ", pop!(stack))

# ╔═╡ 4fe2e78a-052f-48b9-95cb-d6554bf17236
println("Stack after pop: ", stack)

# ╔═╡ 6f394570-93e2-41e2-a506-1e1d122cb7d2
md"""
### Queue (FIFO)
"""

# ╔═╡ 42ea9a3d-2143-40e9-b0de-7e9129aaf35a
# Define a queue using an array
queue = Int[]

# Enqueue elements

# ╔═╡ 4ac50c65-b10e-4635-ad86-ba685c866c74
push!(queue, 1)

# ╔═╡ bc3d07a3-183d-490e-8720-6a9a21502165
push!(queue, 2)

# ╔═╡ c4ee6174-0d7e-442d-9c1e-611793ccb4a9
push!(queue, 3)

# ╔═╡ f887e923-6c69-416b-835f-faab7c932a0e
println("Queue after enqueues: ", queue)

# Dequeue elements

# ╔═╡ a04ba5a4-2c44-44b0-b28f-f4c126429251
println("Dequeued element: ", popfirst!(queue))

# ╔═╡ b6f2a0c2-817c-4aec-87c2-1e692234fc44
println("Queue after dequeue: ", queue)

# ╔═╡ 07cd3daf-0ff6-4023-a19d-46be67613e75
md"""
## Linked Lists
Linked lists are linear data structures where each element points to the next.

### Creating and Manipulating Linked Lists
"""

# ╔═╡ c2576236-5ad0-4861-80ec-7e4224d7c9a2
# Define a node
mutable struct Node
    value::Int
    next::Union{Nothing, Node}
end

# Create nodes

# ╔═╡ 49c17faa-690c-4803-b89d-a8be4c901c18
n1 = Node(1, nothing)

# ╔═╡ 39a1badf-4279-4c2d-b588-4015213d908b
n2 = Node(2, nothing)

# ╔═╡ 6be0db23-cba2-4fc4-bb48-03f7a547bfa5
n3 = Node(3, nothing)

# Link nodes

# ╔═╡ 5e7fb4ad-9288-4a24-be20-74631bb0ac0b
n1.next = n2

# ╔═╡ 84981b4e-42a7-44c1-abf3-876982f9286b
n2.next = n3

# Traverse the linked list

# ╔═╡ 03184183-e09d-423d-bd80-1ce57ff51a4a
current = n1

# ╔═╡ d7a74323-402d-4f5a-b769-7bcceeaf49a5
while current != nothing
    println("Node value: ", current.value)
    current = current.next
end

# ╔═╡ 88658f96-72bb-45e9-8d90-f3702608b179
md"""
## Basic Algorithms

### Searching Algorithms
#### Linear Search
"""

# ╔═╡ 610854c6-6705-4cac-9bfa-0bbf705dd8b5
# Define a linear search function
function linear_search(arr, target)
    for i in 1:length(arr)
        if arr[i] == target
            return i
        end
    end
    return -1  # Return -1 if the target is not found
end

# Test the linear search function

# ╔═╡ 1c0e464a-531a-4207-b623-524222424099
# ╠═╡ disabled = true
#=╠═╡
arr = [10, 20, 30, 40, 50]
  ╠═╡ =#

# ╔═╡ 41f899ab-5da7-4084-8a7e-0b01f93f5c4c
# ╠═╡ disabled = true
#=╠═╡
target = 30
  ╠═╡ =#

# ╔═╡ 8b74ddd1-3983-4a15-adcf-93d867eb85d1
# ╠═╡ disabled = true
#=╠═╡
index = linear_search(arr, target)
  ╠═╡ =#

# ╔═╡ e42d07f1-5c61-4e99-9474-70176270ff4b
md"""
#### Binary Search
Binary search requires the array to be sorted.
"""

# ╔═╡ 47b313ff-92e2-4567-9f96-4544165df5cc
# Define a binary search function
function binary_search(arr, target)
    low = 1
    high = length(arr)
    while low <= high
        mid = div(low + high, 2)
        if arr[mid] == target
            return mid
        elseif arr[mid] < target
            low = mid + 1
        else
            high = mid - 1
        end
    end
    return -1  # Return -1 if the target is not found
end

# Test the binary search function

# ╔═╡ cf421dfc-08cb-46da-bbd3-a9a485cae369
# ╠═╡ disabled = true
#=╠═╡
arr = [10, 20, 30, 40, 50]
  ╠═╡ =#

# ╔═╡ e6f792dc-1eef-46de-a625-73b15410c62c
target = 30

# ╔═╡ c5bf96f9-2daa-4199-a0bf-18c683610481
md"""
### Sorting Algorithms
#### Bubble Sort
"""

# ╔═╡ f1c0be7c-da55-4d8c-b9f3-120b9fcc9cf6
# Define a bubble sort function
function bubble_sort(arr)
    n = length(arr)
    for i in 1:n-1
        for j in 1:n-i
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]  # Swap elements
            end
        end
    end
    return arr
end

# Test the bubble sort function

# ╔═╡ cc0ebaf4-d9b3-4079-8fe7-2cbbda65a88e
# ╠═╡ disabled = true
#=╠═╡
arr = [64, 34, 25, 12, 22, 11, 90]
  ╠═╡ =#

# ╔═╡ 236b5c6c-9fa3-40ec-96da-8f50c62b62dd
# ╠═╡ disabled = true
#=╠═╡
sorted_arr = bubble_sort(arr)
  ╠═╡ =#

# ╔═╡ 7c628cc0-8051-4a14-b057-845434732e6f
md"""
#### Quick Sort
"""

# ╔═╡ a77a669e-cca3-44f6-b7e7-31e095404ce8
# Define a quick sort function
function quick_sort(arr)
    if length(arr) <= 1
        return arr
    end
    pivot = arr[end]
    left = [x for x in arr[1:end-1] if x <= pivot]
    right = [x for x in arr[1:end-1] if x > pivot]
    return [quick_sort(left)..., pivot, quick_sort(right)...]
end

# Test the quick sort function

# ╔═╡ 6767e5de-7432-4dcf-965c-f1d919e83abb
arr = [64, 34, 25, 12, 22, 11, 90]

# ╔═╡ 1a30e910-3680-4dd4-abb7-f1000752989a
println("First element: ", arr[1])

# Modify elements

# ╔═╡ 4e5b3fa2-0175-463d-978c-bc13e0be412a
arr[2] = 20

# ╔═╡ 060211d0-c22e-4aec-8f09-9dbc8d30f804
println("Modified array: ", arr)

# Add elements

# ╔═╡ 336d2427-35a2-49f4-88a3-42260207fa37
push!(arr, 6)

# ╔═╡ bbeda3e5-03cf-4dd0-9583-2086f36babdb
println("Array after push: ", arr)

# Remove elements

# ╔═╡ d4b5cb9a-153e-4e7b-bf46-263f510aec3b
pop!(arr)

# ╔═╡ cfccf846-469e-4a03-8c70-fb41eddc77fa
println("Array after pop: ", arr)

# ╔═╡ 33e3f149-05a6-42f7-a4f9-3692e3007ed8
index = binary_search(arr, target)

# ╔═╡ b71c1abe-eb8c-4cbc-b9d7-539c73606629
println("Index of $target: ", index)

# ╔═╡ 3929fd6b-6bca-4fcb-be8c-d21c45b4e8eb
println("Index of $target: ", index)

# ╔═╡ 4909eacf-34a4-4234-ba8f-3612ec44ea3d
sorted_arr = quick_sort(arr)

# ╔═╡ 64eb5754-f677-455c-aea9-ef7f92d3fedb
println("Sorted array: ", sorted_arr)

# ╔═╡ d5005ead-a747-4241-bfae-e5827962186c
println("Sorted array: ", sorted_arr)

# ╔═╡ 161ff4e4-5f0e-4504-94a0-a60703010558
md"""
## Conclusion
In this chapter, we covered:
- Arrays
- Dictionaries
- Sets
- St

acks and queues
- Linked lists
- Basic algorithms: searching and sorting

Next, we will explore working with data in Julia.

## Exercises
Try these exercises to reinforce your understanding:
1. Implement a stack using a linked list.
2. Create a function that performs a binary search on a sorted linked list.
3. Write a function that performs merge sort on an array.
4. Implement a priority queue using a heap.
5. Create a dictionary that maps student names to their grades and perform basic operations on it.
"""


# ╔═╡ c8b04810-9968-4461-b59d-b461d90ef4ce
md"""
# Working with Data

## Overview
This chapter covers how to work with data in Julia, including loading, manipulating, and visualizing data using common data packages.
"""

# ╔═╡ 2d1e182d-6999-4463-8583-a5048aeb8f6e
md"""
## Loading Data

### Using CSV.jl to Load Data
`CSV.jl` is a package for reading and writing CSV files.
"""

# ╔═╡ aa083e8e-687e-488b-b1b9-2c9cbad02239
# ╠═╡ disabled = true
#=╠═╡
using Pkg
  ╠═╡ =#

# ╔═╡ e54a3796-a735-43a6-9b37-742741a35f9f
# ╠═╡ disabled = true
#=╠═╡
using DataFrames

# Load a CSV file into a DataFrame
  ╠═╡ =#

# ╔═╡ d560da4f-4dd5-4f3e-b201-28dd5ced4705
# ╠═╡ disabled = true
#=╠═╡
df = CSV.File("path/to/your/data.csv") |> DataFrame

# Display the first few rows of the DataFrame
  ╠═╡ =#

# ╔═╡ 5a980424-fa64-4641-856b-31ddc4df51ae
md"""
### Creating DataFrames
You can also create DataFrames manually.
"""

# ╔═╡ db9898f1-23eb-4ab1-b79d-65dfd2bc1189
# ╠═╡ disabled = true
#=╠═╡
# Create a DataFrame
df = DataFrame(Name=["Alice", "Bob", "Charlie"], Age=[25, 30, 35], Salary=[50000, 60000, 70000])

# Display the DataFrame
  ╠═╡ =#

# ╔═╡ 1f2d0112-8c1a-4b8e-8a55-bf99c053dc13
md"""
## Manipulating Data

### Basic Operations
Perform common data manipulation tasks such as filtering, sorting, and grouping.
"""

# ╔═╡ e5675228-2d2c-45ca-aae0-fb25461b02d3
# ╠═╡ disabled = true
#=╠═╡
using Statistics

# Create a DataFrame
  ╠═╡ =#

# ╔═╡ ac174052-a993-44d0-ac12-e1f0eb623ddd
df = DataFrame(Name=["Alice", "Bob", "Charlie"], Age=[25, 30, 35], Salary=[50000, 60000, 70000])

# Filter rows where Age is greater than 30

# ╔═╡ 58d3b2da-3516-4af4-99bd-bf62dd0ec879
println(df)

# Basic operations

# ╔═╡ 74266230-80e6-4d3a-a165-47789fda6bf1
println("First row: ", first(df, 1))

# ╔═╡ d8bbd50b-99db-495b-9c24-5b612037d509
println("Subset of data: ", df[:, [:Name, :Age]])

# ╔═╡ 39b2b5a8-d307-4cca-8ff5-c9cedf4d01df
first(df, 5)

# ╔═╡ 40441e3e-a8a8-4c93-9c32-249b98858387
println(df)

# ╔═╡ 41ec468d-bac7-4d55-9dbd-ac8fad507d89
df_filtered = filter(row -> row.Age > 30, df)

# Sort the DataFrame by Salary

# ╔═╡ 4d697640-4e09-4aa1-9ce2-8ceecb638c6b
df_sorted = sort(df, :Salary, rev=true)

# Group by a column and calculate summary statistics

# ╔═╡ baf0630a-a423-4002-a2be-f456c3b42b50
df_grouped = combine(groupby(df, :Age), :Salary => mean => :AverageSalary)

# Display the manipulated DataFrames

# ╔═╡ c6f824d0-7aa0-425c-aab6-7fb8d257d22f
println("Filtered DataFrame: ", df_filtered)

# ╔═╡ 1bfcfc1c-6078-4056-a153-554b1b7ff3cb
println("Sorted DataFrame: ", df_sorted)

# ╔═╡ 632f8a93-f070-454e-8212-7e68adf92edf
println("Grouped DataFrame: ", df_grouped)

# ╔═╡ 2b3c5975-3272-477a-b054-e2b20126b31f
md"""
## Data Visualization

### Using GLMakie for Visualization
`GLMakie` is a powerful plotting package in Julia.
"""

# ╔═╡ 8030aa1c-651c-47f5-ad82-cdadf94436d9
# ╠═╡ disabled = true
#=╠═╡
using Pkg
  ╠═╡ =#

# ╔═╡ ca18df95-0234-420f-89eb-897f0cab2ce9
fig1 = Figure(resolution = (800, 600))

# ╔═╡ 403bdd05-d4ce-4838-a804-41cd7e63b693
println("Optimal x: ", value(x))

# ╔═╡ e2dbaeb8-a750-4cf0-a3cc-986db04f6232
plot(x, y, title="Random Data", xlabel="X-axis", ylabel="Y-axis", label="Random values")

# ╔═╡ 76dfc120-ab11-4fd8-997c-e7d417f832c4
Flux.train!(loss, params(model), [(X, y)], opt)

# ╔═╡ 7cbd1b17-e722-408d-82bd-cfd627675c95
@objective(model, Max, 3x + 5y)

# ╔═╡ 71d3a292-32ff-4a0f-ae08-5f9d17063a2e
@constraint(model, 1x + 2y <= 14)

# ╔═╡ ed3f629e-ab75-40ad-bfef-ba2ebde2ad60
@constraint(model, 3x - 1y >= 0)

# ╔═╡ 41c985a5-2676-4d63-8322-708213da3d76
@constraint(model, 1x - 1y <= 2)

# ╔═╡ dc184e4e-8c3e-4f2b-bb14-05c10b836e3d
println("Optimal y: ", value(y))

# ╔═╡ cbace18f-1bef-432c-82f6-b469693e5016
lines!(ax1, x, y, label = "Random Data", color = :blue)

# ╔═╡ 61729549-a00f-48f1-8cff-5d4385a8f79d
fig1

# Scatter plot

# ╔═╡ b5df9a24-55f6-437c-990c-e20296c4e176
scatter!(ax2, x, y, label = "Random Data", color = :red)

# ╔═╡ da560e60-867f-46f5-8e88-6a6a5ae5233b
fig2

# Bar plot

# ╔═╡ 6c135c29-c32b-431b-bcc6-a42c5df92e63
barplot!(ax3, bar_positions, values, color = :dodgerblue)

# ╔═╡ a836f1a3-91a8-45e9-9dd8-3edfe3d60537
ax3.xticks = (bar_positions, categories)

# ╔═╡ a0ee78ef-779f-44b9-a4c7-ae43f9f4cfcc
fig3

# ╔═╡ d73ad80c-f1a8-4eff-8141-d3fa1b1cc543
md"""
### Advanced Visualization with GLMakie
For more advanced visualizations, `GLMakie` can be used to create complex plots.
"""

# ╔═╡ 4106d2c7-58f2-407f-a885-b47bbe0313ad
md"""
## Data Analysis

### Statistical Analysis
Perform basic statistical analysis using Julia.
"""

# ╔═╡ e404daff-44fc-4633-8e68-fd2b0ec956ec
mean_age = mean(df.Age)

# ╔═╡ 29d25647-009c-4961-b9c1-efc5696680d3
median_age = median(df.Age)

# ╔═╡ 1a09f289-1756-4d21-a9e1-6f5c37b8bd0d
std_age = std(df.Age)

# Display the statistics

# ╔═╡ 60c46030-2df1-427d-9191-1cc57b9b1541
println("Mean Age: ", mean_age)

# ╔═╡ f6820b41-bb8a-48f5-a6c8-1abfef1238d3
println("Median Age: ", median_age)

# ╔═╡ 3b626707-b4ba-4e78-ab11-6774fe9cb4e7
println("Standard Deviation of Age: ", std_age)

# ╔═╡ c39cb99a-2835-43de-b612-fa13259a6f11
md"""
### Linear Regression
Perform linear regression using `GLM.jl`.
"""

# ╔═╡ 10358450-af13-42de-8ac1-1029543195e6
df_reg = DataFrame(X = 1:10, Y = 2 .* (1:10) .+ rand(10))

# Fit a linear model

# ╔═╡ 40190807-cf6c-4666-82d4-1b0ad0921f28
model2 = lm(@formula(Y ~ X), df_reg)

# Display the model summary

# ╔═╡ ca3ebefa-b498-4d7f-bd04-5f57522eb9d8
println(coeftable(model2))

# ╔═╡ 2c229c19-598a-4f23-aad4-7c7e0a59408a
md"""
## Conclusion
In this chapter, we covered:
- Loading data using `CSV.jl`
- Creating and manipulating DataFrames
- Visualizing data with `GLMakie`
- Performing basic statistical analysis
- Conducting linear regression with `GLM.jl`

Next, we will explore more advanced topics in data science and machine learning with Julia.

## Exercises
Try these exercises to reinforce your understanding:
1. Load a dataset from a CSV file and perform basic manipulations (filtering, sorting, grouping).
2. Create various types of plots (line plot, scatter plot, bar plot) using `GLMakie`.
3. Perform a linear regression analysis on a sample dataset and interpret the results.
4. Use `GLMakie` to create a visually appealing multi-panel figure with different types of plots.
"""

# ╔═╡ ee94d466-b1af-4f37-8192-f8daf11a920f
y = rand(10)

# ╔═╡ 55df615e-76d9-4723-bc23-6c79f51c7c2a
ax3 = Axis(fig3[1, 1], title = "Bar Plot", xlabel = "Categories", ylabel = "Values")

# ╔═╡ 34aefa06-90fb-4199-bc3b-982eb99318eb
ax1 = Axis(fig1[1, 1], title = "Line Plot", xlabel = "X-axis", ylabel = "Y-axis")

# ╔═╡ 9b99eb94-b0eb-467d-96a9-7a5fc14b84c6
fig3 = Figure(resolution = (800, 600))

# ╔═╡ cfec4077-856a-4343-b156-00464eeb01e8
categories = ["A", "B", "C", "D"]

# ╔═╡ 9db507d2-31df-4770-8d74-b6b2b0bf270a
fig2 = Figure(resolution = (800, 600))

# ╔═╡ 596391a6-85c2-463d-983d-1773cf876fcc
fig = Figure(size=(800, 600))

# ╔═╡ 10103c8a-34c9-4d9f-a406-56044464abcb
using GLMakie

# Create a simple plot

# ╔═╡ beb20f7a-ffd0-4b4b-a613-2916ab01b58d
y = rand(1, 100)

# Define the loss function

# ╔═╡ bd5d7f40-731e-4cce-9cfd-367772765870
values = [5, 10, 15, 20]

# ╔═╡ 84f0768d-04d7-40a2-a676-6c8b29395547
@variable(model, x >= 0)

# ╔═╡ 45bbdc6a-521b-4483-b647-858126a9befa
using GLMakie

# Line plot

# ╔═╡ 56858891-63dc-4027-9a6e-676951e33848
begin
	using GLMakie
	
	# Create a figure with the specified size
	fig3 = Figure(resolution=(1200, 800))
	
	# Subplot 1: 3D Surface plot
	ax12 = Axis3(fig3[1, 1], title="3D Surface Plot", xlabel="X-axis", ylabel="Y-axis", zlabel="Z-axis")
	x = LinRange(-2, 2, 50)
	y = LinRange(-2, 2, 50)
	z = [sin(sqrt(xi^2 + yi^2)) for xi in x, yi in y]
	surface!(ax1, x, y, z, colormap=:viridis)
	
	# Subplot 2: Heatmap
	ax22 = Axis(fig3[1, 2], title="Heatmap", xlabel="X-axis", ylabel="Y-axis")
	heatmap!(ax2, rand(100, 100), colormap=:plasma)
	
	# Subplot 3: Bar plot
	ax32 = Axis(fig3[2, 1:2], title="Bar Plot", xlabel="Categories", ylabel="Values")
	categories = ["A", "B", "C", "D"]
	values = [5, 10, 15, 20]
	bar_positions = 1:length(categories)
	barplot!(ax3, bar_positions, values, color=:dodgerblue, strokewidth=0)
	ax3.xticks = (bar_positions, categories)
	
	# Display the figure
	fig3
end

# ╔═╡ 8d144203-2875-468e-95ae-aa4b0b37b573
begin
	using GLMakie
	
	# Create a figure with multiple subplots
	fig = Figure(resolution = (1200, 800))
	
	# Subplot 1: 3D Surface plot
	ax1 = Axis3(fig[1, 1], title = "3D Surface Plot", xlabel = "X-axis", ylabel = "Y-axis", zlabel = "Z-axis")
	x = LinRange(-2, 2, 50)
	y = LinRange(-2, 2, 50)
	z = [sin(sqrt(xi^2 + yi^2)) for xi in x, yi in y]
	surface!(ax1, x, y, z, colormap = :viridis)
	
	# Subplot 2: Heatmap
	ax2 = Axis(fig[1, 2], title = "Heatmap", xlabel = "X-axis", ylabel = "Y-axis")
	heatmap!(ax2, rand(100, 100), colormap = :plasma)
	
	# Subplot 3: Bar plot
	ax3 = Axis(fig[2, 1:2], title = "Bar Plot", xlabel = "Categories", ylabel = "Values")
	categories = ["A", "B", "C", "D"]
	values = [5, 10, 15, 20]
	bar_positions = 1:length(categories)
	barplot!(ax3, bar_positions, values, color = :dodgerblue, strokewidth = 0)
	ax3.xticks = (bar_positions, categories)
	
	# Display the figure
	fig
end

# ╔═╡ 39aab564-4dca-4aeb-a70b-47da7ad06756
@variable(model, y >= 0)

# ╔═╡ 90efd954-0c10-47a0-b616-944c21ca73e5
bar_positions = 1:length(categories)

# ╔═╡ ce8d119f-4f50-4d26-9e5a-2fdcc8192577
begin
	using CairoMakie
	
	# Create a figure with multiple subplots
	fig2 = Figure(size=(1200, 800))
	
	# Subplot 1: Line plot
	ax1 = Axis(fig2[1, 1], title="Line Plot", xlabel="x", ylabel="sin(x)")
	lines!(ax1, LinRange(0, 2pi, 100), sin.(LinRange(0, 2pi, 100)), color=:red, linewidth=2, label="sin(x)")
	
	# Subplot 2: Scatter plot
	ax2 = Axis(fig2[1, 2], title="Scatter Plot", xlabel="x", ylabel="cos(x)")
	scatter!(ax2, LinRange(0, 2pi, 100), cos.(LinRange(0, 2pi, 100)), color=:green, markersize=5, label="cos(x)")
	
	# Subplot 3: Heatmap
	ax3 = Axis(fig2[2, 1:2], title="Heatmap", xlabel="x", ylabel="y")
	heatmap!(ax3, rand(100, 100))
	
	# Add legends
	legend = Legend(fig, ax1, "Legend")
	fig2[1, 3] = legend
	
	# Display the figure
	fig2
end

# ╔═╡ 31a8dd93-6e01-427b-83e7-d29fff6cb034
x = 1:10

# ╔═╡ a4f0008a-751e-4594-a125-b1dde2914b85
x = 1:10

# ╔═╡ f36b91f6-62ed-433f-9c57-e35519d6d69b
ax2 = Axis(fig2[1, 1], title = "Scatter Plot", xlabel = "X-axis", ylabel = "Y-axis")

# ╔═╡ Cell order:
# ╠═a86aa616-b5d7-4456-baf5-f744a5ffb729
# ╠═358f5c2a-1e87-4893-8956-d8126a262301
# ╠═bc9604ee-e14f-44f1-9ea7-414be1422ccf
# ╠═59dc0adb-9bbe-42bb-a48a-3ad1566b7a9e
# ╠═1bc8725d-5c5b-4b16-9f2a-b7afdce8ed46
# ╠═9d62daa3-5633-49f7-9881-258c107e0219
# ╠═7383b226-5083-4b88-b273-26ee1bdea503
# ╠═aa14c313-0579-4671-bd4e-5be3410420f2
# ╠═ef6cfd3a-5c79-421b-8898-614c0da89daf
# ╠═82ac0c8c-cfbf-451f-99b4-47470589ab0c
# ╠═d625bd9c-adee-49eb-91dd-e8b262e8e9d5
# ╠═141bc9af-a525-49df-946c-4a70c5034317
# ╠═c2080c12-9967-4536-87d0-b2268bfbc568
# ╠═8e057248-f790-4195-acb1-8154c1084f9a
# ╠═15e76176-1262-4018-aa37-9595ca0eeb17
# ╠═9e7eef54-3f58-4d02-b3cb-0a6a96328338
# ╠═8901ac57-b6c9-47af-9702-1485248d1fbd
# ╠═0e776066-32e0-4c85-8f00-a4b3d0eead93
# ╠═64e97077-176d-495e-baf3-ce04c25ebf0a
# ╠═b27401a7-e738-49e0-8c7d-e3988a428512
# ╠═1c8b1b68-3d2a-4608-af8c-e2b604b77760
# ╠═8038c3d9-79cc-4d3c-910e-a0d427339bb7
# ╠═0440329a-e7b5-4444-8dd5-d371eeb0886b
# ╠═e46f7c0c-56be-4aec-a235-b77e12256431
# ╠═40bfb495-1d1f-4ae9-9f90-4a62211eefb0
# ╠═7f3fe0d5-b6cc-460f-9cda-51294a82f69d
# ╠═8f72aa2a-73dd-4f30-a35d-9011af60f422
# ╠═092514b0-0b1d-46d4-8234-9321b97c3998
# ╠═c367c75b-d72d-43b7-a64c-c6ffb140cd09
# ╠═535a04fc-0ecb-467f-b9e3-eb78131c10e5
# ╠═e8fdbde6-97bc-44bd-af06-508e7bdefb85
# ╠═675c1ad4-aea4-4c9f-8878-a839157d3c6c
# ╠═58d3b2da-3516-4af4-99bd-bf62dd0ec879
# ╠═74266230-80e6-4d3a-a165-47789fda6bf1
# ╠═d8bbd50b-99db-495b-9c24-5b612037d509
# ╠═f9283e79-7762-44ca-a278-86c1d1aed7a5
# ╠═d9c9215e-3f8d-47c2-93fa-c47e805bf505
# ╠═7072b4ca-f05e-4ba7-9d9f-9bab23a24e76
# ╠═73f7064d-0a14-4bc3-a7c3-6e3da7ac1ca7
# ╠═31a8dd93-6e01-427b-83e7-d29fff6cb034
# ╠═31a130af-8101-437e-9c20-94b11fede07a
# ╠═e2dbaeb8-a750-4cf0-a3cc-986db04f6232
# ╠═c52c5e5c-c661-42dd-85bf-e9826d7c171f
# ╠═2f01d835-0fca-4b20-a48b-7c885511c77d
# ╠═becfab58-2aab-43fb-9536-b8ed7f69a77a
# ╠═5f47e578-3afc-49a9-b504-f3e55cd67b7f
# ╠═b1c19c54-e3fa-4599-934a-781421b7a0c8
# ╠═946a76ef-a64f-4b71-9a55-2e6a2e16973e
# ╠═beb20f7a-ffd0-4b4b-a613-2916ab01b58d
# ╠═a2bba286-1ce1-41b3-a918-00439fd23924
# ╠═bad0d42a-2ff5-4b80-8dff-b2ba861817b6
# ╠═668ade95-3ac6-4e4a-a37f-b103780569db
# ╠═76dfc120-ab11-4fd8-997c-e7d417f832c4
# ╠═a5b99030-6405-4327-a50f-4cca05dc0fb2
# ╠═0ad1375d-b779-4169-b754-acdbf22f7d5b
# ╠═4e488953-62f4-4039-808a-0eef468ddebe
# ╠═2ee4c019-a6fe-4ab7-802c-4bbefaa8143b
# ╠═c58d41a8-a144-4a75-a44a-5dbc4c8f1bea
# ╠═fd9a6b10-728b-40e7-93df-115983e7f8a7
# ╠═61b08e19-324d-47f5-b9c2-78d360ef3c41
# ╠═1cc8514c-fb02-491c-a12b-1e3a558e2aa9
# ╠═0bd01c48-7778-466d-a391-1afd765a7acc
# ╠═d8aff41a-1b54-4241-86d7-99589317d39f
# ╠═fa7f4b33-fe3d-4286-8839-27b26e04c917
# ╠═980da0ac-ac7a-4da3-b6e3-be74c5f2f80e
# ╠═dde07e21-30ad-4f44-9cd4-f0192ce8bf3a
# ╠═09d451da-a05d-4dcf-9913-7791397733a2
# ╠═b4352d37-e856-4878-86dd-9be2c4994c46
# ╠═6383b85a-14fa-4fad-bcca-575f29bb7b4a
# ╠═e098fd1b-fbdf-40b7-8035-f3133772849f
# ╠═84f0768d-04d7-40a2-a676-6c8b29395547
# ╠═39aab564-4dca-4aeb-a70b-47da7ad06756
# ╠═7cbd1b17-e722-408d-82bd-cfd627675c95
# ╠═71d3a292-32ff-4a0f-ae08-5f9d17063a2e
# ╠═ed3f629e-ab75-40ad-bfef-ba2ebde2ad60
# ╠═41c985a5-2676-4d63-8322-708213da3d76
# ╠═71d3d97e-b50c-47f7-8f64-7f5edb893092
# ╠═403bdd05-d4ce-4838-a804-41cd7e63b693
# ╠═dc184e4e-8c3e-4f2b-bb14-05c10b836e3d
# ╠═84b02e1e-697a-412a-9ba1-7344c268ed39
# ╠═2c2c5871-385f-4da0-ad25-e15692ebb433
# ╠═41fe0d3e-4f57-4612-b38f-831a1b562182
# ╠═89206c60-dc52-46c1-9631-4a0acd732c3c
# ╠═b3eb1087-c9e9-4d6c-8eca-d21203099a17
# ╠═10103c8a-34c9-4d9f-a406-56044464abcb
# ╠═596391a6-85c2-463d-983d-1773cf876fcc
# ╠═de83e2b2-4e91-4c9f-b0fb-1b6d131372fb
# ╠═9c95419a-1f78-4370-8db5-2e8b983c4de7
# ╠═359d0615-3339-4668-8fc3-da9b602efe44
# ╠═33546055-a327-4e3e-9856-3fb6fe49dc90
# ╠═b5ec6a93-eaad-449d-b94e-2d70b6b95c4a
# ╠═7e03e6ad-3783-402e-a7c7-30f83b61742c
# ╠═4632e10e-644b-4b8f-8b4b-6b867cd6cea5
# ╠═f00f2918-ac6c-402c-8c31-442012bdc29e
# ╠═4abe70b1-ba14-4a55-8e59-1f1384f80a9e
# ╠═ce8d119f-4f50-4d26-9e5a-2fdcc8192577
# ╠═19b04c4d-0ad6-4d5f-882b-2a559e61b425
# ╠═c17fd768-7c40-40dc-bddf-2e004283621e
# ╠═56858891-63dc-4027-9a6e-676951e33848
# ╠═f318ea1a-0a8d-4b71-856e-b72eae2b5cd9
# ╠═49046588-be06-4eb5-b93f-ee453d282b7b
# ╠═13b3a842-df5c-414e-9fda-dac349848f60
# ╠═9bd8cda5-b65d-40aa-a91a-516a16de120f
# ╠═f89630d3-42a9-47c1-91c8-8c457ca7d0cb
# ╠═1a30e910-3680-4dd4-abb7-f1000752989a
# ╠═4e5b3fa2-0175-463d-978c-bc13e0be412a
# ╠═060211d0-c22e-4aec-8f09-9dbc8d30f804
# ╠═336d2427-35a2-49f4-88a3-42260207fa37
# ╠═bbeda3e5-03cf-4dd0-9583-2086f36babdb
# ╠═d4b5cb9a-153e-4e7b-bf46-263f510aec3b
# ╠═cfccf846-469e-4a03-8c70-fb41eddc77fa
# ╠═262245ea-c3f6-4569-aa81-1390f6c34bcc
# ╠═f52fbca7-2e95-4e38-bceb-47d2d1a5d04d
# ╠═13f488e8-8934-44b0-82b9-1d9a5da6b432
# ╠═6315fad6-c800-4df1-8bb2-24a1fb658e98
# ╠═40b287b5-bee4-474e-bc0d-3606e9e73b45
# ╠═6e00ca4b-dd98-4d7f-a1a7-5619c1c49964
# ╠═594adbb6-8eb1-4daf-84e2-6ee98e4f7b72
# ╠═fc6e098b-441b-4dbd-8d1a-4703463a6a27
# ╠═8211d6bd-82b6-4ebe-a893-9ecd89a4910b
# ╠═d9514658-99f3-43ef-8e87-e002754d4855
# ╠═aef8593d-fbd7-4f0b-8e99-e63e47c64549
# ╠═d22f2ba5-2f81-4969-b21d-7fb38900b26f
# ╠═fa9cde57-ae48-4df1-92e9-a155dde6ade9
# ╠═5ca65cc8-4f4a-4e99-9aa1-2dd5e48dbcab
# ╠═72844421-4766-41d2-8c82-e4cd372ca511
# ╠═0f161765-e315-49b3-8312-a9a9dd0447bb
# ╠═4fe2e78a-052f-48b9-95cb-d6554bf17236
# ╠═6f394570-93e2-41e2-a506-1e1d122cb7d2
# ╠═42ea9a3d-2143-40e9-b0de-7e9129aaf35a
# ╠═4ac50c65-b10e-4635-ad86-ba685c866c74
# ╠═bc3d07a3-183d-490e-8720-6a9a21502165
# ╠═c4ee6174-0d7e-442d-9c1e-611793ccb4a9
# ╠═f887e923-6c69-416b-835f-faab7c932a0e
# ╠═a04ba5a4-2c44-44b0-b28f-f4c126429251
# ╠═b6f2a0c2-817c-4aec-87c2-1e692234fc44
# ╠═07cd3daf-0ff6-4023-a19d-46be67613e75
# ╠═c2576236-5ad0-4861-80ec-7e4224d7c9a2
# ╠═49c17faa-690c-4803-b89d-a8be4c901c18
# ╠═39a1badf-4279-4c2d-b588-4015213d908b
# ╠═6be0db23-cba2-4fc4-bb48-03f7a547bfa5
# ╠═5e7fb4ad-9288-4a24-be20-74631bb0ac0b
# ╠═84981b4e-42a7-44c1-abf3-876982f9286b
# ╠═03184183-e09d-423d-bd80-1ce57ff51a4a
# ╠═d7a74323-402d-4f5a-b769-7bcceeaf49a5
# ╠═88658f96-72bb-45e9-8d90-f3702608b179
# ╠═610854c6-6705-4cac-9bfa-0bbf705dd8b5
# ╠═1c0e464a-531a-4207-b623-524222424099
# ╠═41f899ab-5da7-4084-8a7e-0b01f93f5c4c
# ╠═8b74ddd1-3983-4a15-adcf-93d867eb85d1
# ╠═b71c1abe-eb8c-4cbc-b9d7-539c73606629
# ╠═e42d07f1-5c61-4e99-9474-70176270ff4b
# ╠═47b313ff-92e2-4567-9f96-4544165df5cc
# ╠═cf421dfc-08cb-46da-bbd3-a9a485cae369
# ╠═e6f792dc-1eef-46de-a625-73b15410c62c
# ╠═33e3f149-05a6-42f7-a4f9-3692e3007ed8
# ╠═3929fd6b-6bca-4fcb-be8c-d21c45b4e8eb
# ╠═c5bf96f9-2daa-4199-a0bf-18c683610481
# ╠═f1c0be7c-da55-4d8c-b9f3-120b9fcc9cf6
# ╠═cc0ebaf4-d9b3-4079-8fe7-2cbbda65a88e
# ╠═236b5c6c-9fa3-40ec-96da-8f50c62b62dd
# ╠═64eb5754-f677-455c-aea9-ef7f92d3fedb
# ╠═7c628cc0-8051-4a14-b057-845434732e6f
# ╠═a77a669e-cca3-44f6-b7e7-31e095404ce8
# ╠═6767e5de-7432-4dcf-965c-f1d919e83abb
# ╠═4909eacf-34a4-4234-ba8f-3612ec44ea3d
# ╠═d5005ead-a747-4241-bfae-e5827962186c
# ╠═161ff4e4-5f0e-4504-94a0-a60703010558
# ╠═c8b04810-9968-4461-b59d-b461d90ef4ce
# ╠═2d1e182d-6999-4463-8583-a5048aeb8f6e
# ╠═aa083e8e-687e-488b-b1b9-2c9cbad02239
# ╠═f2ec9dd4-063b-434f-a5ff-755e5dbbb451
# ╠═707f5723-810e-4b97-b8a6-ec4f22c65d68
# ╠═ff0ae183-af4e-4907-a74c-23617ab91edc
# ╠═e54a3796-a735-43a6-9b37-742741a35f9f
# ╠═d560da4f-4dd5-4f3e-b201-28dd5ced4705
# ╠═39b2b5a8-d307-4cca-8ff5-c9cedf4d01df
# ╠═5a980424-fa64-4641-856b-31ddc4df51ae
# ╠═db9898f1-23eb-4ab1-b79d-65dfd2bc1189
# ╠═40441e3e-a8a8-4c93-9c32-249b98858387
# ╠═1f2d0112-8c1a-4b8e-8a55-bf99c053dc13
# ╠═edb59c93-a820-466a-8f79-7907d38d420e
# ╠═e5675228-2d2c-45ca-aae0-fb25461b02d3
# ╠═ac174052-a993-44d0-ac12-e1f0eb623ddd
# ╠═41ec468d-bac7-4d55-9dbd-ac8fad507d89
# ╠═4d697640-4e09-4aa1-9ce2-8ceecb638c6b
# ╠═baf0630a-a423-4002-a2be-f456c3b42b50
# ╠═c6f824d0-7aa0-425c-aab6-7fb8d257d22f
# ╠═1bfcfc1c-6078-4056-a153-554b1b7ff3cb
# ╠═632f8a93-f070-454e-8212-7e68adf92edf
# ╠═2b3c5975-3272-477a-b054-e2b20126b31f
# ╠═8030aa1c-651c-47f5-ad82-cdadf94436d9
# ╠═22501fce-8a99-43a3-b63f-f977de429cbf
# ╠═45bbdc6a-521b-4483-b647-858126a9befa
# ╠═ca18df95-0234-420f-89eb-897f0cab2ce9
# ╠═34aefa06-90fb-4199-bc3b-982eb99318eb
# ╠═a4f0008a-751e-4594-a125-b1dde2914b85
# ╠═ee94d466-b1af-4f37-8192-f8daf11a920f
# ╠═cbace18f-1bef-432c-82f6-b469693e5016
# ╠═61729549-a00f-48f1-8cff-5d4385a8f79d
# ╠═9db507d2-31df-4770-8d74-b6b2b0bf270a
# ╠═f36b91f6-62ed-433f-9c57-e35519d6d69b
# ╠═b5df9a24-55f6-437c-990c-e20296c4e176
# ╠═da560e60-867f-46f5-8e88-6a6a5ae5233b
# ╠═9b99eb94-b0eb-467d-96a9-7a5fc14b84c6
# ╠═55df615e-76d9-4723-bc23-6c79f51c7c2a
# ╠═cfec4077-856a-4343-b156-00464eeb01e8
# ╠═bd5d7f40-731e-4cce-9cfd-367772765870
# ╠═90efd954-0c10-47a0-b616-944c21ca73e5
# ╠═6c135c29-c32b-431b-bcc6-a42c5df92e63
# ╠═a836f1a3-91a8-45e9-9dd8-3edfe3d60537
# ╠═a0ee78ef-779f-44b9-a4c7-ae43f9f4cfcc
# ╠═d73ad80c-f1a8-4eff-8141-d3fa1b1cc543
# ╠═8d144203-2875-468e-95ae-aa4b0b37b573
# ╠═4106d2c7-58f2-407f-a885-b47bbe0313ad
# ╠═1326d734-f395-4d50-a39b-aa962da64caa
# ╠═e404daff-44fc-4633-8e68-fd2b0ec956ec
# ╠═29d25647-009c-4961-b9c1-efc5696680d3
# ╠═1a09f289-1756-4d21-a9e1-6f5c37b8bd0d
# ╠═60c46030-2df1-427d-9191-1cc57b9b1541
# ╠═f6820b41-bb8a-48f5-a6c8-1abfef1238d3
# ╠═3b626707-b4ba-4e78-ab11-6774fe9cb4e7
# ╠═c39cb99a-2835-43de-b612-fa13259a6f11
# ╠═6477428c-90c8-4836-a91b-d78ace44d6d3
# ╠═edbd9af1-344a-4f7d-836e-bdfd9735a380
# ╠═9a67ab0e-c342-43de-859d-056ec10e829b
# ╠═10358450-af13-42de-8ac1-1029543195e6
# ╠═40190807-cf6c-4666-82d4-1b0ad0921f28
# ╠═ca3ebefa-b498-4d7f-bd04-5f57522eb9d8
# ╠═2c229c19-598a-4f23-aad4-7c7e0a59408a
