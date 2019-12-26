# 2nd Week - Neural Networks Basics

## Neural Networks Logistic Regression

### Binary Classification

- Logistic regression is an algorithm for binary classification
- This algorithm is simple, receive a bunch of features in X, with a dimension $Nx$, and gives us 0 or 1. Being 0, "not this class", and 1, "this class".
- Notation
  - (x,y) being $x \in \reals^{n_x}, y \in$ {0, 1}
  - m training examples: { ($x^{(1)}, y^{(1)}$), ($x^{(2)}, y^{(2)}$), ... , ($x^{(m)}, y^{(m)}$) }
  - M = M$_{train}$
  - M$_{test}$ = #test examples
  - X = [$x^{(1)}$ $x^{(2)}$ ... $x^{(m)}$]
  - X$_{rows}$ = $\reals^{n_x}$
  - X$_{columns}$ = M
  - X$_{shape}$ = ($\reals^{n_x}$, M)
  - Y = [$y^{(1)}$ $y^{(2)}$ ... $y^{(m)}$]
  - Y$_{rows}$ = 1
  - Y$_{columns}$ = M
  - Y$_{shape}$ = (1, M)
  
### Logistic Regression

- Given x, want $\hat{y} = P(y = 1|x)$ 
- X $\in \reals^{n_x}$
- Parameters : $\omega \in \reals^{n_x}$, b $\in \reals$
- Output: $\hat{y} = \sigma(\omega^{T}x + b)$
- Being $\sigma(z) = \frac{1}{1+e^{-z}}$

But we need to adapt some little things.

- X$_0$ = 1

Including this bias unit, we have

- X $\in \reals^{n_x + 1}$
- Output: $\hat{y} = \sigma(\Theta^{T}x)$

Being $\Theta$:

- $\Theta$ = [ $\Theta_0$ ; $\Theta_1$ ; $\Theta_2$; ... ; $\Theta_{n_x}$ ] 
- $\Theta_0$ is b and the rest is $\omega$

Now the cost function

- $L(\hat{y}, y) = - (y*\log(\hat{y}) + (1 -y)*\log(1-\hat{y}))$

- Cost function: $J(\omega, b) = - \frac{\sum^m_{i = 1}L(\hat{y}^{(i)}, y^{(i)})}{m}$

- $J(\omega, b) = - \frac{\sum^m_{i = 1} [y*\log(\hat{y}) + (1 -y)*\log(1-\hat{y})]}{m}$

Now the Gradient Descent

- $\omega = \omega - \alpha*\frac{dJ(\omega,b)}{d\omega}$
- $b = b - \alpha*\frac{dJ(\omega,b)}{db}$
- Alpha is the learning rate
- Repeat it

Derivatives

- Slope

Logistic Regression with gradient descent

- First, we have:
  - W1 and W2 -> Weights
  - X1 and X2 -> Inputs
  - B -> Bias
  
- Z = W1X1 + W2X2 + B
- a = $\sigma$(Z)
- L(a,y)
- Pick the difference, use the backprop and apply it to adjust bias and weights.
