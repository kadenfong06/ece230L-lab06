# Number Theory: Addition

**Kaden Fong and Ethan Mix (Group 11)**

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary

In this lab, we learned how binary addition works using logic gates in Verilog. We started by using an XOR gate to control a light with two switches, then moved on to building a half adder and a full adder.

One of the biggest things we learned was how Cin and Cout work when adding binary numbers. The carry out from the LSB connects to the carry in of the MSB. This lets us carry numbers over just like we do in regular addition. We also learned how to connect multiple modules together in top.v using wires.

## Lab Questions

### 1 - How might you add more than two bits together?

We can add more bits by connecting multiple full adders together. Each full adder handles a column of binary addition, and the Cout from one connects to the Cin of the next. This lets us keep carrying values over as we move from the LSB to the MSB.

### 2 - What is the importance of the XOR gate in an adder?

The XOR gate is important because it helps us calculate the sum when adding binary numbers. XOR gives us a 1 when the two inputs are different and a 0 when they're the same. In a full adder, we use XOR with A, B, and Cin to figure out Y, while the other gates help calculate Cout.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?

The largest number we can represent with two bits is 3 or 11 in binary. When we add two two bit numbers together, the largest sum we can get is 6 or 110 in binary.

If our sum goes over 3, we need an extra bit to represent the answer. This is where Cout comes in. For example, 11 + 01 = 100, which is 4. The Cout from the MSB becomes the third bit of our answer. Without it, we'd lose that extra bit and end up with the wrong answer.