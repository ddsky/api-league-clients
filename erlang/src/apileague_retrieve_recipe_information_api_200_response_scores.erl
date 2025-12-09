-module(apileague_retrieve_recipe_information_api_200_response_scores).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_api_200_response_scores/0]).

-type apileague_retrieve_recipe_information_api_200_response_scores() ::
    #{ 'weight_watcher_smart_points' => integer(),
       'health_score' => integer(),
       'meta_score' => integer()
     }.

encode(#{ 'weight_watcher_smart_points' := WeightWatcherSmartPoints,
          'health_score' := HealthScore,
          'meta_score' := MetaScore
        }) ->
    #{ 'weight_watcher_smart_points' => WeightWatcherSmartPoints,
       'health_score' => HealthScore,
       'meta_score' => MetaScore
     }.
