# HalfAdderVerilog
A simple Verilog implementation of a Half Adder circuit with a testbench for simulation.

## Overview
This repository contains a Verilog module for a Half Adder, which takes two 1-bit inputs (`a` and `b`) and produces a sum (`s`) and carry (`c`) output. The testbench (`testbench.v`) verifies the functionality by testing all input combinations.

## Files
- `design.v`: The Dataflow Half Adder module.
- `testbench.v`: Dataflow Testbench to simulate the Half Adder.
- `design_HA_bh.v`: The Behavioral Half Adder module.
- `testbench_HA_bh.v`: Behavioral Testbench to simulate the Half Adder.

## Simulation
The code can be simulated on [EDA Playground](https://www.edaplayground.com). Select Icarus Verilog as the simulator and run the testbench to see the results.

## Usage
1. Copy `design.v` and `testbench.v` into EDA Playground.
2. Select Icarus Verilog as the simulator.
3. Run the simulation to verify the Half Adder's functionality.
