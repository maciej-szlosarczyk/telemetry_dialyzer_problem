defmodule TelemetryDialyzerProblem do
  @moduledoc """
  Documentation for `TelemetryDialyzerProblem`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TelemetryDialyzerProblem.hello()
      :world

  """
  def hello do
   OpentelemetryTelemetry.start_telemetry_span(:my_tracer, "my_event", %{}, %{})
  end
end
