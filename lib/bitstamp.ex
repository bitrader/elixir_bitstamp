defmodule Bitstamp do
  @moduledoc """
  Documentation for Bitstamp.
  """

  use HTTPoison.Base

  @base_url "https://www.bitstamp.net/api/ticker"

  @doc """
  Get BTC/USD ticker

  ## Examples

      iex> Bitstamp.ticker

  """
  def ticker do
    with {:ok, result} <- get(@base_url),
         do: Poison.decode(result.body)
  end

end
