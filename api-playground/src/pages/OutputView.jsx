import * as React from "react";
import PropTypes from "prop-types";
import Tabs from "@mui/material/Tabs";
import Tab from "@mui/material/Tab";
import Typography from "@mui/material/Typography";
import Box from "@mui/material/Box";
import { MagnifyingGlass } from "react-loader-spinner";
import { FileJson, LaptopMinimal } from "lucide-react";

function CustomTabPanel(props) {
  const { children, value, index, ...other } = props;

  return (
    <div
      role="tabpanel"
      hidden={value !== index}
      id={`simple-tabpanel-${index}`}
      aria-labelledby={`simple-tab-${index}`}
      {...other}
    >
      {value === index && (
        <Box sx={{ p: 3 }}>
          <Typography>{children}</Typography>
        </Box>
      )}
    </div>
  );
}

CustomTabPanel.propTypes = {
  children: PropTypes.node,
  index: PropTypes.number.isRequired,
  value: PropTypes.number.isRequired,
};

function a11yProps(index) {
  return {
    id: `simple-tab-${index}`,
    "aria-controls": `simple-tabpanel-${index}`,
  };
}
function JSONTabLabel() {
  return (
    <div style={{ display: "flex", alignItems: "center" }}>
      <FileJson style={{ marginRight: "8px" }} />
      <span>JSON Response</span>
    </div>
  );
}
function OutputTabLabel() {
  return (
    <div style={{ display: "flex", alignItems: "center" }}>
      <LaptopMinimal style={{ marginRight: "8px" }} />
      <span>Output</span>
    </div>
  );
}
export function BasicTabs({ Resource, jsonResponse, Loading }) {
  const [value, setValue] = React.useState(0);

  const handleChange = (event, newValue) => {
    setValue(newValue);
  };

  return (
    <>
      <Box sx={{ width: "100%" }}>
        <Box sx={{ borderBottom: 1, borderColor: "divider" }}>
          <Tabs
            value={value}
            onChange={handleChange}
            aria-label="basic tabs example"
          >
            <Tab label={<OutputTabLabel />} {...a11yProps(0)} />
            <Tab label={<JSONTabLabel />} {...a11yProps(1)} />
          </Tabs>
        </Box>
        <CustomTabPanel value={value} index={0}>
          {Loading ? (
            // Display loader widget when loading is true
            <MagnifyingGlass
              visible={true}
              height="80"
              width="80"
              ariaLabel="magnifying-glass-loading"
              wrapperStyle={{}}
              wrapperClass="magnifying-glass-wrapper"
              glassColor="#c0efff"
              color="#e15b64"
            />
          ) : (
            <div className="flex flex-wrap max-w-[40vw] max-h-[50vh] overflow-scroll p-10 space-y-10">
              {Resource.map((item, index) => (
                <div key={index}>
                  {/* Check if the item has jokes */}
                  {item.jokes && item.jokes.length > 0
                    ? item.jokes.map((joke, i) => (
                        <div className="overflow-auto bg-gray-300 p-4 rounded-lg shadow-xl max-h-80">
                          <p className="font-semibold" key={i}>
                            {joke.joke}
                          </p>
                        </div>
                      ))
                    : null}

                  {/* Check if the item has images */}
                  {item.images && item.images.length > 0
                    ? item.images.map((image, i) => (
                        <img
                          key={i}
                          className="rounded-md"
                          src={image.url}
                          alt={`Meme ${index}`}
                          style={{
                            width: image.width,
                            height: image.height,
                          }}
                        />
                      ))
                    : null}

                  {/* Check if the item is an image */}
                  {item.type && item.type.startsWith("image") ? (
                    <img
                      className="rounded-md"
                      src={item.url}
                      alt={`Meme ${index}`}
                    />
                  ) : null}

                  {/* Check if the item is a video */}
                  {item.type && item.type.startsWith("video") ? (
                    <video className="" controls>
                      <source src={item.url} type={item.type} />
                      Your browser does not support the video tag.
                    </video>
                  ) : null}

                  {/* Display description if available */}
                  {item.description && <p>{item.description}</p>}
                </div>
              ))}
            </div>
          )}
        </CustomTabPanel>
        <CustomTabPanel value={value} index={1}>
          {Loading ? (
            // Display loader widget when loading is true
            <MagnifyingGlass
              visible={true}
              height="80"
              width="80"
              ariaLabel="magnifying-glass-loading"
              wrapperStyle={{}}
              wrapperClass="magnifying-glass-wrapper"
              glassColor="#c0efff"
              color="#e15b64"
            />
          ) : (
            <div className="overflow-auto bg-gray-300 p-4 rounded-lg shadow-md max-h-80">
              {jsonResponse ? (
                <pre className="whitespace-pre-wrap text-left">
                  {JSON.stringify(jsonResponse, null, 2)}
                </pre>
              ) : (
                <p>
                  No JSON response yet. Perform a search to see the response.
                </p>
              )}
            </div>
          )}
        </CustomTabPanel>
      </Box>
    </>
  );
}
