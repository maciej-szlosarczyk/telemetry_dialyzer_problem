-module(telemetry_dialyzer_problem).

-export([hello/0]).

hello() ->
   otel_telemetry:start_telemetry_span(my_tracer, <<"my_event">>, #{}, #{}).
