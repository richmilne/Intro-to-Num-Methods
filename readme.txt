This repository contains the contents of the CD-ROM accompanying the book
"An Introduction to Numerical Methods - A MATLAB Approach" (ISBN: 1-58488-281-6)
by Abdelwahab Kharab and Ronald B. Guenther, and published by Chapman & Hall/CRC


*********************
Software Requirements
*********************
To operate the Introduction to Numerical Methods CD ROM, Microsoft
Windows 95, 98, 2000, ME, or NT 4.x, must be installed on the host computer.
In addition, the user will also need Matlab 5 or higher installed.

*********************
Hardware Requirements
*********************
The recommended hardware requirements to operate the Introduction to Numerical
Methods are listed below.
· Pentium 1 processor or higher
· 16 MB RAM.
· Hard drive with 15 MB of available disk space.
· CD-ROM drive (4x).
· SVGA monitor at 800 x 600, 256 colors.

***************
CD ROM Contents
***************
The CD-ROM contains the following MATLAB m-functions, first ordered
alphabetically:

|Function|    M-file    |               Description              | Page|Section|
|--------|--------------|----------------------------------------|-----|-------|
|  9.4   |      abash.m | Adams-Bashford of orders 2, 3, and 4   | 277 |  9.6  |
|  9.5   |   amoulton.m | Adams-Moulton method                   | 286 |  9.8  |
|  3.1   |     bisect.m | Bisection method                       |  39 |  3.1  |
|  8.1   |     derive.m | Differentiation                        | 211 |  8.1  |
|  9.1   |      euler.m | Euler's method                         | 250 |  9.1  |
|  7.3   |    explsqr.m | Least squares fit, exponential         | 192 |  7.3  |
|  3.2   |      falsi.m | False position method                  |  47 |  3.2  |
| 10.1   | finitediff.m | Finite difference methods              | 315 | 10.1  |
|  3.5   |      fixed.m | Fixed point iteration                  |  64 |  3.6  |
|  8.5   | gauss_quad.m | Gaussian quadrature                    | 242 |  8.4  |
|  4.2   |    gaussel.m | Gaussian elimination, scaled pivoting  |  96 |  4.3  |
| 12.1a  |       heat.m | Parabolic differential equations       | 364 | 12.1  |
| 12.1b  | heat_crank.m | Parabolic differential equations       | 369 | 12.1  |
| 12.2   | hyperbolic.m | Hyperbolic differential equations      | 377 | 12.2  |
|  7.4   |    hyplsqr.m | Least squares fit, hyperbolic          | 195 |  7.3  |
|  4.4   |     jacobi.m | Jacobi iteration                       | 118 |  4.6  |
|  5.2   |   lagrange.m | Lagrange interpolation polynomial      | 149 |  5.4  |
| 12.3   |    laplace.m | Laplace's equation                     | 385 | 12.3  |
|  7.1   |    linlsqr.m | Least squares fit, linear              | 179 |  7.1  |
| 10.2   |     lshoot.m | Linear shooting method                 | 324 | 10.2  |
|  4.3   |     lufact.m | LU decomposition                       | 106 |  4.4  |
|  9.2   |   midpoint.m | Midpoint method                        | 266 |  9.4  |
|  3.4   |     newton.m | Newton's method                        |  54 |  3.4  |
|  3.6   |    newton2.m | Newton's method, multiple roots        |  69 |  3.7  |
|  3.8   | newton_sys.m | Newton's method for systems            |  76 |  3.8  |
|  5.1   |   newtondd.m | Interpolation, Newton differences      | 140 |  5.2  |
|  4.1   |   ngaussel.m | Gaussian elimination, naive            |  87 |  4.2  |
|  7.2   |   polylsqr.m | Least squares fit, polynomial          | 184 |  7.2  |
|  9.3   |      rk2_4.m | Runge-Kutta method, orders 2 and 4     | 267 |  9.4  |
|  8.4   |    romberg.m | Romberg integration                    | 235 |  8.3  |
|  3.3   |     secant.m | Secant method                          |  50 |  3.5  |
|  4.5   |     seidel.m | Gauss-Seidel iteration                 | 121 |  4.7  |
|  8.3   |    simpson.m | Simpson's rule                         | 226 |  8.2  |
|  6.1   |       spl1.m | Spline, linear                         | 156 |  6.1  |
|  6.2   |       spl3.m | Spline, cubic                          | 165 |  6.3  |
|  9.6   |    sys_rk4.m | System of differential equations       | 295 |  9.11 |
|  8.2   |     trapez.m | Trapezoidal rule                       | 216 |  8.1  |

... and here by topic:

Roots of Equations:

|Function|    M-file    |               Description              | Page|Section|
|--------|--------------|----------------------------------------|-----|-------|
|  3.1   |     bisect.m | Bisection method                       |  39 |  3.1  |
|  3.2   |      falsi.m | False position method                  |  47 |  3.2  |
|  3.3   |     secant.m | Secant method                          |  50 |  3.5  |
|  3.4   |     newton.m | Newton's method                        |  54 |  3.4  |
|  3.5   |      fixed.m | Fixed point iteration                  |  64 |  3.6  |
|  3.6   |    newton2.m | Newton's method, multiple roots        |  69 |  3.7  |
|  3.8   | newton_sys.m | Newton's method for systems            |  76 |  3.8  |

System of Linear Equations:

|Function|    M-file    |               Description              | Page|Section|
|--------|--------------|----------------------------------------|-----|-------|
|  4.1   |   ngaussel.m | Gaussian elimination, naive            |  87 |  4.2  |
|  4.2   |    gaussel.m | Gaussian elimination, scaled pivoting  |  96 |  4.3  |
|  4.3   |     lufact.m | LU decomposition                       | 106 |  4.4  |
|  4.4   |     jacobi.m | Jacobi iteration                       | 118 |  4.6  |
|  4.5   |     seidel.m | Gauss-Seidel iteration                 | 121 |  4.7  |

Interpolation:

|Function|    M-file    |               Description              | Page|Section|
|--------|--------------|----------------------------------------|-----|-------|
|  5.1   |   newtondd.m | Interpolation, Newton differences      | 140 |  5.2  |
|  5.2   |   lagrange.m | Lagrange interpolation polynomial      | 149 |  5.4  |

Interpolation with Spline Functions:

|Function|    M-file    |               Description              | Page|Section|
|--------|--------------|----------------------------------------|-----|-------|
|  6.1   |       spl1.m | Spline, linear                         | 156 |  6.1  |
|  6.2   |       spl3.m | Spline, cubic                          | 165 |  6.3  |

The Method of Least Squares:

|Function|    M-file    |               Description              | Page|Section|
|--------|--------------|----------------------------------------|-----|-------|
|  7.1   |    linlsqr.m | Least squares fit, linear              | 179 |  7.1  |
|  7.2   |   polylsqr.m | Least squares fit, polynomial          | 184 |  7.2  |
|  7.3   |    explsqr.m | Least squares fit, exponential         | 192 |  7.3  |
|  7.4   |    hyplsqr.m | Least squares fit, hyperbolic          | 195 |  7.3  |

Numerical Differentiation and Integration:

|Function|    M-file    |               Description              | Page|Section|
|--------|--------------|----------------------------------------|-----|-------|
|  8.1   |     derive.m | Differentiation                        | 211 |  8.1  |
|  8.2   |     trapez.m | Trapezoidal rule                       | 216 |  8.1  |
|  8.3   |    simpson.m | Simpson's rule                         | 226 |  8.2  |
|  8.4   |    romberg.m | Romberg integration                    | 235 |  8.3  |
|  8.5   | gauss_quad.m | Gaussian quadrature                    | 242 |  8.4  |

Numerical Methods for Ordinary Differential Equations:

|Function|    M-file    |               Description              | Page|Section|
|--------|--------------|----------------------------------------|-----|-------|
|  9.1   |      euler.m | Euler's method                         | 250 |  9.1  |
|  9.2   |   midpoint.m | Midpoint method                        | 266 |  9.4  |
|  9.3   |      rk2_4.m | Runge-Kutta method, orders 2 and 4     | 267 |  9.4  |
|  9.4   |      abash.m | Adams-Bashford of orders 2, 3, and 4   | 277 |  9.6  |
|  9.5   |   amoulton.m | Adams-Moulton method                   | 286 |  9.8  |
|  9.6   |    sys_rk4.m | System of differential equations       | 295 |  9.11 |

Boundary-Value Problems:

|Function|    M-file    |               Description              | Page|Section|
|--------|--------------|----------------------------------------|-----|-------|
| 10.1   | finitediff.m | Finite difference methods              | 315 | 10.1  |
| 10.2   |     lshoot.m | Linear shooting method                 | 324 | 10.2  |

Partial Differential Equations:

|Function|    M-file    |               Description              | Page|Section|
|--------|--------------|----------------------------------------|-----|-------|
| 12.1a  |       heat.m | Parabolic differential equations       | 364 | 12.1  |
| 12.1b  | heat_crank.m | Parabolic differential equations       | 369 | 12.1  |
| 12.2   | hyperbolic.m | Hyperbolic differential equations      | 377 | 12.2  |
| 12.3   |    laplace.m | Laplace's equation                     | 385 | 12.3  |


*****************
Technical Support
*****************
(561) 361-6066
E-mail: techsupport@crcpress.com