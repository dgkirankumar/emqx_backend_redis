%%%-------------------------------------------------------------------
%% @doc emqx_backend_redis public API
%% @end
%%%-------------------------------------------------------------------

-module(emqx_backend_redis_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    emqx_backend_redis_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
