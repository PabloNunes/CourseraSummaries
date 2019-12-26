# Data Visualization - University of Illinois

## Week 1 - The Computer and the Human

## What is data visualization?

- Data viz. is a representation of the data for a better understanding and gain insight into what is represents. Using visual communication.
- This is about understanding data and being able to make decisions based on the data.

## Some books

- The Visual Display of Quantitative Information
- The Visualization Handbook
- Readings in Information Visualization
- Information Visualization (Perception for Design)
- Visualization Analysis & Design

## Overview of Visualization

- Mathematical Visualization - The visualization generated from a mathematical equation
- Scientific Visualization - Data measured and simulated in real time by a computer. Visualize scientific data.
- Information Visualization - Visualization of more abstract, non-coordinated data.
- Domain Specific Visualization - Visualization with the objective to better apply in specific domains.

- Modes of visualization
  - There are two classic modes, interactive visualization and presentation visualization
  
    | Interactive Visualization                          | Presentation Visualization                |
    | -------------------------------------------------- | ----------------------------------------- |
    | Used for discovery                                 | Used for communication                    |
    | Intended for a single investigator or collaborator | Intended for large group or mass audience |
    | Rerenders based on input                           | Does not support user input               |
    | Prototype quality                                  | Highly polished                           |

  - Interactive Storytelling -  Presentation via interactive web pages. A mix of both.

    | Visualization Mode         | User Interaction                                          | Graphics Rendering  | Target                      | Medium                |
    | -------------------------- | --------------------------------------------------------- | ------------------- | --------------------------- | --------------------- |
    | Interactive Visualization  | User controls everything, even the dataset                | Real-time rendering | Individual or collaborators | Software and Internet |
    | Interactive Storytelling   | User can filter or inspect detail of some preset datasets | Real-time rendering  | Mass audiences              | Internet or Kiosk     |
    | Presentation Visualization | User only observes                                        | Prerendered         | Colleagues & Mass audiences | Slide shows, video    |

## 2-D Graphics

- Vector Graphics (Describe shapes with vectors) vs Raster Graphics (Describe shapes with pixels).
- Coordinated systems can be hierarchial to have a canvas, which is a plot coordinator and it is possible to plot various sub-canvas inside it.
- It is calculated from a vector and it go to a process of rasterization, for be seen from a monitor.
- Screen coordinates, physical per-pixel integer coordinates. Limited by the pixel dimensions of the screen.
- To use the screen, it is needed a Canvas -> Screen transformation.

## 2-D Drawing

- SVG - Scalable Vetor Graphics

## 3-D Graphics

- We use RGB, because of our color cones in our eyes, to stimulate it.
- To simulate 3-D, we use a "camera", that has a 3-D vector primitive, and impress this image as a 2-D image in the camera.
- 3-D uses a pipeline to process. Goes to Vertex Processing -> Rasterization -> Pixel Processing
- We need a 3-D world coordinates to describe our space and our camera.

## Photorealism

- When we use 3-D visualization, we need photorealism to help us in the space configuration, and shape notion.
- It describes cues that tell our systems when it sees a 2-D image, it thinks it's 3-D.
- Occlusion, shadowing, perspective, focus, lighting, texturing.
- Occlusion, use the normal opaqueness of the objects and hide what's behind them. It is the strongest cue, by implying a visual sort from near to far.
- Illumination, cues a orientation of a surface. Illumination helps showing the characteristics of the object.
- Shadowing, light occlusion and cues to object positions relative to each other.
- Perspective, size constancy.
- Stereopsis, cross eyes.

## Non-photorealism

- In a visualization, we normally want something to look like a illustration. In consequence, we use non-photorealistic rendering.
- A 3-D configuration can be depicted by a illustration better than a photograph.
- With a illustration, an artist has more control over the depiction.
- Silhouette curves helps to make it like a illustration.
- Focus in the psychology of perception.

---

## Humans

- The model human processor
- Fitt's Law - How long takes to move the mouse
- We can use this model to try to predict how a human will react to the presentation of data

## Memory

- Part for interpreting the data is to memorize it and learning from it
- Iconic memory, persistence of vision.
- Three types of memory, the long term is the best to retain information.
  
## Reasoning

- When we visualize data, we usually want to make a decision based on that data. Which means we need a reason about the data.
- Deductive Reasoning - Logic
- Inductive Reasoning - Inferences
- Abductive Reasoning - Meaning, Asking
- Be careful with Cognitive Dissonance

## Human Retina

- Perception starts with the human retina. Because it uses light to perceive, it is important to our understanding how to use this in visualizations.
- Chromatic Aberration
- Never use pure blue, for aiding detecting edges
- Pay attention to contrast.
- Light is 31% Red, 59% Green and 10% Blue.

## Perceiving two dimensions

- We see the light in our retina but we still need processing in our cognitive system.
- Shade Context
- Color context
- Mach Bands
- Perception vs Cognition
- Size context

## Perceiving Perspective

- When we use 3-D visualizations, we need to give cues to the viewer.
- Foreshortening: Objects at different depth
- Linear Perspective: Objects father away appear smaller
- Size Constancy: Smaller objects must be farther away than small objects.
- Texture Constancy
- Lightning Assumptions
  