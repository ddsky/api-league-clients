import React from "react";
import { SelectApi } from "./SelectApi";
import { Input } from "./Input";

export const Home = () => {
  const [selectedApi, setSelectedApi] = React.useState("");
  const getSelectedApi = (api) => {
    setSelectedApi(api);
  };
  return (
    <div className="w-full h-screen text-left bg-slate-200">
      <span
        className={`text-4xl ml-[16%] font-bold
        }`}
      >
        API Playground
      </span>
      <div className="flex pt-4">
        <div className="border-b-4 border-red-400 w-[20%]"></div>
        <div className="border-b-4 border-blue-500 w-[20%]"></div>
        <div className="border-b-4 border-yellow-400 w-[20%]"></div>
        <div className="border-b-4 border-green-600 w-[20%]"></div>
        <div className="border-b-4 border-orange-600 w-[20%]"></div>
      </div>
      <div className="flex flex-col items-center flex-auto mt-[1%]">
        <div className="w-[70%] border-y-2 border-gray-300 pb-4 pt-2 bg-slate-50 rounded-md shadow-xl shadow-blue-300 p-4">
          <SelectApi HandleData={getSelectedApi} />
          <Input FetchedApi={selectedApi} />
        </div>
      </div>
    </div>
  );
};
