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
|    Ordered (values are comparable)    | Ordinal (E.g. Sizes S,M,L,XL) Counts (E.g. Counts 1,2,3) |   Fields (E.g. Altitude, Temperature)  |
| Unordered (values are not comparable) |      Nominal (E.g. Shapes) Categories (E.g. Nationalities)     | Cyclic values (E.g. Directions, Hues)  |

- Data as Variables

|        Science       | Databases | Data Warehouses |
|:--------------------:|:---------:|:---------------:|
| Independent Variable |    Key    |    Dimension    |
|  Dependent Variable  |   Value   |     Measure     |

- Mapping
  - When we map the data, it is converted into a primitive graphic that could be displayed.
  - This is dependent on how different objects are perceived and how to connect its characteristics with the data characteristics.
  - Some studies showed how different geometric mappings are more effective.
  - Mapping Quantitative Values
    - Using Position, Length, Angle/Slope (Pie Chart)are really effective. (1D)
    - Using area can be effective (2D)
    - Using Volume and Color/Density are normally not good and can confuse your visualization (3D)
  - Mapping Ordinal Data
    - Position still is really good
    - Density, Saturation and Hue are good in this situation
    - New representations here emerge as good in specific situations, like: Textures, Connections and Containment.
    - The rest, isn't really effective. Especially Slope, Area and Volume.
  - Mapping Nominal Data
    - Position still the strongest.
    - Hue, Texture. Connections, Containment improve in this category to visualize data.
    - Density, Saturation and shape can be use to describe special visualizations
    - The rest, still, not very effective.
- Charts
  - The success of a data visualization often depend on how we map our data variables to the elements on charts.
  - Bar Chart
    - Normally has two axis. A quantitative dependent variable (Measure) on the y-axis and a Nominal/Discrete independent (Category, Quantitative, Ordinal) variable on the x-axis.
    - Benefits from the position (height of the bar) and the length (size of the bar)
  - Line Chart
    - Needs continuous variables on the x-axis (independent) and the y-axis (dependent). Like measures.
    - Benefits from position but not from length
    - Displaying a function.
  - Scatter Plot
    - Needs continuous variables on the x-axis (independent) and the y-axis (independent). Like measures.
    - Relies on position, and sometimes clustering.
  - Gantt Chart
    - Used not with functions, but with processes.
    - In the y-axis it uses a Discrete/nominal independent variable (Categorical) and in the x-axis a quantitative independent variable.
    - Categorical.
  - Table
    - Both axis are Discrete/nominal independent variables.
    - Benefits from position only.
  - But what to use?

||Independent Nominal/Quantitative Discrete Variables (Categories: Sizes, forms, nationality, places) | Independent Quantitative Continuous Variables (A fundamental continuous dimension, time, speed) |
|:------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------:|
| Dependent Quantitative Continuous Variables (Cientific Measures (as a function of Altitude), Continous Data) |                                                 Bar                                                 |                                               Line                                              |
|                      Dependent Quantitative Discrete Variables (Population, GDP, Counts)                     |                                                 Bar                                                 |                                               Bar                                               |
|        Independent Quantitative Continuous Variables (A fundamental continuous dimension, time, speed)       |                                                Gantt                                                |                                             Scatter                                             |
|      Independent Nominal/Quantitative Discrete Variables (Categories: Sizes, forms, nationality, places)     |                                                Table                                                |                                              Gantt                                              |

----

- Glyphs
  - 