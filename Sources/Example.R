require(FractalParameterEstimation)
estimationFunction(Data0201, decs = 2)

### Simulate Random Sierpinski-Carpet under constant probability ####
GSC(p = 0.2, N = 4, sierp = TRUE)

### Simulate p-p-p-q model ###
GSC_seq(p = c(rep(0.1,3),0.05), sierp = FALSE)