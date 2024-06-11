-module(telemetry_dialyzer_problem).

-export([telemetry_problem/0, general_problem/0]).

telemetry_problem() ->
   otel_telemetry:start_telemetry_span(my_tracer, <<"my_event">>, #{}, #{}).

general_problem() ->
    Tracer = opentelemetry:get_application_tracer(?MODULE),
    otel_tracer:start_span(Tracer, <<"my_span">>, #{}).
