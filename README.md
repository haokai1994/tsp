# Optimization of the travelling salesman problem (TSP)
1. Get coordinates of the cities. Calculate distance matrix.
2. Write AMPL model with the model above and data from the matrix and submit to NEOS server.
3. Analyze results from the server and draw the tour.
4. For windy tour, use two methods: 1. Transform asymmetric matrix to double-size symmetric matrix
and submit to NEOS server. 2. Assign asymmetric matrix to a frotran program to compute the result.
5. Discuss the difference between computed optimal windy tour to the actual optimal windy tour.
