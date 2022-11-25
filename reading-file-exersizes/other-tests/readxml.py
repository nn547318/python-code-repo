#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Oct  6 17:45:51 2022

@author: nanjiang
"""

import xmltodict
# Open the sample xml file and read it into variable
with open("test.xml") as f: 
    xml_example = f.read()
# Print the raw XML data
    print(xml_example)
# Parse the XML into a Python dictionary
    xml_dict = xmltodict.parse(xml_example)
    print(xml_dict)