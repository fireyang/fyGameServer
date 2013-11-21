-module(fy_engine_app).

-behaviour(application).

%% Application callbacks
-export([start/0,start/2,stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start() ->
    io:format("start the engine"),
    {ok,started}.

start(_StartType, _StartArgs) ->
    fy_engine_sup:start_link().

stop(_State) ->
    ok.
