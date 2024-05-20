import { useState } from "react";
import { BasicTabs } from "./OutputView";
import { Search } from "lucide-react";
// import useTagInput from "../components/useTag"; // Assuming you're not using this for now
// import { TagField } from "../components/TagField"; // Assuming you're not using this for now

var ApiLeague = require("../api_league");

export const SearchGif = ({ ApiKey }) => {
  let defaultClient = ApiLeague.ApiClient.instance;
  let apiKey = defaultClient.authentications["apiKey"];
  apiKey.apiKey = ApiKey;
  const [numberOfGif, setNumberOfGif] = useState(1);
  const [query, setQuery] = useState("");
  const [gif, setGif] = useState([]);
  const [jsonResponse, setJsonResponse] = useState(null);
  const [loading, setLoading] = useState(false);

  const searchGif = async () => {
    try {
      setLoading(true);
      let apiInstance = new ApiLeague.HumorApi();
      let opts = {};

      if (numberOfGif) {
        opts.number = numberOfGif;
      }

      apiInstance.searchGifs(query, opts, (error, data, response) => {
        if (error) {
          console.error(error);
        } else {
          setGif([data]);
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
            <span className="text-gray-700 font-semibold">Query: </span>
            <input
              type="text"
              value={query}
              className="border-gray-400 px-2 h-8 text-sm text-gray-600 w-full border rounded focus:border-blue-500 focus:ring-0 outline-none"
              onChange={(e) => setQuery(e.target.value)}
            />
          </label>
          <label className="flex flex-col space-y-1">
            <span className="text-gray-700 font-semibold">Number of Gif: </span>
            <input
              type="number"
              value={numberOfGif}
              min={0}
              className="border-gray-400 px-2 h-8 text-sm text-gray-600 w-full border rounded focus:border-blue-500 focus:ring-0 outline-none"
              onChange={(e) => setNumberOfGif(e.target.value)}
            />
          </label>
        </div>
        <div className="pt-2">
          <button
            disabled={loading}
            className="bg-blue-600 text-white p-3 rounded-xl border-b-4 border-blue-800"
            onClick={searchGif}
          >
            <div className="flex space-x-2 items-center">
              <span>Search Gif</span>

              <Search />
            </div>
          </button>
        </div>
      </div>
      <div className="w-full pl-4 max-w-5xl">
        <BasicTabs
          Resource={gif}
          jsonResponse={jsonResponse}
          Loading={loading}
        />
      </div>
    </div>
  );
};
