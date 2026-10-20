% BioAstroLab.m

clc;
clear;
close all;


data = readtable('activation1.txt');

time = data(:,1);
timeMatrix = table2array(time);
voltage = data(:,2);
voltageMatrix = table2array(voltage);

meanVoltage = rms(voltageMatrix);
stdDevVoltage = std(voltageMatrix);
maxVoltage = max(voltageMatrix);
disp("Max voltage: " + maxVoltage)

%timeAtMaxVoltage = timeMatrix(maxVoltage);

[minVolt, maxVolt] = bounds(voltageMatrix, 'all');
disp("min voltage: " + minVolt)

fprintf('Mean Voltage: %f V\n', meanVoltage)

hold on
plot(timeMatrix, voltageMatrix, LineWidth=2)
yline(meanVoltage, '--r',LineWidth=2)
hold off
xlabel("Time (sec)")
ylabel("Voltage (V)")
legend('V(t)', 'RMS Voltage')
title("Voltage (V) vs. Time (sec)")
grid on