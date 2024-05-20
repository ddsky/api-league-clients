import React from "react";
import InputLabel from "@mui/material/InputLabel";
import MenuItem from "@mui/material/MenuItem";
import FormControl from "@mui/material/FormControl";
import Select from "@mui/material/Select";
export const SelectApi = ({ HandleData }) => {
  const [selectedApi, setSelectedApi] = React.useState("meme search");

  React.useEffect(() => {
    // Call HandleData with the initial value when the component mounts
    HandleData(selectedApi);
  }, [HandleData, selectedApi]);

  const handleChange = (event) => {
    setSelectedApi(event.target.value);
    HandleData(event.target.value);
  };

  return (
    <div className="flex flex-auto space-x-4 items-center border-b-2 border-gray-300">
      <span className="pl-8 font-bold text-lg">Choose API: </span>
      <FormControl variant="outlined" sx={{ m: 1, minWidth: 250 }}>
        <InputLabel id="ApiSelector">Api</InputLabel>
        <Select
          labelId="ApiSelector"
          id="demo-simple-select-standard"
          value={selectedApi}
          onChange={handleChange}
          label="Api"
        >
          {/* <MenuItem value="">
            <em>None</em>
          </MenuItem> */}
          <MenuItem value={"meme search"}>Meme Search</MenuItem>
          <MenuItem value={"random meme"}>Random Meme</MenuItem>
          <MenuItem value={"search gif"}>Search Gifs</MenuItem>
          <MenuItem value={"search jokes"}>Search Jokes</MenuItem>
        </Select>
      </FormControl>
    </div>
  );
};
