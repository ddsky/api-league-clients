import { useState } from "react";
import PropTypes from "prop-types"; // Import PropTypes

export const TagField = ({ tags, addTag, removeTag, maxTags }) => {
  // track the use input

  const [userInput, setUserInput] = useState(" ");

  // Handle input onChange

  const handleInputChange = (e) => {
    setUserInput(e.target.value);
  };

  // handle Enter key press

  const handleKeyPress = (e) => {
    if (e.key === "Enter") {
      e.preventDefault(); // Prevent form submission or new line creation

      if (
        userInput.trim() !== "" &&
        userInput.length <= 12 &&
        tags.length < maxTags
      ) {
        addTag(userInput);
        setUserInput(""); // Clear the input after adding a tag
      }
    }
  };

  return (
    <div className="flex flex-col w-56">
      <input
        name="keyword_tags"
        type="text"
        placeholder={
          tags.length < maxTags
            ? "Add a tag"
            : `You can only enter max. of ${maxTags} tags`
        }
        className="text-sm p-1 border border-gray-300 text-gray-600 w-full border-b-2 focus:border-blue-500 rounded-sm focus:ring-0 outline-none"
        onKeyDown={handleKeyPress}
        onChange={handleInputChange}
        value={userInput}
        disabled={tags.length === maxTags}
      />

      {/* ===== Render the tags here ===== */}

      <div className="flex gap-3 mt-4 overflow-scroll">
        {tags.map((tag, index) => (
          <span
            key={`${index}-${tag}`}
            className="flex items-start basis-1/3 justify-start p-2 rounded-[32px] text-sm shadow-sm font-medium bg-blue-100 text-blue-800 mr-2"
          >
            {tag}
            <button
              className="ml-2 hover:text-blue-500"
              onClick={() => removeTag(tag)}
              title={`Remove ${tag}`}
            >
              &times;
            </button>
          </span>
        ))}
      </div>
    </div>
  );
};

// Prop Types validation
TagField.propTypes = {
  tags: PropTypes.arrayOf(PropTypes.string).isRequired,
  addTag: PropTypes.func.isRequired,
  removeTag: PropTypes.func.isRequired,
  maxTags: PropTypes.number.isRequired,
};
