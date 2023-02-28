# AutoTester

A ruby-based terminal progam tester which autoconfigures a csv output

## Forewarning

This program is <strong>not smart</strong>

## Template system

A template file is necessary and it will explain all functions within your program to the tester (upper/lower bound, data type, etc...) which will autogenerate a series of test inputs and generate a csv with the test results at the end

### How to create a template

Component name (for reference)
Data_type (string, int or float)
Range (for int and float)/[Samples] (for strings)
Depends on Parent Component [option] (use nil to flag as no parent object)