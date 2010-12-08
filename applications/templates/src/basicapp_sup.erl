%%% @author {{author}} <{{email}}>
%%% @copyright (C) {{year}} {{author}}
%%% @doc
%%% 
%%% @end
%%% Created :  {{created}}: {{author}} <{{email}}>
-module({{appid}}_sup).

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

%% Helper macro for declaring children of supervisor
-define(CHILD(I, Type), {I, {I, start_link, []}, permanent, 5000, Type, [I]}).

%% ===================================================================
%% API functions
%% ===================================================================

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%% ===================================================================
%% Supervisor callbacks
%% ===================================================================

init([]) ->
    {ok, { {one_for_one, 5, 10}, [
				  %% Put list of ?CHILD({{appid}}_server, worker) or ?CHILD({{appid}}_other_sup, supervisor)
				 ]} }.
