#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  5 10:14:09 2022

@author: nanjiang
"""
import re

lines_per_page = 25

def copyFile(name, pages):
    fout = open('output.txt', 'w')
    l = 0
    p = 0
    words = 0
    alpha = 0
    digit = 0
    with open(name) as f:
        for line in f:
            if p == pages:
                break
            l += 1
            if l % lines_per_page == 0:
                p += 1
            words += len(line.split())
            (a, d) = count_alpha_digit(line)
            alpha += a
            digit += d
            
            s = re.sub('er\\b', 'xor', line)
            s = re.sub('[oO]', '0', s)
            s = re.sub('[aA]', '4', s)
            s = re.sub('[eE]', '3', s)
            s = re.sub('[iI]', '1', s)
            # print(s)
            fout.write(s)
            
    if l % lines_per_page > 0:#the last page has less than 25 lines
        p += 1

    fout.close() 
    print(f'Copy succeeded.\n{p} pages are copied\n{l} lines\n{words} words\n{alpha} alphabetic characters\n{digit} numeric characters')
    
def count_alpha_digit(s):
    alpha = 0
    digit = 0
    for ch in s:
        if ch.isdigit():
            digit += 1
        elif ch.isalpha():
            alpha +=1
    return (alpha, digit)    

if __name__ == '__main__':
    file = input('Input the name of the file for text copying:\n')
    pages = input('enter the number of pages you want to copy:\n')
    try:
        copyFile(file, int(pages))
    except FileNotFoundError:
        print("File does not exist!")
    except ValueError:
        print("The number of pages is incorrect!")
        
        
        
        