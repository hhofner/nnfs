defmodule P3 do
  inputs = [1, 2, 3, 2.5]

  weights = [
    [
      0.2,
      0.8,
      -0.5,
      1.0
    ],
    [
      0.5,
      -0.91,
      0.26,
      -0.5
    ],
    [
      -0.26,
      -0.27,
      0.17,
      0.87
    ]
  ]

  biases = [
    2,
    3,
    0.5
  ]

  layer_outputs =
    Enum.reduce(Enum.zip(weights, biases), [], fn {neuron_weights, neuron_bias}, acc0 ->
      neuron_output =
        Enum.reduce(Enum.zip(inputs, neuron_weights), 0, fn {n_input, weight}, acc1 ->
          acc1 + n_input * weight
        end) + neuron_bias

      acc0 ++ [neuron_output]
    end)

  IO.inspect(layer_outputs)
end

# Weights and biases are "knobs" that we tune (really, some optimizer will tune them).
# How are they impacted the neurons
