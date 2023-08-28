clc;
clear all;
close all;

% User inputs
Am = input('Enter Amplitude (Message) = '); % Message signal amplitude
Ac = input('Enter Amplitude (Carrier) '); % Carrier amplitude
fm = input('Enter Message frequency = '); % Message signal frequency
fc = input('Enter Carrier frequency = '); % Carrier frequency
ka = input('Enter Modulation Index =  '); % Amplitude Sensitivity

t = 0:0.001:1; % Defining the time range & discretizing it into samples
ct = Ac * cos(2*pi*fc*t); % Defining the carrier signal wave
mt = Am * cos(2*pi*fm*t); % Defining the message signal
AM = ct .* (1 + ka * mt); % Amplitude Modulated wave, according to the standard definition

subplot(3,1,1); % Plotting the message signal wave
plot(t, mt);
xlabel('Time');
ylabel('Amplitude');
title('Message ');

subplot(3,1,2); % Plotting the carrier signal wave
plot(t, ct);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');

subplot(3,1,3); % Plotting the amplitude modulated wave
plot(t, AM);
xlabel('Time');
ylabel('Amplitude');
title('AM Signal');

% Adding labels to the x-axis and a title to the plot
%Enter carrier amplitude = 2
%Enter carrier signal = .5
%Enter message signal amplitude = .5
%Enter message signal frequency = .05