### A Pluto.jl notebook ###
# v0.19.42

using Markdown
using InteractiveUtils

# ╔═╡ fcd57a95-94fe-4c62-b766-bf1261720327
begin
	using Pkg
	Pkg.add("Optim")
	
	using Optim
	
	# Define the objective function
	function rosenbrock(x)
	    return (1.0 - x[1])^2 + 100.0 * (x[2] - x[1]^2)^2
	end
	
	# Initial guess
	x0_opt = [0.0, 0.0]
	
	# Perform optimization
	result_opt = optimize(rosenbrock, x0_opt, BFGS())
	
	# Display results
	println("Minimum found at: ", Optim.minimizer(result_opt))
	println("Minimum value: ", Optim.minimum(result_opt))
end

# ╔═╡ b3d0d10f-935e-4dc6-a6b5-7ec476f87492
#using Pkg
#Pkg.add("DifferentialEquations")

using DifferentialEquations

# Define an ordinary differential equation (ODE)

# ╔═╡ f02072c1-57c1-4548-8fbe-e207a6cfc37a
using Plots

# ╔═╡ 8d2ffa56-3b27-4377-b01c-609e4187abb2
using Distributed

# Add worker processes

# ╔═╡ 736a0bef-f71b-4e83-95b4-53fe4d12ba5e
begin
	
	using GLMakie
	using GLMakie: surface!
	
	# Create a 3D surface plot
	fig1 = Figure(size = (800, 600))
	ax1 = Axis3(fig1[1, 1], title = "3D Surface Plot", xlabel = "X", ylabel = "Y", zlabel = "Z")
	x = LinRange(-5, 5, 100)
	y = LinRange(-5, 5, 100)
	z = [sin(sqrt(xi^2 + yi^2)) for xi in x, yi in y]
	surface!(ax1, x, y, z, colormap = :viridis)
	fig1
end

# ╔═╡ 9ae3d140-b7f3-404a-8edd-52f4b8ff4e30
begin
	using GLMakie: contour!
	# Create a contour plot
	fig2 = Figure(size = (800, 600))
	ax2 = Axis(fig2[1, 1], title = "Contour Plot", xlabel = "X", ylabel = "Y")
	contour!(ax2, x, y, z, levels = 20, linewidth = 2, colormap = :plasma)
	fig2
end

# ╔═╡ 0ed39c39-d309-433b-bf59-85ed395841e5
begin

	using GLMakie: heatmap!
	# Create a heatmap
	fig3 = Figure(size = (800, 600))
	ax3 = Axis(fig3[1, 1], title = "Heatmap", xlabel = "X", ylabel = "Y")
	heatmap!(ax3, rand(100, 100), colormap = :inferno)
	fig3
end

# ╔═╡ d993c288-cc23-441d-ad7b-d6562ccd4685
begin

	using GLMakie: scatter!
	
	# Create an interactive scatter plot
	fig4 = Figure(size = (800, 600))
	ax4 = Axis(fig4[1, 1], title = "Interactive Scatter Plot", xlabel = "X", ylabel = "Y")
	scatter!(ax4, rand(100), rand(100), markersize = 10, color = :blue)
	fig4
end

# ╔═╡ cef93c77-8323-4c96-9911-7aa516aff3d2
md"""
# Optimization and Scientific Computing

## Overview
This chapter explores advanced topics in optimization and scientific computing using Julia. We will cover optimization techniques, numerical linear algebra, and scientific computing tools.
"""

# ╔═╡ 8147193a-4ede-4238-b4fd-22dc9f210c65
md"""
## Optimization with Optim.jl

### Introduction to Optim.jl
`Optim.jl` is a package for mathematical optimization in Julia, providing a variety of algorithms to solve optimization problems.
"""

# ╔═╡ 62808e15-6130-4fc7-ace8-beb20da85be3
md"""
### Explanation
- **Objective Function**: The Rosenbrock function is a well-known test problem for optimization algorithms.
- **Initial Guess**: Start with an initial guess for the variables.
- **Optimization Algorithm**: Use the BFGS algorithm, a popular quasi-Newton method for optimization.
- **Result**: Print the location of the minimum and the value of the objective function at that point.
"""

# ╔═╡ 7cb407d5-95a8-4704-a842-ffeb476708da
md"""
## Numerical Linear Algebra with LinearAlgebra.jl

### Introduction to LinearAlgebra.jl
The `LinearAlgebra` standard library in Julia provides a wide range of functionalities for numerical linear algebra.
"""

# ╔═╡ 9d24b5ed-1142-4455-8a48-66b109c60f8f
A_linalg = [4.0 1.0; 1.0 3.0]

# Perform LU decomposition

# ╔═╡ 17c07e65-633b-4d8b-949d-13e4c1c5c5eb
L_linalg, U_linalg, p_linalg = lu(A_linalg)

# ╔═╡ b3e952fd-21c8-46cc-b8b2-9a49a5ad004d
println("L factor: ", L_linalg)

# ╔═╡ 6d5f625d-aa9b-401b-ab9e-6075c2d25292
println("U factor: ", U_linalg)

# ╔═╡ 78b64d12-3070-42c1-86c2-578831fd225c
println("Permutation vector: ", p_linalg)

# Solve a linear system Ax = b

# ╔═╡ 4fb3ab20-7512-4e37-bbb1-fb43def75959
b_linalg = [1.0, 2.0]

# ╔═╡ 2fd1ecee-f67c-4d71-8fa2-592422769e2a
x_linalg = A_linalg \ b_linalg

# ╔═╡ fd25b7aa-0adf-4a54-9455-a9b4687d12a7
println("Solution x: ", x_linalg)

# Compute the eigenvalues and eigenvectors

# ╔═╡ 5cc48725-e60e-4d11-9b29-22e5b87dfd03
eigenvalues_linalg, eigenvectors_linalg = eigen(A_linalg)

# ╔═╡ 74e27bee-45f8-4f37-ae4a-74523e13ba4b
println("Eigenvalues: ", eigenvalues_linalg)

# ╔═╡ 584262c0-eb2d-4af5-b117-7d7ab507fb16
println("Eigenvectors: ", eigenvectors_linalg)

# ╔═╡ 7c1ab27f-c8d9-417e-a93e-10d79825c777
md"""
### Explanation
- **LU Decomposition**: Factorize a matrix into lower and upper triangular matrices.
- **Solve Linear System**: Solve the system of linear equations Ax = b.
- **Eigenvalues and Eigenvectors**: Compute the eigenvalues and eigenvectors of a matrix.
"""

# ╔═╡ d9523a34-6612-4cca-a847-b8ca33ecc9e7
md"""
## Scientific Computing with DifferentialEquations.jl

### Introduction to DifferentialEquations.jl
`DifferentialEquations.jl` is a comprehensive suite for solving differential equations in Julia, supporting a wide range of problem types and solvers.
"""

# ╔═╡ 05a101e6-43d9-4f7b-a84f-13d792509cc0
function f_ode(du, u, p, t)
    du .= 1.01 * u
end

# Initial condition

# ╔═╡ 94b33b99-40db-4656-9c4b-c90f2744e455
u0_ode = [1.0]

# Time span

# ╔═╡ 41acf8e5-6e72-4d87-bfba-98fc0782fb64
tspan_ode = (0.0, 1.0)

# Define the ODE problem

# ╔═╡ a59415a2-6c4e-45d5-b564-3cba06d4fd61
prob_ode = ODEProblem(f_ode, u0_ode, tspan_ode)

# Solve the ODE

# ╔═╡ 01879e05-8752-4e0a-b66b-b320f727520c
sol_ode = solve(prob_ode)

# ╔═╡ 152a0881-0472-4c57-81f8-2704353a8de4
println("Solution: ", sol_ode)

# Plot the solution

# ╔═╡ 174b3278-e663-41fc-8eab-3382995060e6
plot(sol_ode, xlabel = "Time", ylabel = "u", title = "Solution of the ODE")

# ╔═╡ 8857dcb2-d8ab-416d-bce3-5e9fac26c789
md"""
### Explanation
- **ODE Definition**: Define the differential equation.
- **Initial Condition**: Specify the initial condition of the ODE.
- **Time Span**: Define the time span for the solution.
- **Problem Definition**: Create an ODE problem instance.
- **Solve ODE**: Solve the differential equation using a suitable solver.
- **Plot Solution**: Visualize the solution using the `Plots` package.
"""

# ╔═╡ 8bfd1d12-81dc-42fb-8f00-abfa078e2410
md"""
## Parallel Computing with Distributed.jl

### Introduction to Distributed.jl
`Distributed.jl` is a standard library in Julia for parallel and distributed computing.
"""

# ╔═╡ d473be71-d6f5-4af8-9f3c-b438096aaa7f
addprocs(4)

# ╔═╡ 75c954c2-18d2-43d2-9a3e-a9ede9e2d281
parallel_result = @distributed (+) for i in 1:1000000
    sqrt(i)
end

# Define a function to be executed in parallel

# ╔═╡ f8347693-1e0a-4fa4-8f44-f7b447d2fb03
@everywhere function compute_eigenvalues(A)
    eigen(A).values
end

# Define a matrix

# ╔═╡ 73b3559d-488e-4d7a-8afa-d43358355c09
A_parallel = rand(100, 100)

# Perform parallel computation

# ╔═╡ ebed8409-31e6-48ba-bcbc-dff6b1daadce
eigenvalues_parallel = pmap(compute_eigenvalues, [A_parallel for _ in 1:4])

# ╔═╡ f069dd92-2aea-4f23-9dec-d52ad59a90be
println("Eigenvalues: ", eigenvalues_parallel)

# ╔═╡ 37b4e71a-6a42-4c8d-b541-6873769b5005
md"""
### Explanation
- **Add Worker Processes**: Add multiple worker processes for parallel computation.
- **Distributed Computation**: Perform a distributed computation using `@distributed` and `pmap`.
- **Define Parallel Function**: Define a function to be executed in parallel across multiple processes.
- **Parallel Execution**: Execute the function in parallel and gather results.
"""

# ╔═╡ 87d2a71b-e892-4ef7-82e2-b154140943fe
md"""
## Conclusion
In this chapter, we covered:
- Optimization with `Optim.jl`
- Numerical linear algebra with `LinearAlgebra.jl`
- Solving differential equations with `DifferentialEquations.jl`
- Parallel computing with `Distributed.jl`

Next, we will explore more advanced topics in scientific computing and visualization with Julia.

## Exercises
Try these exercises to reinforce your understanding:
1. Optimize a different objective function using `Optim.jl`.
2. Perform LU decomposition and solve a linear system using `LinearAlgebra.jl`.
3. Solve a system of differential equations using `DifferentialEquations.jl`.
4. Implement a parallel computation using `Distributed.jl`.
"""


# ╔═╡ 43f49efb-beb9-4cc1-8710-e3dc8f82526e
md"""
# Numerical Linear Algebra and Advanced Plotting

## Overview
This chapter explores advanced numerical linear algebra techniques and advanced plotting methods using Julia. We will cover matrix factorizations, eigenvalue problems, and various advanced plotting techniques.
"""

# ╔═╡ edfa801f-3509-41cd-b649-f787baa29591
md"""
## Matrix Factorizations with LinearAlgebra.jl

### LU Decomposition
The LU decomposition is used to factorize a matrix into a lower triangular matrix \( L \) and an upper triangular matrix \( U \).
"""

# ╔═╡ 2b65db26-c341-478e-93b7-e184e3345ed7
A = [4.0 3.0; 6.0 3.0]

# Perform LU decomposition

# ╔═╡ e256935b-7009-444b-b4a4-7700ba13876b
LU = lu(A)

# Extract L and U

# ╔═╡ c4165143-27d7-4f1f-8f12-28908f9c96c8
L = LU.L

# ╔═╡ 115e3dbd-2d35-4717-aa6a-576351b0e38d
println("L factor: ", L)

# ╔═╡ f5fc54cf-ddde-4c47-9692-4dd628a75624
println("Original matrix A: ", A)

# ╔═╡ 811685d3-9894-4bc8-8cfc-313622c0fff5
md"""
### Explanation
- **LU Decomposition**: Decompose matrix \( A \) into \( L \) and \( U \).
- **Verification**: Verify that \( A = L \times U \).
"""

# ╔═╡ 5d48b6a0-62c6-44ec-aa28-c5d9038b7fcf
md"""
### QR Decomposition
The QR decomposition is used to factorize a matrix into an orthogonal matrix \( Q \) and an upper triangular matrix \( R \).
"""

# ╔═╡ 677d03b3-716c-4103-bd18-49bd612075cf
# Define a matrix
B = [12.0 -51.0 4.0; 6.0 167.0 -68.0; -4.0 24.0 -41.0]

# Perform QR decomposition

# ╔═╡ a4de80ed-1ad7-452e-ab60-787ff95f0b1b
Q, R = qr(B)

# ╔═╡ 395c8b8c-def7-4816-8e75-2183e175968b
println("Q factor: ", Q)

# ╔═╡ 9d1ac177-ab97-43c7-abb9-8b3d665ed5a1
println("R factor: ", R)

# Verify the decomposition

# ╔═╡ 5a774013-a41c-4c74-9564-222cb0ae40a2
println("Q * R: ", Q * R)

# ╔═╡ c6fc3243-0e14-422b-b383-384bee46ea1d
println("Original matrix B: ", B)

# ╔═╡ da7af595-81bc-4380-80ce-8d1817fe5e92
md"""
### Explanation
- **QR Decomposition**: Decompose matrix \( B \) into \( Q \) and \( R \).
- **Verification**: Verify that \( B = Q \times R \).
"""

# ╔═╡ f76f7d46-d805-45c3-9376-107af068ccfd
md"""
### Singular Value Decomposition (SVD)
The SVD is used to factorize a matrix into three matrices \( U \), \( \Sigma \), and \( V \) such that \( A = U \Sigma V^T \).
"""

# ╔═╡ e480f1e9-f508-4382-974c-482b5313ec84
# Define a matrix
C = [1.0 0.0 0.0 0.0 2.0; 0.0 0.0 3.0 0.0 0.0; 0.0 0.0 0.0 0.0 0.0; 0.0 4.0 0.0 0.0 0.0]

# Perform SVD

# ╔═╡ 90a7159c-ed07-4e59-825a-89e2699162d0
println("U factor: ", U)

# Verify the decomposition

# ╔═╡ a6377662-e6a1-420f-86cb-6d08b595ee0c
println("L * U: ", L * U)

# ╔═╡ c657ad7f-4ce0-4b06-896d-7f21929526e9
println("U matrix: ", U)

# ╔═╡ cfefa8f1-3763-42bb-bdd1-f704492a0a16
println("Σ vector: ", Σ)

# ╔═╡ 5f6b5e37-4903-4152-94aa-60b37e0da90c
println("V matrix: ", V)

# Verify the decomposition

# ╔═╡ 0ef76b1f-4db0-4a2d-9a5c-ef796c988f88
println("U * Diagonal(Σ) * V': ", U * Diagonal(Σ) * V')

# ╔═╡ cbb8bec9-347d-4270-abe5-7dfddaeedd13
println("Original matrix C: ", C)

# ╔═╡ db167a08-83f6-463c-8811-eafc60f50a74
md"""
### Explanation
- **SVD**: Decompose matrix \( C \) into \( U \), \( \Sigma \), and \( V \).
- **Verification**: Verify that \( C = U \Sigma V^T \).
"""

# ╔═╡ 8dce949d-955a-4cea-8e76-bf0b44ceefd1
md"""
## Eigenvalue and Eigenvector Computation

### Eigenvalues and Eigenvectors
Compute the eigenvalues and eigenvectors of a matrix.
"""

# ╔═╡ 06971fc2-e1c2-4250-9dd1-c5edc3375f26
# Define a matrix
D = [2.0 -1.0 0.0; -1.0 2.0 -1.0; 0.0 -1.0 2.0]

# Compute eigenvalues and eigenvectors

# ╔═╡ 0eb547b8-b73d-480f-893b-2a5741e1148c
eigenvalues, eigenvectors = eigen(D)

# ╔═╡ 2ca21857-a415-461b-a0ef-315c6e6efbf7
println("Eigenvalues: ", eigenvalues)

# ╔═╡ b0388892-eab4-466e-9f0c-9f3f81c93f6e
println("Eigenvectors: ", eigenvectors)

# Verify the decomposition

# ╔═╡ 1d7d09e9-7748-4a51-b97b-9e47f209e7b6
println("D * eigenvectors: ", D * eigenvectors)

# ╔═╡ a41fc797-9f74-4ee7-b68d-cf287a302f6b
println("eigenvectors * Diagonal(eigenvalues): ", eigenvectors * Diagonal(eigenvalues))

# ╔═╡ 8de0b599-e289-478a-8881-4a5fd9b9d9c4
md"""
### Explanation
- **Eigenvalues and Eigenvectors**: Compute the eigenvalues and eigenvectors of matrix \( D \).
- **Verification**: Verify that \( D \times \text{eigenvectors} = \text{eigenvectors} \times \text{Diagonal(eigenvalues)} \).
"""

# ╔═╡ f1192756-835a-472c-95a5-4d2dc436ed9e
md"""
## Advanced Plotting with GLMakie.jl

### 3D Surface Plots
Create detailed and interactive 3D surface plots.
"""

# ╔═╡ 5d53c3f7-f4bd-4bfb-8f1f-2f0e875cf394
md"""
### Explanation
- **3D Surface Plot**: Visualize a 3D surface using `surface!`.
"""

# ╔═╡ c46ad11b-4139-49c2-8bf0-febb4d8294f8
md"""
### Contour Plots
Create detailed contour plots to visualize functions.
"""

# ╔═╡ 39f806bc-6f7d-4eec-b3d8-e7383c912500
md"""
### Explanation
- **Contour Plot**: Visualize a function using `contour!`.
"""

# ╔═╡ 85fb635e-3a8b-432d-ac58-e411428b1985
md"""
### Heatmaps
Create heatmaps for matrix data visualization.
"""

# ╔═╡ c54dbe46-491d-42c3-b6fc-c26cb6a79016
md"""
### Explanation
- **Heatmap**: Visualize matrix data using `heatmap!`.
"""

#

 ╔═╡ 578d0c38-5145-4003-b09f-860c5776ff9c
md"""
### Interactive Scatter Plots
Create interactive scatter plots for exploring data points.
"""

# ╔═╡ 75c943d1-905f-49d8-8536-ae1735aab26e
md"""
### Explanation
- **Interactive Scatter Plot**: Create an interactive scatter plot to explore data points.
"""

# ╔═╡ 7f94336a-a5fc-45e1-b969-5b9cf515e86f
md"""
## Conclusion
In this chapter, we covered:
- Matrix factorizations (LU, QR, SVD)
- Eigenvalue and eigenvector computation
- Advanced plotting techniques with `Makie.jl`

Next, we will explore more specialized topics in machine learning, scientific computing, and advanced Julia programming techniques.

## Exercises
Try these exercises to reinforce your understanding:
1. Perform LU decomposition on a different matrix and verify the result.
2. Compute the QR decomposition of a given matrix and verify the result.
3. Perform SVD on another matrix and check the decomposition.
4. Calculate the eigenvalues and eigenvectors of a different matrix.
5. Create various types of plots (surface, contour, heatmap, scatter) using `Makie.jl` with different datasets.
"""

# ╔═╡ 8bd59443-b0fa-4f29-a99b-23cee3f2e722
U, Σ, V = svd(C)

# ╔═╡ af034719-8831-47fe-a3b2-5521ba83d6ac
@everywhere begin
    using LinearAlgebra
end

# Define a parallel computation

# ╔═╡ 4d6506f6-f0fb-4e6f-b420-4cd8b8f08f6d
using LinearAlgebra

# Define a matrix

# ╔═╡ 3e9151de-ee96-42d3-bd45-483216f83fd2
using LinearAlgebra

# Define a matrix

# ╔═╡ 1bb88a74-95e9-44c2-8969-d1939199e686
U = LU.U

# ╔═╡ Cell order:
# ╠═cef93c77-8323-4c96-9911-7aa516aff3d2
# ╠═8147193a-4ede-4238-b4fd-22dc9f210c65
# ╠═fcd57a95-94fe-4c62-b766-bf1261720327
# ╠═62808e15-6130-4fc7-ace8-beb20da85be3
# ╠═7cb407d5-95a8-4704-a842-ffeb476708da
# ╠═4d6506f6-f0fb-4e6f-b420-4cd8b8f08f6d
# ╠═9d24b5ed-1142-4455-8a48-66b109c60f8f
# ╠═17c07e65-633b-4d8b-949d-13e4c1c5c5eb
# ╠═b3e952fd-21c8-46cc-b8b2-9a49a5ad004d
# ╠═6d5f625d-aa9b-401b-ab9e-6075c2d25292
# ╠═78b64d12-3070-42c1-86c2-578831fd225c
# ╠═4fb3ab20-7512-4e37-bbb1-fb43def75959
# ╠═2fd1ecee-f67c-4d71-8fa2-592422769e2a
# ╠═fd25b7aa-0adf-4a54-9455-a9b4687d12a7
# ╠═5cc48725-e60e-4d11-9b29-22e5b87dfd03
# ╠═74e27bee-45f8-4f37-ae4a-74523e13ba4b
# ╠═584262c0-eb2d-4af5-b117-7d7ab507fb16
# ╠═7c1ab27f-c8d9-417e-a93e-10d79825c777
# ╠═d9523a34-6612-4cca-a847-b8ca33ecc9e7
# ╠═b3d0d10f-935e-4dc6-a6b5-7ec476f87492
# ╠═05a101e6-43d9-4f7b-a84f-13d792509cc0
# ╠═94b33b99-40db-4656-9c4b-c90f2744e455
# ╠═41acf8e5-6e72-4d87-bfba-98fc0782fb64
# ╠═a59415a2-6c4e-45d5-b564-3cba06d4fd61
# ╠═01879e05-8752-4e0a-b66b-b320f727520c
# ╠═152a0881-0472-4c57-81f8-2704353a8de4
# ╠═f02072c1-57c1-4548-8fbe-e207a6cfc37a
# ╠═174b3278-e663-41fc-8eab-3382995060e6
# ╠═8857dcb2-d8ab-416d-bce3-5e9fac26c789
# ╠═8bfd1d12-81dc-42fb-8f00-abfa078e2410
# ╠═8d2ffa56-3b27-4377-b01c-609e4187abb2
# ╠═d473be71-d6f5-4af8-9f3c-b438096aaa7f
# ╠═af034719-8831-47fe-a3b2-5521ba83d6ac
# ╠═75c954c2-18d2-43d2-9a3e-a9ede9e2d281
# ╠═f8347693-1e0a-4fa4-8f44-f7b447d2fb03
# ╠═73b3559d-488e-4d7a-8afa-d43358355c09
# ╠═ebed8409-31e6-48ba-bcbc-dff6b1daadce
# ╠═f069dd92-2aea-4f23-9dec-d52ad59a90be
# ╠═37b4e71a-6a42-4c8d-b541-6873769b5005
# ╠═87d2a71b-e892-4ef7-82e2-b154140943fe
# ╠═43f49efb-beb9-4cc1-8710-e3dc8f82526e
# ╠═edfa801f-3509-41cd-b649-f787baa29591
# ╠═3e9151de-ee96-42d3-bd45-483216f83fd2
# ╠═2b65db26-c341-478e-93b7-e184e3345ed7
# ╠═e256935b-7009-444b-b4a4-7700ba13876b
# ╠═c4165143-27d7-4f1f-8f12-28908f9c96c8
# ╠═1bb88a74-95e9-44c2-8969-d1939199e686
# ╠═115e3dbd-2d35-4717-aa6a-576351b0e38d
# ╠═90a7159c-ed07-4e59-825a-89e2699162d0
# ╠═a6377662-e6a1-420f-86cb-6d08b595ee0c
# ╠═f5fc54cf-ddde-4c47-9692-4dd628a75624
# ╠═811685d3-9894-4bc8-8cfc-313622c0fff5
# ╠═5d48b6a0-62c6-44ec-aa28-c5d9038b7fcf
# ╠═677d03b3-716c-4103-bd18-49bd612075cf
# ╠═a4de80ed-1ad7-452e-ab60-787ff95f0b1b
# ╠═395c8b8c-def7-4816-8e75-2183e175968b
# ╠═9d1ac177-ab97-43c7-abb9-8b3d665ed5a1
# ╠═5a774013-a41c-4c74-9564-222cb0ae40a2
# ╠═c6fc3243-0e14-422b-b383-384bee46ea1d
# ╠═da7af595-81bc-4380-80ce-8d1817fe5e92
# ╠═f76f7d46-d805-45c3-9376-107af068ccfd
# ╠═e480f1e9-f508-4382-974c-482b5313ec84
# ╠═8bd59443-b0fa-4f29-a99b-23cee3f2e722
# ╠═c657ad7f-4ce0-4b06-896d-7f21929526e9
# ╠═cfefa8f1-3763-42bb-bdd1-f704492a0a16
# ╠═5f6b5e37-4903-4152-94aa-60b37e0da90c
# ╠═0ef76b1f-4db0-4a2d-9a5c-ef796c988f88
# ╠═cbb8bec9-347d-4270-abe5-7dfddaeedd13
# ╠═db167a08-83f6-463c-8811-eafc60f50a74
# ╠═8dce949d-955a-4cea-8e76-bf0b44ceefd1
# ╠═06971fc2-e1c2-4250-9dd1-c5edc3375f26
# ╠═0eb547b8-b73d-480f-893b-2a5741e1148c
# ╠═2ca21857-a415-461b-a0ef-315c6e6efbf7
# ╠═b0388892-eab4-466e-9f0c-9f3f81c93f6e
# ╠═1d7d09e9-7748-4a51-b97b-9e47f209e7b6
# ╠═a41fc797-9f74-4ee7-b68d-cf287a302f6b
# ╠═8de0b599-e289-478a-8881-4a5fd9b9d9c4
# ╠═f1192756-835a-472c-95a5-4d2dc436ed9e
# ╠═736a0bef-f71b-4e83-95b4-53fe4d12ba5e
# ╠═5d53c3f7-f4bd-4bfb-8f1f-2f0e875cf394
# ╠═c46ad11b-4139-49c2-8bf0-febb4d8294f8
# ╠═9ae3d140-b7f3-404a-8edd-52f4b8ff4e30
# ╠═39f806bc-6f7d-4eec-b3d8-e7383c912500
# ╠═85fb635e-3a8b-432d-ac58-e411428b1985
# ╠═0ed39c39-d309-433b-bf59-85ed395841e5
# ╠═c54dbe46-491d-42c3-b6fc-c26cb6a79016
# ╠═d993c288-cc23-441d-ad7b-d6562ccd4685
# ╠═75c943d1-905f-49d8-8536-ae1735aab26e
# ╠═7f94336a-a5fc-45e1-b969-5b9cf515e86f
