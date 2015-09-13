1.1 Basic Programming Model
===========================
_Algorithms 4th Edition [Sedgewick, Wayne]_

__1.1.1 Give the value of each of the following expressions__
 
```java
( 0 + 15 ) / 2 // => 7
```
integer division rounds down to real number

```java
2.0e-6 * 100000000.1 // => 200.0000001
```
answer can be obtained faster by expressing both answers in scientific notation and distributing the multiplier
2.0e-6 * (1.0e8 + 1.0e-1)
2.0e2 + 2.0e-7


```java
true && false || true && true // => true
```
in java, AND has precedence over OR... just use parentheses

__1.1.2 Give the type and value of each of the following expressions__

```java
(1 + 2.236) / 2 // => 1.618 [java.lang Double]
1 + 2 + 3 + 4.0 // => 10.0 [java.lang Double]
4.1 >= 4 // => true [java.lang Boolean]
```
java supports operators across numeric types

```java
1 + 2 + "3" // => "33" [java.lang String]
```
operators of the same precedence are evaluated left to right
java supports coercion of numeric values into Strings

__1.1.3 Write a program that takes three integer command-line arguments and prints equal if all three are equal, and not equal otherwise.__

```java
public static void main (String args[]) {
    if (args.length != 3) System.out.println('requires 3 arguments');
    System.out.println(args[0] == args[1] && args[1] == args[2] ? "equal" : "not equal");
}
```
