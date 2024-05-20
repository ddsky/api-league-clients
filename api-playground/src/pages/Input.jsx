import React from "react";
import { MemeSearch } from "./humor";
import { RandomMeme } from "./RandomMeme";
import { SearchGif } from "./SearchGif";
import { Jokes } from "./SearchJokes";

export const Input = ({ FetchedApi }) => {
  const Api = "YOUR_API_KEY";
  if (FetchedApi === "meme search") {
    return <MemeSearch ApiKey={Api} />;
  }
  if (FetchedApi === "random meme") {
    return <RandomMeme ApiKey={Api} />;
  }
  if (FetchedApi === "search gif") {
    return <SearchGif ApiKey={Api} />;
  }
  if (FetchedApi === "search jokes") {
    return <Jokes ApiKey={Api} />;
  }
  return null;
};
