import numpy as np
import matplotlib.pyplot as plt

Ac = float(input("Enter carrier amplitude = "))
fc = float(input("Enter carrier frequency = "))
Am = float(input("Enter message signal amplitude = "))
fm = float(input("Enter message signal frequency = "))
Fs = 100  # Sampling rate/frequency

ka = 1  # Amplitude sensitivity
t = np.arange(0, 50, 0.1)  # Time values from 0 to 50 with step 0.1

ct = Ac * np.sin(2 * np.pi * fc * t)  # Carrier signal waveform
mt = Am * np.cos(2 * np.pi * fm * t)  # Message signal waveform
AM = ct * (1 + ka * mt)  # Amplitude modulated waveform

plt.subplot(3, 1, 1)
plt.plot(t, mt)
plt.title('Message signal')
plt.xlabel('Time')
plt.ylabel('Messaging signal')

plt.subplot(3, 1, 2)
plt.plot(t, ct)
plt.title('Carrier Signal')
plt.xlabel('Time')
plt.ylabel('Carrier')

plt.subplot(3, 1, 3)
plt.plot(t, AM)
plt.title('Amplitude Modulated Signal')
plt.xlabel('Time')
plt.ylabel('AM signal')

plt.tight_layout()
plt.show()
