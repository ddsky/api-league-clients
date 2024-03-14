-module(apileague_retrieve_recipe_information_200_response_scores).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_200_response_scores/0]).

-type apileague_retrieve_recipe_information_200_response_scores() ::
    #{ 'meta_score' => integer(),
       'weight_watcher_smart_points' => integer(),
       'health_score' => integer()
     }.

encode(#{ 'meta_score' := MetaScore,
          'weight_watcher_smart_points' := WeightWatcherSmartPoints,
          'health_score' := HealthScore
        }) ->
    #{ 'meta_score' => MetaScore,
       'weight_watcher_smart_points' => WeightWatcherSmartPoints,
       'health_score' => HealthScore
     }.
