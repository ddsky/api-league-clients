-module(apileague_media_api).

-export([detect_main_image_color_api/2, detect_main_image_color_api/3,
         rescale_image_api/5, rescale_image_api/6,
         search_icons_api/2, search_icons_api/3,
         search_royalty_free_images_api/2, search_royalty_free_images_api/3,
         vector_search_api/2, vector_search_api/3]).

-define(BASE_URL, <<"">>).

%% @doc Detect Main Image Color API
%% Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
-spec detect_main_image_color_api(ctx:ctx(), binary()) -> {ok, [apileague_detect_main_image_color_api_200_response_inner:apileague_detect_main_image_color_api_200_response_inner()], apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
detect_main_image_color_api(Ctx, Url) ->
    detect_main_image_color_api(Ctx, Url, #{}).

-spec detect_main_image_color_api(ctx:ctx(), binary(), maps:map()) -> {ok, [apileague_detect_main_image_color_api_200_response_inner:apileague_detect_main_image_color_api_200_response_inner()], apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
detect_main_image_color_api(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/detect-color"],
    QS = lists:flatten([{<<"url">>, Url}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Rescale Image API
%% Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
-spec rescale_image_api(ctx:ctx(), binary(), integer(), integer(), boolean()) -> {ok, binary(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
rescale_image_api(Ctx, Url, Width, Height, Crop) ->
    rescale_image_api(Ctx, Url, Width, Height, Crop, #{}).

-spec rescale_image_api(ctx:ctx(), binary(), integer(), integer(), boolean(), maps:map()) -> {ok, binary(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
rescale_image_api(Ctx, Url, Width, Height, Crop, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/rescale-image"],
    QS = lists:flatten([{<<"url">>, Url}, {<<"width">>, Width}, {<<"height">>, Height}, {<<"crop">>, Crop}])++apileague_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Icons API
%% Search through millions of icons to match any topic you want.
-spec search_icons_api(ctx:ctx(), binary()) -> {ok, apileague_search_icons_api_200_response:apileague_search_icons_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_icons_api(Ctx, Query) ->
    search_icons_api(Ctx, Query, #{}).

-spec search_icons_api(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_search_icons_api_200_response:apileague_search_icons_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_icons_api(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-icons"],
    QS = lists:flatten([{<<"query">>, Query}])++apileague_utils:optional_params(['only-public-domain', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Royalty Free Images API
%% Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
-spec search_royalty_free_images_api(ctx:ctx(), binary()) -> {ok, apileague_search_royalty_free_images_api_200_response:apileague_search_royalty_free_images_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_royalty_free_images_api(Ctx, Query) ->
    search_royalty_free_images_api(Ctx, Query, #{}).

-spec search_royalty_free_images_api(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_search_royalty_free_images_api_200_response:apileague_search_royalty_free_images_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
search_royalty_free_images_api(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-images"],
    QS = lists:flatten([{<<"query">>, Query}])++apileague_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Vector Search API
%% Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project.
-spec vector_search_api(ctx:ctx(), binary()) -> {ok, apileague_vector_search_api_200_response:apileague_vector_search_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
vector_search_api(Ctx, Query) ->
    vector_search_api(Ctx, Query, #{}).

-spec vector_search_api(ctx:ctx(), binary(), maps:map()) -> {ok, apileague_vector_search_api_200_response:apileague_vector_search_api_200_response(), apileague_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), apileague_utils:response_info()}.
vector_search_api(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(apileague_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/search-vectors"],
    QS = lists:flatten([{<<"query">>, Query}])++apileague_utils:optional_params(['offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = apileague_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    apileague_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


