1.1 Basic Programming Model
===========================
_Algorithms 4th Edition [Sedgewick, Wayne]_

__Language Constructs__

_Primitive types_

- possible range of values
- operations on those values
- create expressions by combining values with operations

_Statements_

- provide program control flow, context, and state
- _declarations_ associate a type with an identifier
- _assignments_ associate value with a declaration
- _conditionals_ decision based on input
- _loops_ repeat statements until condition is satisfied

__Java platform specifics__

- class <name> should be in file <name>.java
- compiled to jvm byte code as <name>.class
- execution entry/exit point is main()
- strongly typed
- block scoped
- java.lang methods are implicitly imported

__Compiling and running a Java program__

```bash
$ javac Example.java # => Example.class
$ java Example
```

__Java arrays__

an abstract collection of primitive data types
- passed by reference (e.g. a[i] = 2; a = b; b[i] // 2)
- support for two-dimensional arrays
```java
// short form
double[] a = new double[<size>];
// literal form
double[] a = { 1.0, 2.0};
```
__Java static methods__

- support multiple return statements
- support recursion
- void methods have no return value
- arguments are passed by value
  - object references are immutable
- method names can be overloaded (arity, types)

__Recursion__

1. establish base case (conditional + return statement)
2. alter arguments to converge on base case
3. _should not address overlapping sub-problems_

__Java best practices__

- use main() in a library to test the other static methods 
- write every file as a library, articulate the API and test it separate from the client

__Redirection and piping__

```bash
$ a < b # implement stdin by reading from file
$ a > b # implement stdout by writing to file
$ a | b # implement stdout of a as stdin of b (pipe)
```


__Questions__

1. Does java support passing functions as parameters?
2. What are the fundamentals of object-oriented programming?
3. What is a stack and a heap and how do they interact?
4. What does 'recursion should not address sub-problems that overlap' mean?
5. What is variance and standard deviation in statistics?
6. What is a Gaussian, Bernoulli, and discrete function?
7. Why does the value of Math.abs(-2147483648) = -2147483648?
8. Why is -14 % 3 = -2 by 14 % -3 = 2?
9. What is a first class function/object, does java support this?
10. Check out StdRandom and StdStats.java
11. How do you estimate how fast something is growing (e.g. ex_7 logarithms)?
