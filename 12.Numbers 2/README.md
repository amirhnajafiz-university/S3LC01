# Numbers 2

<pre>
Numbers 2:

Sum in base 2:
just like base 10 evey digit sums with its same place digit and creates a new carry out for next digits.

0 + 0 = 0
1 + 0 = 0 + 1 = 1
1 + 1 = 0 (1 CO )
1 + 1 + 1 = 1 ( 1 CO )

Overflow :: if we add two n-bits and the result is n+1-bits we get overflow.

Sub in base 2:
just like base 10 each digit subtracts from the digit it place but it might borrow a 1 from the next digit.

0 - 0 = 1 - 1 = 0
1 - 0 = 1
0 - 1 = 1 ( 1 B )

Ex:
Borrow 		1 1 0 0
Minuend 		1 1 0 1 1
Subtrahend	0 1 1 0 1
Result =		0 1 1 1 0

Numbers display:
Negative numbers => 1.  Sign magnitude
		2. Ones complement
		3. Twos complement

If we imagine a 4-bit machine:
	we have the first bit from left for the number sign ( 0+ / 1- )
	0000 = +0    0001 = +1    0010 = +2    0011 = +3
	0100 = +4    0101 = +5    0110 = +6    0111 = +7
	1000 = -0     1001 = -1     1010 = -2    1011 = -3
	1100 = -4     1101 = -5     1110 = -6     1111 = -7
So the numbers range in this form is  [-(2^n-1 -1), +(2^n-1 -1)]
This is the sign magnitude form.

Note :: The zeros and ones are not binary numbers, they are symbols which we translate into sign magnitude or anything else.

Ones complement:
N` = (2^n - 1) - N ( n is the numbers of machine total bits )
>> N is positive number, then N` is its negative 1's complement

Ex:
2^4 = total bit => 100000
number = +7 
=> 100000 - 00001 = 1111 => 0111 = 7
=> 1111 - 0111 = 1000
so -7 in 1's complements is 1000

>> To simply find it just swap(0,1)s and +1
7 = 0111 >> 1000 is -7 in 1's complement

In this type of implimenting we have:
	0000 = +0    0001 = +1    0010 = +2    0011 = +3
	0100 = +4    0101 = +5    0101 = +6    0111 = +7
	1000 = -7     1001 = -6    1010 = -5     1011 = -4
	1100 = -3     1101 = -2     1110 = -1     1111 = -0

Twos complement:
its just like the 1's comp except shifted one position clockwise.
It does not have -0, beside it has one more negative number.

In this type of implimenting we have:
	0000 = +0    0001 = +1    0010 = +2    0011 = +3
	0100 = +4    0101 = +5    0101 = +6    0111 = +7
	1000 = -8     1001 = -7    1010 = -6     1011 = -5
	1100 = -4     1101 = -3     1110 = -2     1111 = -1

N* = 2^n - N (n is total number of bits )

Ex:  sub 7 = 0111 => 1's comp = 1000 + 1 = 1001 2'd comp

>> sub of a sub number its the first number.


Sum and Sub in 2'd comp:
In sumation and subtraction we can have overflow, but not every overflow is wrong.

Def => carry-in to sign : is number that sums with sign bit part in our sumation
Def => carry-out: is the left sided digit of 4 bits ( n bits )

Note::
If
(carry-in to sign = carry-out )
	then ignore carry
if
(carry-in != carry-out)
	then overflow


Overflow Conditions >>
	Add two positive numbers to get a negative number
	or two negative numbers to get a positive number

To check overflow in a nutshell :
	Method 1: Overflow when carry in to sign ≠ carry out
	Method 2: Overflow when sign(A) = sign(B) ≠ sign (result)
</pre>

<pre>
Numbers Continue .....

Binary multiplication:
	Just like the 10 base we multipli every bit with other bits and write them down with a shift in every line and then sum them up with each.

Ex:
M’cand 	0 0 0 1 1 0 1
M’plier 	0 0 0 0 1 1 0
(1) 	      0 0 0 0 0
(2) 	   0 1 1 0 1
(3) 	0 1 1 0 1
Sum 	1 0 0 1 1 1 0


Binary-Coded Decimal
A decimal code: Decimal numbers (0..9) are coded using 4-bit distinct binary words.

0000 = 0 / 0001 = 1 / 0010 = 2 / 0011 = 3 / 0100 = 4 / 0101 = 5 / 0110 = 6 / 0111 = 7 / 1000 = 8 / 1001 = 9

Observe that the codes 1010 .. 1111 (decimal 10..15) are NOT represented (invalid BCD codes)

To code a number with n decimal digits, we need 4n bits in BCD
	e.g. (365)10 = (0011 0110 0101)BCD
>> Its different from binary form

:: >> Note that the sumation is not the same result with binary format
BCD addition is therefore performed as follows :
	1) Add the two BCD digits together using normal binary addition
	2) Check if correction is needed
		a) 4-bit sum is in range of 1010 to 1111
		b) carry out of MSB = 1
	3) If correction is required, add 0110 to 4-bit sum to get the correct result;
		=> BCD carry out = 1
Example: Add 448 and 489 in BCD.
	0100 0100 1000 (448 in BCD)
	0100 1000 1001 (489 in BCD)
		10001 (greater than 9, add 6)
	         	10111 (carry 1 into middle digit)
	         1101 (greater than 9, add 6)
	         10011 (carry 1 into leftmost digit)
	1001 0011 0111 (BCD coding of (937)10 ) 

BCD Negative Number Representation:
similar to binary negative number representation but for r = 10
BCD 9’s complement :
− invert each BCD digit (0=>9, 1 => 8, 2 => 7,3 => 6, …7 => 2, 8 => 1, 9 => 0)
BCD 10’s complement :
− -N = 10^n - N; 9’s complement + 1

ASCII character code:
128 characters => 7-bit binary codes

Unicode => 16-bit implementation

</pre>

* [Check this website for examples](https://www.cimt.org.uk/projects/mepres/book9/bk9i1/bk9_1i2.html)
