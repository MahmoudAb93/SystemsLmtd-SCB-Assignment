# Systems Limited & SCB Automation Assignment

This robot framework project runs with Playwright (browser-Library).

## Author

- Mahmoud Attia

## Software Requirements

- Download python v3.31 from https://www.python.org/downloads/
- Download pycharm ide
- Download Hyper Framework Support plugin on PyCharm
- Download Node.js from https://nodejs.org/en
- Install "npm install playwright" on cmd
- Install "pip install robotframework" on cmd
- Install "pip install -U robotframework-browser" on cmd
- Install "py -m Browser.entry init" on cmd

## Running the project

### To run the project, run the ".robot" files under the "Tests" directory, or run the following commands in the terminal.
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
- After each run, review the report showing test results and open the generated "report.html" file in a browser.




