-module (world_loader).
-export ([boot/0]).

boot() ->
  case kvs:get(writer, <<"/c/Україна"/utf8>>) of
    {ok,_} -> skip;
    {error,_} ->
       world:warning("World import was done.", [])
  end.

