The first layer for KOTO LV2 daq.\
Event building for data from 16 channels within one ADC \
\
Write\
(i)   the payload of each ADC packet into ram_data\
(ii)  the size of each ADC packet into ram_es\
(iii) the L1A of each ADC packet into ram_L1A\
Compress\
Apply lossless compression to the data
\
Check\
The L1A of packets from 16 ADCs to ensure they are from the same event \
\
Send\
Read the payload from ram_data based on the size of each event. 

 
