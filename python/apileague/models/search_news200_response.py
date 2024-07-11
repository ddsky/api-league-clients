# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.4.1
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, StrictInt
from typing import Any, ClassVar, Dict, List, Optional
from apileague.models.search_news200_response_news_inner import SearchNews200ResponseNewsInner
from typing import Optional, Set
from typing_extensions import Self

class SearchNews200Response(BaseModel):
    """
    SearchNews200Response
    """ # noqa: E501
    offset: Optional[StrictInt] = None
    number: Optional[StrictInt] = None
    available: Optional[StrictInt] = None
    news: Optional[List[SearchNews200ResponseNewsInner]] = None
    __properties: ClassVar[List[str]] = ["offset", "number", "available", "news"]

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
        """Create an instance of SearchNews200Response from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of each item in news (list)
        _items = []
        if self.news:
            for _item in self.news:
                if _item:
                    _items.append(_item.to_dict())
            _dict['news'] = _items
        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of SearchNews200Response from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "offset": obj.get("offset"),
            "number": obj.get("number"),
            "available": obj.get("available"),
            "news": [SearchNews200ResponseNewsInner.from_dict(_item) for _item in obj["news"]] if obj.get("news") is not None else None
        })
        return _obj


