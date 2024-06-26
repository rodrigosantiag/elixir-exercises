defmodule TakeANumber do
  def start() do
    spawn(fn -> loop(0) end)
  end


  defp loop(state) do
    receive do
      {:report_state, sender_pid} ->
        send(sender_pid, state)
        loop(state)
      {:take_a_number, sender_pid} ->
        state = state + 1
        send(sender_pid, state)
        loop(state)
      :stop -> state
      _ -> loop(state)
    end
  end

end
