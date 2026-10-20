% BioAstroLab.m

% TODO: With actual EMG Data -> Import all trials and plot ALL trials over one another, remove the RMS plot

clc;
clear;
close all;

%% Handle .txt File Import and Conversion to an Array
data = readtable('activation1.txt'); % change the name of the .txt file inside the ('') to the desired data file

time = data(:,1); % reads the Time column into a table
timeMatrix = table2array(time); % converts the Time table into an array to be able to use functions that operate on arrays

voltage = data(:,2); % same story with Voltage, reads the Voltage column into a table
voltageMatrix = table2array(voltage); % convers the Voltage table into an array

%% Calculate Necessary Data from Provided Data File
meanVoltage = rms(voltageMatrix);
stdDevVoltage = std(voltageMatrix);

vMin = min(voltageMatrix); % Determines the minimum voltage
vMax = max(voltageMatrix); % Determines the maximum voltage
voltageRange = vMax - vMin; % Calculates the voltage range

[vPeak, idxPeak] = max(voltageMatrix);   % calculates the peak voltage and its index
tPeak = timeMatrix(idxPeak);

fprintf('Voltage Range: %f V\n', voltageRange)
fprintf('Minimum Voltage: %f V\n', vMin)
fprintf('Maximum Votage: %f V\n', vMax)
fprintf('Time from base to peak voltage: %f sec\n', tPeak)
fprintf('Mean Voltage: %f V\n', meanVoltage)

%% Plot Voltage vs. Time as well as RMS Voltage as a horizontal dashed line
hold on
plot(timeMatrix, voltageMatrix, LineWidth=2)
yline(meanVoltage, '--r',LineWidth=2)
hold off
xlabel("Time (sec)")
ylabel("Voltage (V)")
legend('V(t)', 'RMS Voltage')
title("Voltage (V) vs. Time (sec)")
grid on