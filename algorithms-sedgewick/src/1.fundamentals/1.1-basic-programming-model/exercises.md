1.1 Basic Programming Model
===========================
_Algorithms 4th Edition [Sedgewick, Wayne]_

__1.1.1 Give the value of each of the following expressions__

```java
( 0 + 15 ) / 2 // => 7
```
integer division rounds down to nearest integer

```java
2.0e-6 * 100000000.1 // => 200.0000001
// 2.0e-6 * (1.0e8 + 1.0e-1) = 2.0e2 + 2.0e-7
```
answer can be obtained faster by expressing both answers in scientific notation and distributing the multiplier

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

__1.1.4 What (if anything) is wrong with each of the following statements?__

```java
if (a > b) then c = 0;       // syntax error, no 'then' keyword in java
if a > b { c = 0; }          // syntax error, if expression needs parentheses
if (a > b) c = 0;            // ok
if (a > b) c = 0 else b = 0; // syntax error, assignment in if body needs statement terminator
```

__1.1.5 Write a code fragment that prints true if the double variables x and y are both strictly between 0 and 1 and false otherwise__

```java
public static void range (double x, double y, double low, double high) {
    System.out.println( low < x && x < high && low < y && y < high ? "true" : "false");
}
range(0.5, 0.2, 0, 1); // => "true"
```

__1.1.6 What does the following program print?__

```java
int f = 0;
int g = 1;
for (int i = 0; i <= 15; i++) {
    StdOut.println(f);
    f = f + g;
    g = f - g;
}
```

It prints the first 15 numbers of the fibonacci sequence

__1.1.7 Give the value printed by each of the following code fragments__

```java
double t = 9.0;
while (Math.abs(t - 9.0/t) > .001)
    t = (9.0/t + t) / 2.0;
StdOut.printf("%.5f\n", t); // => 3.00009
```

The answer is close to the square root of 9 using newton's approximation method

```java
int sum = 0;
for (int i = 1; i < 1000; i++)
    for (int j = 0; j < i; j++)
        sum++;
StdOut.println(sum); // => 499500
```

This can be expressed as an arithmetic series of {1,2,3,...,999}
n(n+1)/2 where n=999

```java
int N = 1000;
int sum = 0;
for(int i = 1; i < 1000; i*=2)
    for (int j = 0; j < N; j++)
        sum++;
StdOut.println(sum); // => 10000
```

the number of iterations of the outer loop can be expressed as ceiling(log2(1000))) = 10

__1.1.8 What do each of the following print?__

```java
System.out.println('b'); // => 'b', prints the char literal 'b'
System.out.println('b' + 'c'); // => 197, addition promotes char to their respective int char codes
System.out.println((char) ('a' + 4)); // => 'e', char code 97 + 4 = 101 which casted into char is 'e'
```

__1.1.9 Write a code fragment that puts the binary representation of a positive integer N
into a String s__

```java
public static binaryString(int n) {
    String s = "";
    for(int i; i < n; n/=2)
        s = (n % 2) + s;
}
```

halve the number on each successive iteration, each new char added to string represents a power of two
the value of the char is '1' if the number is odd, '0' if even

__1.1.10 What is wrong with the following code fragment?__

```java
int[] a;
for (int i = 0; i < 10; i++)
    a[i] = i * i;
```

The array does not allocate any memory, a valid declaration would be int[] a = new int[10];

__1.1.11 Write a code fragment that prints the contents of a two-dimensional boolean array, using * to represent true and a space to represent false. Include row and column numbers.__

```java
public class print2D {
    public static void main(String args[]) {
        boolean[][] b = new boolean[][] {
            new boolean[] { true, false, true},
            new boolean[] { false, true, false},
            new boolean[] { true, true, false}
       };
       int rows = b.length;
       int column_size = 3;
       String s = "";
       StdOut.print("  ");
       for (int i=0; i < rows; i++) {
           for (int j=0; j < column_size; j++) {
               if (i==0) StdOut.print(j+" ");
               if (j==0) s += (i+" ");
               s += b[i][j] == true ? "* " : "  ";
           }
           if (i==0) StdOut.print("\n");
           StdOut.println(s);
           s="";
      }
  }
}
```


__1.1.12 What does the following code fragment print?__

```java 
int[] a = new int[10];
for (int i = 0; i < 10; i++)
    a[i] = 9 - i;
for (int i = 0; i < 10; i++)
    a[i] = a[a[i]];
for (int i = 0; i < 10; i++) 
    System.out.println(i); // => 0 1 2 3 4 5 6 7 8 9, separated by \n
```

__1.1.13 Write a code fragment to print the transposition (rows and columns changed) of a two-dimensional array with M rows and N columns.__

```java
public static void transpose(int rows, int columns) {
    int[][] a = new int[rows][columns];
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < columns; j++) {
            a[i][j] = j;
            System.out.printf("%-3d", a[i][j]);
        }
        System.out.print("\n");
    }
    for (int i=0; i < columns; i++) {
        for (int j = 0; j < rows; j++) {
            System.out.printf("%-3d", a[j][i]);
        }
        System.out.print("\n");
    }
}           
```

__1.1.14 Write a static method lg() that takes an int value N as argument and returns the largest int not larger than the base-2 logarithm of N. Do not use Math.__

```java
public static int lg(int N) {
    int value = 0;
    while (N > 1) {
        N/=2;
        value++;
    }
    return value;
}
```

__1.1.15 Write a static method histogram() that takes an array a[] of int values and an integer M as arguments and returns an array of length M whose ith entry is the num- ber of times the integer i appeared in the argument array. If the values in a[] are all between 0 and M–1, the sum of the values in the returned array should be equal to a.length.__

```java
public static int[] histogram(int[] a, int M) {
    int[] h = new int[M];
    for (int i=0; i<a.length; i++) {
        h[a[i]]++; 
    }
    return h;
}
// histogram({0,0,1,2}, 4) => [2, 1, 1, 0] 
```

__1.1.16 Give the value of exR1(6):__

```java
public static String exR1(int n) {
    if (n <= 0) return "";
    return exR1(n-3) + n + exR1(n-2) + n;
}
```
where exR1 = a:

* a6 = (a3 + "6" + a4 + "6")
* a4 = (a1 + "4" + a2 + "4")
* a3 = ("" + "3" + a1 + "3")
* a2 = ("" + "2" + "" + "2")
* a1 = ("" + "1" + "" + "1")
* a6 = ("3113" + "6" + "114224" + "6")

a6 = "311361142246"

___1.1.17 Criticize the following recursive function:___

```java
public static String exR2(int n)
{
String s = exR2(n-3) + n + exR2(n-2) + n;
if (n <= 0) return "";
return s;
}
```

Invoking this function will result in a stack overflow error because the base case will never be reached.

__1.1.18 Consider the following recursive function:__

```java
public static int mystery(int a, int b) {
    if (b == 0)     return 0;
    if (b % 2 == 0) return mystery(a+a, b/2);
    return mystery(a+a, b/2) + a;
}
```

_What are the values of mystery(2, 25) and mystery(3, 11)? Given positive integers a and b, describe what value mystery(a, b) computes. Answer the same question, but replace + with * and replace return 0 with return 1._

```java
mystery(2, 25)
    1) =>  mystery(4, 12) + 2
    2) =>  ( mystery(8, 6) ) + 2
    3) =>  ( mystery(16, 3) + 16 ) + 2
    4) =>  (( mystery(32, 1) + 32 ) + 16) + 2
    5) =>  (( mystery(64, 0) + 32 ) + 16) + 2
    6) =>  (0) + 32 + 16 + 2
    = 50

mystery(3, 11)
    1) => mystery(6, 5) + 3
    2) => (mystery(12, 2) + 6) + 3
    3) => (mystery(24, 1) + 6) + 3
    4) => ((mystery(48,0) + 24) + 6) + 3
    5) => (0) + 24 + 6 + 3
    = 33
```

For positive integers a and b, mystery(a, b) = a * b.
When changing the addition operator to the multiplication operator and returning 1 in the base case, a grows exponentionally proportional to log2(b) but I can't figure out the exact formula right now.

__1.1.19 Run the following program on your computer__

```java
public class Fibonacci {
    public static long F(int N) {
        if (N == 0) return 0;
        if (N == 1) return 1;
        return F(N-1) + F(N-2);
    }
    public static void main(String[] args) {
        for (int N = 0; N < 100; N++)
        StdOut.println(N + " " + F(N));
    }
}
```

_What is the largest value of N for which this program takes less than 1 hour to compute for F(N)?_

todo: answer this question

_Develop a better implementation of F(N) that saves computed values in an array_

```java 
public class Fibonacci {
    public static long memoizedFib(int N) {
        long[] memo = new long[N+1];
        return F(N, memo);
    }
    public static long F(int N, long[] memo) {
        if (memo[N] == 0) {
            if (N == 1) {
                memo[N] = 1;
            }
            else if (N > 1) {
                memo[N] = F(N-1, memo) + F(N-2, memo);
            }
        }
        return memo[N];
    }
    public static void main(String[] args) {
        for (int N = 0; N < 100; N++)
            StdOut.println(N + " " + memoizedFib(N));
    }
}        
```


_1.1.20 Write a recursive static method that computes the value of ln (N!)_

naive implementation, can result in stack overflow at high N values
```java
public static double factorialLog(int N) {
   if (N == 1) return 0;
   else return Math.log(N) + ln(N-1);
}
```

_1.1.21 Write a program that reads in lines from standard input with each line containing a name and two integers and then uses printf() to print a table with a column of the names, the integers, and the result of dividing the first by the second, accurate to three decimal places. You could use a program like this to tabulate batting averages for baseball players or grades for students._

```java
public class table {
    public static void main (String args[]) {
        String[] lines = StdIn.readAllLines();
        String[] line;
        float result;
        String format = "%s | %s | %s |  %.2f\n";
        for (int i=0; i<lines.length; i++) {
            line = lines[i].split(" ");
            result = Float.parseFloat(line[1]) / Float.parseFloat(line[2]);
            System.out.printf(format, line[0], line[1], line[2], result);
        }
    }
}
```

_1.1.22 Write a version of Binary Search that uses the recursive rank() given on page 25 and traces the method calls. Each time the recursive method is called, print the argument values lo and hi, indented by the depth of the recursion. Hint: Add an argument to the recursive method that keeps track of the depth._

```java

public static String repeat(char c, int times) {
    String s = "";
    for (int i = 0; i < times; i++) {
        s += c;
    }
    return s;
}
public static int rank(int key, int[] a) {
    int iteration = 0;
    return rank(key, a, 0, a.length - 1, iteration);
}
public static int rank(int key, int[] a, int lo, int hi, int iteration) {
    // Index of key in a[], if present, is not smaller than lo
    //                                  and not larger than hi.
    System.out.printf("%slo:%d hi:%d\n", repeat(' ', iteration), lo, hi);
    if (lo > hi) return -1;
    int mid = lo + (hi - lo) / 2;
    if      (key < a[mid]) return rank(key, a, lo, mid - 1, ++iteration);
    else if (key > a[mid]) return rank(key, a, mid + 1, hi, ++iteration);
    else                   return mid;
}

```

_1.1.23 Add to the BinarySearch test client the ability to respond to a second argu- ment: + to print numbers from standard input that are not in the whitelist, - to print numbers that are in the whitelist._

The main method from page p.47 can be written in the following manner to produce the desired result


```java
// [usage] java BinarySearch tinyW.txt + < tinyT.txt 
public static void main(String[] args) {
    int[] whitelist = In.readInts(args[0]);
    Arrays.sort(whitelist);
    String filter = "+";
    if (args.length > 1) {
        filter = args[1];
    }
    while (!StdIn.isEmpty()) {
        int key = StdIn.readInt();
        int index = rank(key, whitelist
        if (index < 0 && filter.equals("+"))
            StdOut.println(key);
        else if (index >= 0 && filter.equals("-"))
            StdOut.println(key);
        }
    }
}
```
