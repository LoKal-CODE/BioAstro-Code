# BioAstro Lab Code

This repo contains all pertinent code and data files for the ASEN2501 BioAstro Lab Report

## Usage

- Ensure that data is stored in a .txt file
- On line 10, update the name inside of table2array('') to the name of the data file to be analyzed

```matlab
data = table2array('YOURDATAHERE.txt');
```

- Run the script to generate relevant plots and calculate relevant values

## Code Synopsis

In the current state, the code accepts .txt file data, assumed to be of 2 columns, and assumed to be time in the first column, and voltage in the second column.

An example of what the .txt file is assumed to contain follows:

```txt
Time (s),Voltage (V)
0,4.55522971652004
0.0161330000013109,4.55522971652004
0.0480659999996433,4.55522971652004
```

The code then converts the tabular data to arrays that can be used in MATLAB functions

The code then calculates the RMS voltage, standard deviation in voltage, minimum voltage, maximum voltage, voltage range, and time from base voltage to peak voltage.

The code then prints these values to the MATLAB command line, currently to no specific decimal place, this may be changed if necessary.

Finally, the code plots the overall Voltage vs. Time and a horizontal line representing the RMS voltage.

## Inputs and Outputs

Inputs:

- .txt data file

Outputs (Command Line):

- RMS Voltage (Volts)
- Standard Deviation in Voltage (Volts)
- Minimum Voltage (Volts)
- Maximum Voltage (Volts)
- Voltage Range (Volts)
- Time from base voltage to peak voltage (seconds)

Outputs (Plots):

- Voltage vs. Time
- RMS Voltage (horizontal, dashed line)