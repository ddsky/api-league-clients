-module(openapi_media_api).

-export([detect_main_image_color/2, detect_main_image_color/3,
         rescale_image/5, rescale_image/6,
         search_royalty_free_images/2, search_royalty_free_images/3]).

-define(BASE_URL, <<"">>).

%% @doc Detect Main Image Color
%% Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
-spec detect_main_image_color(ctx:ctx(), binary()) -> {ok, [openapi_inline_response_200_29:openapi_inline_response_200_29()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
detect_main_image_color(Ctx, Url) ->
    detect_main_image_color(Ctx, Url, #{}).

-spec detect_main_image_color(ctx:ctx(), binary(), maps:map()) -> {ok, [openapi_inline_response_200_29:openapi_inline_response_200_29()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
detect_main_image_color(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/detect-color">>],
    QS = lists:flatten([{<<"url">>, Url}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Rescale Image
%% Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
-spec rescale_image(ctx:ctx(), binary(), integer(), integer(), boolean()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
rescale_image(Ctx, Url, Width, Height, Crop) ->
    rescale_image(Ctx, Url, Width, Height, Crop, #{}).

-spec rescale_image(ctx:ctx(), binary(), integer(), integer(), boolean(), maps:map()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
rescale_image(Ctx, Url, Width, Height, Crop, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/rescale-image">>],
    QS = lists:flatten([{<<"url">>, Url}, {<<"width">>, Width}, {<<"height">>, Height}, {<<"crop">>, Crop}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Royalty Free Images
%% Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
-spec search_royalty_free_images(ctx:ctx(), binary()) -> {ok, openapi_inline_response_200_28:openapi_inline_response_200_28(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
search_royalty_free_images(Ctx, Query) ->
    search_royalty_free_images(Ctx, Query, #{}).

-spec search_royalty_free_images(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_inline_response_200_28:openapi_inline_response_200_28(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
search_royalty_free_images(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/search-images">>],
    QS = lists:flatten([{<<"query">>, Query}])++openapi_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


