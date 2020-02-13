# 4th Week - Neural Networks Basics

## Deep Neural Networks


- What is a deep neural network?
  - It is possbile to notice the layers in a Neural Network. With few layers like 1 or 2 the NN is shallow, but with 4 or more is a deep NN.
  - We don't count the input layer, only the hidden layers and the output model.
  - Normally, more layers, the better the model.

- Why deep representations?
  - Imagine that each layer is trying to process something.
  - For Example: Face Recognition
    - The first layer tries to get the edges
    - The Second Layer is trying to find the features of the face
    - The Third layer is trying to form the face
  - These kind of processes (simple to complex) in NNs occurs in many kinds of problems

- Forward propagation for Layer l
  - Input: a[l-1]
  - Outpu: a[l], cache z[l]
  - Z[l] = W[l]*A[l-1] + b[l]
  - A[l] = g[l] Z[l]

- Backward propagation for layer l
  - Input da[l]
  - Output da[l-1], dW[l], db[l]
  - dz[l] = dA*g[l]'(Z[l])
  - dW[l] = (1/m) dZ[l] A[l-1]t
  - db[l] = 1/m * np.sum(dZ[l], axis = 1, keepdims = True)
  - da[l-1] = W[l]t dZ[l]
- The start of BP
  - dA[l] = (-y[1]/a[1] + (1-y[1])/(1-a[1]) ......  -y[m]/a[m] + (1-y[m])/(1-a[m]))

- Hyperparameters vs. Parameters
  - Parameters: The weigths and bias
  - Hyperparameters:
    - Learning rate
    - Iterations
    - Hidden layer L
    - Hidden Units n[1], n[2]
    - Activation Function

- Applied Deep Learning is a very empirical process: Idea, Code, Experiment