                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


http://www.thingiverse.com/thing:1392023
Ekobots - Levitator with arduino. by jsirgado is licensed under the Creative Commons - Attribution - Non-Commercial license.
http://creativecommons.org/licenses/by-nc/3.0/

# Summary

__Magnetic levitation toy with arduino.__

* Easy to print and mount (Just some glue, no screws).
* Just install the firmware(Levitator.ino) in the arduino board.
* Do not need a computer, just the 12V power supply, after install the firmware.
* With a stick use the switches to adjust the magnet position.
* Use the arduino serial monitor to see the correct value for you.
* You can hard code the correct value in your toy.
* I put all parts you need in 1 plate, have fun.

__My videos:__
* Video 1 (3x block magnets 10mm x 10mm x 3mm + 8mm x 30mm threaded rod): 
http://www.youtube.com/watch?v=w-jtu5cxl9o
* Video 2 (1x cube magnet 10mm + Ufo_01 3D printed part): 
http://www.youtube.com/watch?v=nXplyDKqs2s
* Video 3 (2x cylinder magnet 20mm  + 5mm):
http://www.youtube.com/watch?v=AIz9ystIPUo

__All you need:__
* 1x Arduino Board (Nano to use the shield);
* 1x Electromagnet - ZYE1-P25/20 12V, 25mm diameter, 20mm height (ebay $7.00);
* 1x Linear hall effect sensor - 49e (ebay Kit 5 - $1.50);
* 1x Magnet cube 10mm (ufo_1) or magnet sphere 10mm (ufo_2);
* 1x Darlington Transistor NPN - TIP120;
* 1x Resistor 1K ohm;
* 1x Diode N4007;
* 1x Power supply 12V 1A (ebay $2.00);
* 2x Micro switch;

__Attention:__
* Put the hall sensor in the bottom of the tip(top_sensor.stl) see the images;
* To work correct, the hall effect sensor must be at least 5mm of distance from electromagnetic;
* You can use other __linear hall sensor__ (do not use __hall sensor switch__);
* __Use neodymium permanent magnets__ (it will not work with common magnets);
* Heavy objects are more stable; 

__Think it is hard:__
* Use my arduino nano shield:
   http://www.thingiverse.com/thing:1392530
.
* You can order the shield at:
   https://oshpark.com/shared_projects/kxH3Ak1b
   It was published in OSH Park by Thingiverse user __krwynn__:
   http://www.thingiverse.com/krwynn/about
   Thanks!
.
* See my "Makes" for more details:
   http://www.thingiverse.com/make:201394
   http://www.thingiverse.com/make:201420

__Possible upgrades:__
* Safety mode in the code for the toy(in test):
Turns off the electromagnet in case the permanent magnet fall;
* Curved arm to hold the electromagnet:
Bigger objects and more free space;
* Hall effect sensor below the permanent magnet:
No electromagnet interference, accurate measurements and more stable levitation;

It is a little better than the prototype! ;-)