# 4-bit Up-Counter in Verilog

## Overview

In this project, I implemented a 4-bit up-counter in Verilog using behavioral modeling. My goal was to create a circuit that increments a 4-bit counter from 0 to 15 on each positive clock edge when enabled, with a synchronous reset to clear the count. For example, if the counter is at 0101 (5) and enable=1, it becomes 0110 (6) on the next clock edge. I designed the counter with clock, reset, and enable inputs, and wrote a testbench to verify its functionality by testing reset, counting, and disable scenarios. I confirmed the design works as expected through simulation.

Module: up_counter





What I Did: I designed a 4-bit up-counter that increments based on an enable signal.



Inputs:





clk: Clock signal (positive edge-triggered).



reset: Synchronous reset to clear the counter.



enable: Enable signal to allow counting.



Outputs:





count[3:0]: 4-bit counter output (0 to 15).



How It Works:





On the rising edge of clk, if reset=1, I set count=0.



If reset=0 and enable=1, I increment count by 1 (count <= count + 1).



If enable=0, count remains unchanged.



For example, if count=0011 (3), reset=0, and enable=1, then count=0100 (4) after the clock edge.



Style: Behavioral modeling with an always @(posedge clk) block.

Testbench: up_counter_tb





What I Did: I created a testbench to verify the 4-bit up-counter.



How It Works:





I defined clk, reset, and enable as inputs, and count[3:0] as the output.



I generated a clock with a 10ns period (forever #5 clk=~clk).



I applied the following sequence:





reset=1, enable=1 for 10ns (resets count to 0).



reset=0, enable=1 for 200ns (counts up).



enable=0 for 20ns (pauses counting).



I did not include $monitor or $display in the testbench, so I expect to observe outputs via waveform analysis.



Time Scale: I set 1ns / 1ps for precise simulation timing.



Purpose: The testbench verifies the counter resets to 0, increments when enabled, and holds its value when disabled.

Files





up_counter.v: Verilog module for the 4-bit up-counter.



up_counter_tb.v: Testbench for simulation.


## Simulation Waveform

Below is the simulation waveform, showing inputs clk, reset, enable, and output count[3:0] over time.


<img width="761" alt="image" src="https://github.com/user-attachments/assets/85615086-7549-4d37-b253-a39b02bc70d1" />
