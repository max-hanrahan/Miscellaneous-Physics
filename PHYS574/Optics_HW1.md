## #1: Review the _physics_ of Maxwell's equations:

Maxwell's equations in differential and integral form are:

$$
\begin{align*}
\mathbf \nabla \cdot \mathbf E = \rho / \varepsilon_0 &\iff \oint \mathbf E \cdot d \mathbf a = \frac{q_{\text{enclosed}}}{\varepsilon_0} \\
\mathbf \nabla \times \mathbf E = -\frac{\partial \mathbf B}{\partial t} &\iff \oint \mathbf E \cdot d \mathbf l = -\frac{\partial \Phi_{B}}{\partial t} \\
\mathbf \nabla \cdot \mathbf B = 0 &\iff \oint \mathbf B \cdot d \mathbf a = 0 \\
\mathbf \nabla \times \mathbf B = \mu_0 \mathbf J+\mu_0 \varepsilon_0 \frac{\partial \mathbf E}{\partial t} &\iff \oint \mathbf B \cdot d \mathbf l = \mu_0 I_{\text{enclosed}} + \mu_0 \varepsilon_0 \frac{\partial \Phi_B}{\partial t}
\end{align*}$$

The first of these is
### Gauss's law: 
$$
\begin{align*}
\mathbf \nabla \cdot \mathbf E = \rho / \varepsilon_0 &\iff \oint \mathbf E \cdot d \mathbf a = \frac{q_{\text{enclosed}}}{\varepsilon_0}
\end{align*}
$$
the diveregence of the $\mathbf{E}$ field is propotional to charge density of a region, or equivalently, that the surface integral of the electric field within a region is proportional to the enclosed charge. This arises from the Poisson equation:

$$
\nabla^2 V = \rho,
$$

or the Laplace equation in the $\rho=0$ case. 

The second equation is 
### Faraday's law:

$$
\begin{align*}
\mathbf \nabla \times \mathbf E = -\frac{\partial \mathbf B}{\partial t} &\iff \oint \mathbf E \cdot d \mathbf l = -\frac{\partial \Phi_{B}}{\partial t} \\
\end{align*}
$$

In statics, this would be that $\nabla \times \mathbf {E} = \mathbf{0}$. Usually, I would interpret that sort of equation to mean that $\mathbf {E}$ is an irrotational field, but that is not true in dynamics. In fact, we see that a curling $\mathbf{E}$ field "sources" a time-dependent magnetic field $\mathbf{B}$. This is equivalent to magnetic inductance, as we see in the integral form of this law. 

![7.21](fig.png)

The above figure is from Griffith's Introduction to Electrodynamics, and is an illustration of the three Faraday experiments:
* (a): loop moves
* (b): region with B-field moving
* (c): source of changing B-field

All these things are indicative of Faraday's key insight: **a changing B-field can source an E-field**. 

The third of these equations is the easiest to intuit: 
### there are no magnetic monopoles.

But with Valentine's Day coming up, I feel compelled to point out that an experiment reportedly detected one magnetic monopole on Feb 14, 1982... but it was likely an experimental error. 

Still, Dirac quantization posits that the charge quantization we see in the electron can be explained by the existence of even one magnetic monopole in the entire universe. So...maybe that was it? That was _the_ monopole? 

Yeah, yeah, I know, reproducability and all that. So no, there aren't magnetic monopoles. But [it's fun to entertain the hypothesis that they could exist](https://youtu.be/HHRkfB-ThzE?si=WxQSl6ZLLnOc_nu2).

And finally, 

### Ampere's Law and Maxwell's correction

Ampere's Law was originally:

$$
\begin{align*}
\mathbf \nabla &\times \mathbf B = \mu_0\mathbf J
\end{align*}
$$

In Magneto*statics*, we think $\nabla \times \mathbf B = \mu_0 \mathbf J$. Intuitively: the rotation of a magentic field is proportional to charge density. But we can see the problem with this:

$$
\nabla \cdot (\nabla\times \mathbf B) = \nabla \cdot (\mu_0 \mathbf J) \\
0 = \mu_0 \nabla \cdot \mathbf J
$$

but this contradicts the continuity equation: $\nabla \cdot \mathbf J = -\frac{\partial \rho}{\partial t}$. 

You can also see the problem this way:

Imagine a B-field circling a wire carrying current $\mathbf I$:

Ampere's Law in differential form is 

$\nabla \times \mathbf B = \mu_0 \mathbf J$

Convert to integral form:

$$
\int\limits_\text{Surf} \left(\nabla \times \mathbf B\right) \cdot d \mathbf a = \mu_0 \int \mathbf J \cdot d\mathbf a \implies \boxed{\oint\limits_\text{path} \mathbf B \cdot d \mathbf l = \mu_0I_\text{encl.}}
$$ 

if $B$ is uniform, then $\oint \mathbf B \cdot d \mathbf l = B \int dl = B(2\pi r) = \mu_0I$. 

But if we make an "unwise choice" for the Amperian loop, the math should still hold, right?

![7.42.png](7.42.png)

The above is Fig 7.42 in Griffiths, of such an Amperian loop. 
The loop includes half of a capacitor, so $\mathbf B \cdot d\mathbf l = 0$ must have $I_\text{encl} = 0$, so this can't be correct!

We need to make a correction!

The resolution to this contradiction has to do with "displacement current".

$\nabla \times \mathbf B = \mu_0 \mathbf J + \mathbf J_d$, where $\mathbf J_d$ is **current displacement** (it is a current/area). 

$$
\mathbf J_D = \varepsilon_0 \frac{\partial \mathbf E}{\partial t}
$$

They point in the same direction. So we can think of it as

$$
\nabla \times \mathbf B = \mu_0 (\mathbf J + \mathbf J_D) \\
\text{or} \,\,
\boxed{\nabla \times \mathbf B = \mu_0 J + \mu_0\varepsilon_0\frac{\partial \mathbf E}{\partial t}}
$$


Intuitively, this means that **a changing $\mathbf{E}$ field can source a $\mathbf{B}$ field**, the converse of Faraday's law. 


```python

```
