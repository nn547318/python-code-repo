#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Oct 17 10:14:15 2022

@author: nanjiang
"""

import json
with open("json-example.json") as f:
    data = f.read()
    # json_dict is a dictionary, and json.loads takes care of 
    # placing our JSON data into it.
    json_dict = json.loads(data)
    print("The JSON document is loaded as type {0}\n".format(type(json_dict)))
    for k, v in json_dict.items():
        print("-- The key {0} contains a {1} value.".format(str(k), str(type(v))) )
        
name = json_dict["vlans"][0]["vlan_name"]
print('\n', name)