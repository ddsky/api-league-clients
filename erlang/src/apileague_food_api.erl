-module(apileague_food_api).

-export([compute_nutrition_api/2, compute_nutrition_api/3,
         retrieve_recipe_information_api/2, retrieve_recipe_information_api/3,
         search_drinks_api/1, search_drinks_api/2,
         search_recipes_api/1, search_recipes_api/2,
         search_restaurants_api/3, search_restaurants_api/4]).

-define(BASE_URL, <<"">>).

%% @doc Compute Nutrition API
%% Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
-spec compute_nutrition_api(ctx:ctx(), binary()) -> {ok, apileague_compute_nutrition_api_200_response:apileague_compute_nutrition_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
compute_nutrition_api(Ctx, Ingredients) ->
    compute_nutrition_api(Ctx, Ingredients, #{}).

-spec compute_nutrition_api(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_compute_nutrition_api_200_response:apileague_compute_nutrition_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
compute_nutrition_api(Ctx, Ingredients, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/compute-nutrition"],
    QS = lists:flatten([{<<"ingredients">>, Ingredients}])++apileague_utils:optional_params(['servings', 'reduce-oils'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieve Recipe Information API
%% Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
-spec retrieve_recipe_information_api(ctx:ctx(), integer()) -> {ok, apileague_retrieve_recipe_information_api_200_response:apileague_retrieve_recipe_information_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
retrieve_recipe_information_api(Ctx, Id) ->
    retrieve_recipe_information_api(Ctx, Id, #{}).

-spec retrieve_recipe_information_api(ctx:ctx(), integer(), maps:map()) -> {ok, apileague_retrieve_recipe_information_api_200_response:apileague_retrieve_recipe_information_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
retrieve_recipe_information_api(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/retrieve-recipe"],
    QS = lists:flatten([{<<"id">>, Id}])++apileague_utils:optional_params(['add-wine-pairing'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Drinks API
%% Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.
-spec search_drinks_api(ctx:ctx()) -> {ok, apileague_search_drinks_api_200_response:apileague_search_drinks_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_drinks_api(Ctx) ->
    search_drinks_api(Ctx, #{}).

-spec search_drinks_api(ctx:ctx(), maps:map()) -> {ok, apileague_search_drinks_api_200_response:apileague_search_drinks_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_drinks_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-drinks"],
    QS = lists:flatten([])++apileague_utils:optional_params(['query', 'glass-types', 'flavors', 'diet', 'include-ingredients', 'exclude-ingredients', 'min-calories', 'max-calories', 'min-carbs', 'max-carbs', 'min-protein', 'max-protein', 'min-fat', 'max-fat', 'min-alcohol-percent', 'max-alcohol-percent', 'min-caffeine', 'max-caffeine', 'sort', 'sort-direction', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Recipes API
%% Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
-spec search_recipes_api(ctx:ctx()) -> {ok, apileague_search_recipes_api_200_response:apileague_search_recipes_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_recipes_api(Ctx) ->
    search_recipes_api(Ctx, #{}).

-spec search_recipes_api(ctx:ctx(), maps:map()) -> {ok, apileague_search_recipes_api_200_response:apileague_search_recipes_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_recipes_api(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-recipes"],
    QS = lists:flatten([])++apileague_utils:optional_params(['query', 'cuisines', 'exclude-cuisines', 'meal-type', 'diet', 'intolerances', 'equipment', 'include-ingredients', 'exclude-ingredients', 'fill-ingredients', 'add-recipe-information', 'max-time', 'min-servings', 'max-servings', 'min-calories', 'max-calories', 'min-carbs', 'max-carbs', 'min-protein', 'max-protein', 'min-fat', 'max-fat', 'min-sugar', 'max-sugar', 'min-fiber', 'max-fiber', 'min-folate', 'max-folate', 'min-folic-acid', 'max-folic-acid', 'min-iodine', 'max-iodine', 'min-iron', 'max-iron', 'min-zinc', 'max-zinc', 'min-magnesium', 'max-magnesium', 'min-manganese', 'max-manganese', 'min-phosphorus', 'max-phosphorus', 'min-potassium', 'max-potassium', 'min-sodium', 'max-sodium', 'min-selenium', 'max-selenium', 'min-copper', 'max-copper', 'min-calcium', 'max-calcium', 'min-choline', 'max-choline', 'min-cholesterol', 'max-cholesterol', 'min-fluoride', 'max-fluoride', 'min-alcohol', 'max-alcohol', 'min-caffeine', 'max-caffeine', 'min-saturated-fat', 'max-saturated-fat', 'min-vitamin-a', 'max-vitamin-a', 'min-vitamin-c', 'max-vitamin-c', 'min-vitamin-d', 'max-vitamin-d', 'min-vitamin-e', 'max-vitamin-e', 'min-vitamin-k', 'max-vitamin-k', 'min-vitamin-b1', 'max-vitamin-b1', 'min-vitamin-b2', 'max-vitamin-b2', 'min-vitamin-b3', 'max-vitamin-b3', 'min-vitamin-b5', 'max-vitamin-b5', 'min-vitamin-b6', 'max-vitamin-b6', 'min-vitamin-b12', 'max-vitamin-b12', 'sort', 'sort-direction', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Restaurants API
%% Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
-spec search_restaurants_api(ctx:ctx(), float(), float()) -> {ok, apileague_search_restaurants_api_200_response:apileague_search_restaurants_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_restaurants_api(Ctx, Lat, Lon) ->
    search_restaurants_api(Ctx, Lat, Lon, #{}).

-spec search_restaurants_api(ctx:ctx(), float(), float(), maps:map()) -> {ok, apileague_search_restaurants_api_200_response:apileague_search_restaurants_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_restaurants_api(Ctx, Lat, Lon, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-restaurants"],
    QS = lists:flatten([{<<"lat">>, Lat}, {<<"lon">>, Lon}])++apileague_utils:optional_params(['query', 'distance', 'budget', 'min-rating', 'cuisine', 'is-open', 'page', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


