defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    string
    |> String.split(["-", " ", "_"], trim: true)
    |> Enum.map(fn string ->
      string
      |> String.first()
      |> String.upcase()
    end)
    |> Enum.join()
  end
end
