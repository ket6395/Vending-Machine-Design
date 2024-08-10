

## Vending Machine Design using FSM in Xilinx Vivado

## Project Overview

This project involves the design and implementation of a simple vending machine using a Finite State Machine (FSM) in Xilinx Vivado. The vending machine accepts only ₹5 and ₹10 denominations and dispenses a single product priced at ₹15. The FSM is designed with three states to manage the coin inputs and the dispensing process.

## Features

- **Coin Denominations**: Accepts ₹5 and ₹10 coins.
- **Product Cost**: The product costs ₹15.
- **State Management**: The FSM is designed with three states:
  - **State 1**: Initial state, where the machine awaits the first coin input.
  - **State 2**: Intermediate state, where the machine waits for the remaining amount to reach ₹15.
  - **State 3**: Final state, where the product is dispensed if the total amount is ₹15, and the machine resets.

## Tools Used

- **Xilinx Vivado**: For simulation and implementation of the FSM.
- **Verilog**: Hardware Description Language used for coding the FSM.

## How It Works

1. **Initial State (S0)**: The vending machine starts in this state, waiting for the user to insert a coin.
2. **Intermediate State (S1)**: If a ₹5 coin is inserted, the machine transitions to this state, waiting for an additional ₹10 or another ₹5 to complete the payment.
3. **Final State (S2)**: When the total amount reaches ₹15, the machine dispenses the product and resets to the initial state.


