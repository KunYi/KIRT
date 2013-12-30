KIRT
====

a little MCU project



==========
Power Source
==========
CR2032. Li-Coin , 3.0V
cuf-off : 2.0V, Total capacity 95% over 2.5V

=======
MCU
=======
  Hycontek, HY11P13

  SD18, TPS  Calibration when enviroments temperature: 25C
  
  Get TPS0 (TPSH0/TPSL0)
	  set INH, INL   (111B, 110B)	
  Get TPS1 (TPSH1/TPSL1)
	  set INH, INL   (110B, 111B)

   Get Slope: (TPS0+TPS1/2)/298.15Kelvin (25C) 
   Ref. Page 135 at UG-HY11S14_TC.pdf

==========
Sensor:
==========
	SEMITEC 10TP583T

-----------------------
Equivalent circuits
-----------------------

	Thermopile  

        pin1 -------Vo ------ R(65KOhm +-30%) -------------- pin 3
		
	     Vo : 1mV +-30%  When Object temperature (37C) , when enviroments temperature 298.15 Kelvin (25C)
		 
	Thermsistor
	     pin2 ------------- NTC Resistor ------------------------ pin4(connect GND/Housing)
		
==================
Temperature conversion
==================
	F=(9C/5) +32    , C (Celsius), F(Fahrenheit)


