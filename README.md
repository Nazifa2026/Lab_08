# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Nazifa Bakhshi(49)

## Summary
In this lab, we built a multiplexer (MUX) and demultiplexer (DEMUX) in Verilog and tested them on the Basys3 board. The MUX chose one of four 4-bit inputs and sent it to one output using two button selectors. Then the DEMUX took that output and sent it to one of four destinations using two other buttons. The center button enabled both modules, the switches were used for input data, and the LEDs showed the output. This lab helped show how MUX and DEMUX work together to control data flow in a digital system.

## Lab Questions

### In plain English describe the function and use of a multiplexer.
A multiplexer is like a selector. It takes many inputs but lets only one input go to the output at a time.
Which input gets chosen depends on the select lines.

### In plain English describe the function and use of a demultiplexer.
A demultiplexer does the opposite of a multiplexer.It takes one input and sends it to one of many outputs.

### What other uses might these circuits have? (Think Shannon’s)
They can also be used to build logic circuits. With Shannon’s expansion, a MUX can implement Boolean functions.
A DEMUX can be used to send one signal to different outputs or devices.

