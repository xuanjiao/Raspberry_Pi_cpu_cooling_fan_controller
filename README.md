# Raspberry Pi CPU cooling fan controller

The script turn the fan on when needed by monitoring the CPU temperature.

# Requirement

* Raspberry Pi Model 3B
* Pi fan
* 220R resistor
* PNP transistor
* Breadboard 
* Jumper wires

# Installation

```
git clone https://github.com/xuanjiao/Raspberry_Pi_cpu_cooling_fan_controller.git
```
# Usage
1.  Build the circuit
![2](fan_circuit\fan_circuit_bb.png)
2.  Use the script
    ```
    sh fan_controller.sh
    ```
3.  Register script to be run at startup (optional)

# A explanation of the circuit


![1](fan_circuit\fan_circuit_graph.png)
* The PNP transistor is used as an electronic switch. It's necessary because the GPIO pin(3.3v) can not power the fan(5v). So we power the fan using 5v pin but switch it on and off using the GPIO pin.

* The base resistor is used to limit the current.


