defmodule Secrets do
  def secret_add(secret), do: fn n -> n + secret end

  def secret_subtract(secret), do: fn n -> n - secret end

  def secret_multiply(secret), do: fn n -> n * secret end

  def secret_divide(secret), do: fn n -> Integer.floor_div(n, secret) end

  def secret_and(secret), do: fn n -> Bitwise.band(n, secret) end

  def secret_xor(secret), do: fn n -> Bitwise.bxor(n, secret) end

  def secret_combine(secret_function1, secret_function2),
    do: fn n -> secret_function2.(secret_function1.(n)) end
end
