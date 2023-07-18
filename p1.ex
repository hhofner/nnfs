inputs = [1.2, 5.1, 2.1]
weights = [3.1, 2.1, 8.7]
bias = 3

# Inputs * Weights + Bias

output =
  Enum.at(inputs, 0) * Enum.at(weights, 0) + Enum.at(inputs, 1) * Enum.at(weights, 1) +
    Enum.at(inputs, 2) * Enum.at(weights, 2) + bias

# print
IO.puts(output)
