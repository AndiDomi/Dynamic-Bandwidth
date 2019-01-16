from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
import requests 
import logging
import unittest
import random
import math
import time 


@keyword('Sin Function')
def sin_function():
    counter=0
    number=1
    # starting bandwidth level
    index=6000
    while counter < 100:
        # creates the bandwidth variations
        sin=math.sin(number)
        bandwidth = index + int(sin*100)
        
        # creates a request to the router with the given bandwidth
        BuiltIn().run_keyword('Wait Until Element Is Visible','id=qos_max_down_rate')
        BuiltIn().run_keyword('Input Text','id=qos_max_down_rate',bandwidth)
        BuiltIn().run_keyword('Click Button','id=SaveSettings')
        
        # increments the number to be sin't 
        # change the constant to make more or less points
        number=number+0.35
        
        counter=counter+1
        