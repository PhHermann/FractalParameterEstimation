# FractalParameterEstimation

This R-package is able to estimate parameters p and q of a random Sierpinski-Carpet model named [p-p-p-q] from [Hermann et. al (2015)](<http://onlinelibrary.wiley.com/doi/10.1002/sim.6497/abstract>). Furthermore, we also provide functions which simulate random Sierpinski-Carpets under constant and variable probabilities with different ramifications. A [PDF-manual](./Sources/FractalParameterEstimation_1.1.pdf) of the package is uploaded and a PDF-version of the paper containing detailed descriptions is available from [here](<https://www.researchgate.net/publication/274641964_Fractal_and_stochastic_geometry_inference_for_breast_cancer_a_case_study_with_random_fractal_models_and_Quermass-interaction_process_P_Hermann_et_al>).  

### Author (Requests)
Please contact me in case of questions, comments, bug reports, etc... 

    Author: Philipp Hermann
    E-Mail: philipp.hermann@jku.at


## Dependencies & System Requirements
This package requires an installation of R (>= 2.2) and uses functions which are directly installed. 

## Installation
The most recent version of **FractalParameterEstimation** is contained in *[Sources](./Sources)*. The ZIP-File of the package can be downloaded via "Clone or download". The installation is performed as usually in R via a the command: 

```R
install.packages("/PathToFPE/FractalParameterEstimation_<version>.tar.gz", repos=NULL, type="source")
```

## Usage
The R-package contains several example data sets for estimating the parameters p and q of the [p-p-p-q]-model. These estimations can be performed with the following commands: 

```R
require(FractalParameterEstimation)
## Example 1: Original p-Value: 0.2; Original q-value: 0.1
estimationFunction(Data0201, decs = 2)
## Example 2: Original p-value: 0.3; Original q-value: 0.25
estimationFunction(Data03025) # testData2
## Example 3: Original p-value: 0.5; Original q-value: 0.1
estimationFunction(Data0501)
## Example 4: Original p-value: 0.6; Original q-value: 0.3
estimationFunction(Data0603)
```

The most recent version also contains functions to simulate Sierpinski-Carpets under user defined ramifications. Therefore, both, constant as well as variable probabilities can be used with the following commands: 

* Constant Case: 
```R
GSC(p = 0.2, N = 4, sierp = TRUE)
GSC(p = 0.8, N = 2, sierp = FALSE)
```

* Variable Case: 
```R
GSC_seq(p = c(0.1,0.2,0.1,0.4), sierp = TRUE)
GSC_seq(p = c(rep(0.1,3),0.05), sierp = FALSE)
```

Note that the last case reflects a simulation of a Sierpinski-Carpet using four ramifications under the [p-p-p-q]-model. The output could be used to directly estimate the according parameters p and q. 

Detailed descriptions of the main functions and all adjacent functions can be found as general in *R* via e.g.

```R
?FractalParameterEstimation
```
