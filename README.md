# Systems Limited & SCB Automation Assignment

This robot framework project runs with playwright (browser-Library).

## Author

- Mahmoud Attia

## Software Requirements

- Download python v3.31 from https://www.python.org/downloads/
- Download pycharm ide
- Download Hyper Framework Support plugin on pycharm
- Download node js from https://nodejs.org/en
- Install "npm install playwright" on cmd
- Install "pip install robotframework" on cmd
- Install "pip install -U robotframework-browser" on cmd
- Install "py -m Browser.entry init" on cmd

## Running the project

### In order to run the project you can either run the ".robot" files under the "Tests" directory,or run the following commands in the terminal.
#### Run Commands:
##### For all test cases:
- RUN  "py -m robot -d Results      -i       Test        Tests"

##### For login test cases:
- RUN  "py -m robot -d Results      -i       Login        Tests"

##### For logout test cases:
- RUN  "py -m robot -d Results      -i       Logout        Tests"

##### For product sorting test cases:
- RUN  "py -m robot -d Results      -i       SortProducts        Tests"

##### For add products test cases:
- RUN  "py -m robot -d Results      -i       AddProducts        Tests"

##### For remove products test cases:
- RUN  "py -m robot -d Results      -i       RemoveProducts        Tests"

##### For view cart test cases:
- RUN  "py -m robot -d Results      -i       ViewCart        Tests"

##### For checkout process test cases:
- RUN  "py -m robot -d Results      -i       CheckoutProcess        Tests"

##### For all happy scenarios test cases:
- RUN  "py -m robot -d Results      -i       Happy        Tests"

##### For all negative scenarios test cases:
- RUN  "py -m robot -d Results      -i       Negative        Tests"

## Reports
- To review the report showing test results, after each run open the generated "report.html" file inside the "Results" directory in a browser.




