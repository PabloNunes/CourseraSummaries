# Data Visualization - University of Illinois

## Week 2 - Visualization of Numerical Data

## Data, Mapping, and Charts

- Data
  - Data Visualization Framework
    - First, Data is available from a variety of sources.
    - Then, there is a data collection operation. That combines the data from different sources and processes it into one package for visualization.
    - After this, there is the mapping process, using a mapping layer, which takes the data and the data's abstract and or other computational representation.
    - Finally, a graphics layer use this and display this representation.
  - A comparison of the layers below

| Data Layer                              | Mapping Layer                                                     | Graphics Layer                                |
| --------------------------------------- | ----------------------------------------------------------------- | --------------------------------------------- |
| Locating and obtaining data             | Associating appropriate geometry with corresponding data channels | Conversion of geometry into displayable image |
| Importing data in proper format         | Data analysis and algorithms (E.g contouring)                     | Decorations                                   |
| Relating data for proper correspondence |                                                                   | Managing interaction                          |
| Data analysis and aggregation           |                                                                   |                                               |

- Data Types

|                                       |                  Discrete (no between values)                  |       Continuous (values between)       |
|:-------------------------------------:|:--------------------------------------------------------------:|:--------------------------------------:|
|    Ordered (values are comparable)    | Ordinal (E.g. Sizes S,M,L,XL) Quantitative (E.g. Counts 1,2,3) |   Fields (E.g. Altitude, Temperature)  |
| Unordered (values are not comparable) |      Nominal (E.g. Shapes) Categories (E.g. Nationalities)     | Cyclic values (E.g. Directions, Hues)  |

- Data as Variables

|        Science       | Databases | Data Warehouses |
|:--------------------:|:---------:|:---------------:|
| Independent Variable |    Key    |    Dimension    |
|  Dependent Variable  |   Value   |     Measure     |