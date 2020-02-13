## Mammals' sleep package

#### This project aims to study the sleeping hours of different types of mammals. The project analyzes whether the hours an animal stays awake are related to its gender or the way it is fed.

## Installation:

#### First, install the package 'devtools' if not already installed:

             devtools::install_github("unimi-dse/d57d5d5a")

### Usage:

##### Load the R package

       require(mammals)

#### Data description:

##### Data come from the dataset msleep, which contains 11 variables: 

| Variable | Description |
| --- | ---|
| name | the kind of mammal analyzed |
| genus | the family of the animal |
| vore | the way the animal feeds itself |
| order | the order of the animal |
| conservation | the status of conservation of the animal |
| sleep_total | total amount of hours of sleep |
| sleep_rem | total amount of hours of sleep rem |
| sleep_cycle | total number of hours of the cycle of sleep |
| awake | total amount of the hours tha mammal stays awake |
| brainwt | weight of the mammal's brain in kilograms |
| bodywt | weight of the mammal's body in kilograms |
     
    
    
     
#### Functions:

##### First, install the R packages ggplot2 and dplyr. 

##### Then, it's possible to run the following functions:

1. 'import()' imports the data from the dataset msleep.
2. 'visualanalysis()' visualizes the relationship between mammals' vore and the hours they stay awake.
3. 'mselection()' analyzes the relationship between mammals that spend more than 12 hours awake and their order.





     
                                                      
                                                      
                                                             
