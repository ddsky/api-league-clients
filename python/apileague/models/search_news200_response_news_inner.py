# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.4.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, StrictFloat, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional, Union
from typing import Optional, Set
from typing_extensions import Self

class SearchNews200ResponseNewsInner(BaseModel):
    """
    SearchNews200ResponseNewsInner
    """ # noqa: E501
    summary: Optional[StrictStr] = None
    image: Optional[StrictStr] = None
    sentiment: Optional[Union[StrictFloat, StrictInt]] = None
    language: Optional[StrictStr] = None
    video: Optional[StrictStr] = None
    title: Optional[StrictStr] = None
    url: Optional[StrictStr] = None
    source_country: Optional[StrictStr] = None
    id: Optional[StrictInt] = None
    text: Optional[StrictStr] = None
    category: Optional[StrictStr] = None
    publish_date: Optional[StrictStr] = None
    authors: Optional[List[Optional[StrictStr]]] = None
    __properties: ClassVar[List[str]] = ["summary", "image", "sentiment", "language", "video", "title", "url", "source_country", "id", "text", "category", "publish_date", "authors"]

    model_config = ConfigDict(
        populate_by_name=True,
        validate_assignment=True,
        protected_namespaces=(),
    )


    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Optional[Self]:
        """Create an instance of SearchNews200ResponseNewsInner from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self) -> Dict[str, Any]:
        """Return the dictionary representation of the model using alias.

        This has the following differences from calling pydantic's
        `self.model_dump(by_alias=True)`:

        * `None` is only added to the output dict for nullable fields that
          were set at model initialization. Other fields with value `None`
          are ignored.
        """
        excluded_fields: Set[str] = set([
        ])

        _dict = self.model_dump(
            by_alias=True,
            exclude=excluded_fields,
            exclude_none=True,
        )
        # set to None if summary (nullable) is None
        # and model_fields_set contains the field
        if self.summary is None and "summary" in self.model_fields_set:
            _dict['summary'] = None

        # set to None if image (nullable) is None
        # and model_fields_set contains the field
        if self.image is None and "image" in self.model_fields_set:
            _dict['image'] = None

        # set to None if language (nullable) is None
        # and model_fields_set contains the field
        if self.language is None and "language" in self.model_fields_set:
            _dict['language'] = None

        # set to None if video (nullable) is None
        # and model_fields_set contains the field
        if self.video is None and "video" in self.model_fields_set:
            _dict['video'] = None

        # set to None if title (nullable) is None
        # and model_fields_set contains the field
        if self.title is None and "title" in self.model_fields_set:
            _dict['title'] = None

        # set to None if url (nullable) is None
        # and model_fields_set contains the field
        if self.url is None and "url" in self.model_fields_set:
            _dict['url'] = None

        # set to None if source_country (nullable) is None
        # and model_fields_set contains the field
        if self.source_country is None and "source_country" in self.model_fields_set:
            _dict['source_country'] = None

        # set to None if text (nullable) is None
        # and model_fields_set contains the field
        if self.text is None and "text" in self.model_fields_set:
            _dict['text'] = None

        # set to None if category (nullable) is None
        # and model_fields_set contains the field
        if self.category is None and "category" in self.model_fields_set:
            _dict['category'] = None

        # set to None if publish_date (nullable) is None
        # and model_fields_set contains the field
        if self.publish_date is None and "publish_date" in self.model_fields_set:
            _dict['publish_date'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of SearchNews200ResponseNewsInner from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "summary": obj.get("summary"),
            "image": obj.get("image"),
            "sentiment": obj.get("sentiment"),
            "language": obj.get("language"),
            "video": obj.get("video"),
            "title": obj.get("title"),
            "url": obj.get("url"),
            "source_country": obj.get("source_country"),
            "id": obj.get("id"),
            "text": obj.get("text"),
            "category": obj.get("category"),
            "publish_date": obj.get("publish_date"),
            "authors": obj.get("authors")
        })
        return _obj


