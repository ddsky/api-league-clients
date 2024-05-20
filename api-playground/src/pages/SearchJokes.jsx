import { useState } from "react";
import useTagInput from "../components/useTag";
import { TagField } from "../components/TagField";
import { BasicTabs } from "./OutputView";
import { Search } from "lucide-react";
import { MagnifyingGlass } from "react-loader-spinner";

var ApiLeague = require("../api_league");

export const Jokes = ({ ApiKey }) => {
  let defaultClient = ApiLeague.ApiClient.instance;
  let apiKey = defaultClient.authentications["apiKey"];
  apiKey.apiKey = ApiKey;
  const [minRating, setMinRating] = useState(0.0);
  const [maxLength, setMaxLength] = useState(50);
  const [offset, setOffset] = useState(0);
  const [numberOfJokes, setNumberOfJokes] = useState(1);
  const [jokes, setJokes] = useState([]);
  const [jsonResponse, setJsonResponse] = useState(null);
  const [loading, setLoading] = useState(false);
  const MAX_TAGS = 5;
  const {
    tags: keywords,
    handleAddTag: handleAddKeywordTag,
    handleRemoveTag: handleRemoveKeywordTag,
    getTags: getKeywordTags,
  } = useTagInput(MAX_TAGS);
  const {
    tags: includeTags,
    handleAddTag: handleAddIncludeTag,
    handleRemoveTag: handleRemoveIncludeTag,
    getTags: getIncludeTags,
  } = useTagInput(MAX_TAGS);
  const {
    tags: excludeTags,
    handleAddTag: handleAddExcludeTag,
    handleRemoveTag: handleRemoveExcludeTag,
    getTags: getExcludeTags,
  } = useTagInput(MAX_TAGS);
  const jokeSearch = async () => {
    try {
      setLoading(true);
      let apiInstance = new ApiLeague.HumorApi();
      let opts = {};

      if (getKeywordTags() && getKeywordTags().length > 0) {
        opts.keywords = getKeywordTags().join(",").trim();
      }
      if (getIncludeTags() && getIncludeTags().length > 0) {
        opts.includeTags = getIncludeTags().join(",").trim();
      }
      if (getExcludeTags() && getExcludeTags().length > 0) {
        opts.excludeTags = getExcludeTags().join(",").trim();
      }

      if (minRating) {
        opts.minRating = minRating;
      }

      if (maxLength) {
        opts.maxLength = maxLength;
      }

      if (offset) {
        opts.offset = offset;
      }

      if (numberOfJokes) {
        opts.number = numberOfJokes;
      }

      apiInstance.searchJokes(opts, (error, data, response) => {
        if (error) {
          console.error(error);
        } else {
          setJokes([data]);
          setJsonResponse(data);
          console.log("API called successfully. Returned data: " + data);
        }
      });
    } catch (error) {
      // Log any errors that occur during the fetch
      console.error("Error fetching memes:", error);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="flex mt-2 items-start space-y-5 max-h-[75%]">
      <div className="flex flex-col w-full max-h-[71vh] items-center justify-start border-gray-200 border-r-2 p-8 space-y-5">
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-5 w-full max-w-lg">
          <label className="flex flex-col space-y-1">
            <span className="text-gray-700 font-semibold">Keywords</span>
            <TagField
              tags={keywords}
              addTag={handleAddKeywordTag}
              removeTag={handleRemoveKeywordTag}
              maxTags={MAX_TAGS}
            />
          </label>
          <label className="flex flex-col space-y-1">
            <span className="text-gray-700 font-semibold">Include Tags: </span>
            <TagField
              tags={includeTags}
              addTag={handleAddIncludeTag}
              removeTag={handleRemoveIncludeTag}
              maxTags={MAX_TAGS}
            />
          </label>
          <label className="flex flex-col space-y-1">
            <span className="text-gray-700 font-semibold">Exclude Tags: </span>
            <TagField
              tags={excludeTags}
              addTag={handleAddExcludeTag}
              removeTag={handleRemoveExcludeTag}
              maxTags={MAX_TAGS}
            />
          </label>

          <label className="flex flex-col space-y-1">
            <span className="text-gray-700 font-semibold">Min. Rating: </span>
            <input
              type="number"
              min={0}
              max={1}
              step={0.1}
              className="border-gray-400 px-2 h-8 text-sm text-gray-600 w-full border rounded focus:border-blue-500 focus:ring-0 outline-none"
              value={minRating}
              onChange={(e) => setMinRating(e.target.value)}
            />
          </label>

          <label className="flex flex-col space-y-1">
            <span className="text-gray-700 font-semibold">Max. Length: </span>
            <input
              type="number"
              value={maxLength}
              min={1}
              className="border-gray-400 px-2 h-8 text-sm text-gray-600 w-full border rounded focus:border-blue-500 focus:ring-0 outline-none"
              onChange={(e) => setMaxLength(e.target.value)}
            />
          </label>
          <label className="flex flex-col space-y-1">
            <span className="text-gray-700 font-semibold">Offset: </span>
            <input
              type="number"
              value={offset}
              min={1}
              max={10}
              className="border-gray-400 px-2 h-8 text-sm text-gray-600 w-full border rounded focus:border-blue-500 focus:ring-0 outline-none"
              onChange={(e) => setOffset(e.target.value)}
            />
          </label>
          <label className="flex flex-col space-y-1">
            <span className="text-gray-700 font-semibold">
              Number of jokes:{" "}
            </span>
            <input
              type="number"
              value={numberOfJokes}
              min={1}
              max={10}
              className="border-gray-400 px-2 h-8 text-sm text-gray-600 w-full border rounded focus:border-blue-500 focus:ring-0 outline-none"
              onChange={(e) => setNumberOfJokes(e.target.value)}
            />
          </label>
        </div>
        <div className="pt-1">
          <button
            disabled={loading}
            className="bg-blue-600 text-white p-3 rounded-xl border-b-4 border-blue-800"
            onClick={jokeSearch}
          >
            <div className="flex space-x-2 items-center">
              <span>Search Jokes</span>

              <Search />
            </div>
          </button>
        </div>
      </div>
      <div className="w-full pl-4 max-w-5xl">
        <BasicTabs
          Resource={jokes}
          jsonResponse={jsonResponse}
          Loading={loading}
        />
      </div>
    </div>
  );
};
