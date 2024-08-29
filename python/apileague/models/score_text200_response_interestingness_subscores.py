# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.2
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
from typing import Optional, Set
from typing_extensions import Self

class ScoreText200ResponseInterestingnessSubscores(BaseModel):
    """
    ScoreText200ResponseInterestingnessSubscores
    """ # noqa: E501
    title_rating_score: Optional[List[StrictInt]] = None
    quote_score: Optional[List[StrictInt]] = None
    length_score: Optional[List[StrictInt]] = None
    link_score: Optional[List[StrictInt]] = None
    google_hits_score: Optional[List[StrictInt]] = None
    __properties: ClassVar[List[str]] = ["title_rating_score", "quote_score", "length_score", "link_score", "google_hits_score"]

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
        """Create an instance of ScoreText200ResponseInterestingnessSubscores from a JSON string"""
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
        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of ScoreText200ResponseInterestingnessSubscores from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "title_rating_score": obj.get("title_rating_score"),
            "quote_score": obj.get("quote_score"),
            "length_score": obj.get("length_score"),
            "link_score": obj.get("link_score"),
            "google_hits_score": obj.get("google_hits_score")
        })
        return _obj


