# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.3
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, StrictFloat, StrictInt
from typing import Any, ClassVar, Dict, List, Optional, Union
from typing import Optional, Set
from typing_extensions import Self

class ScoreText200ResponseReadabilitySubscores(BaseModel):
    """
    ScoreText200ResponseReadabilitySubscores
    """ # noqa: E501
    reading_time_seconds: Optional[StrictInt] = None
    forcast: Optional[Union[StrictFloat, StrictInt]] = None
    flesch: Optional[Union[StrictFloat, StrictInt]] = None
    smog: Optional[Union[StrictFloat, StrictInt]] = None
    ari: Optional[Union[StrictFloat, StrictInt]] = None
    lix: Optional[Union[StrictFloat, StrictInt]] = None
    coleman_liau: Optional[Union[StrictFloat, StrictInt]] = None
    kincaid: Optional[Union[StrictFloat, StrictInt]] = None
    fog: Optional[Union[StrictFloat, StrictInt]] = None
    __properties: ClassVar[List[str]] = ["reading_time_seconds", "forcast", "flesch", "smog", "ari", "lix", "coleman_liau", "kincaid", "fog"]

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
        """Create an instance of ScoreText200ResponseReadabilitySubscores from a JSON string"""
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
        """Create an instance of ScoreText200ResponseReadabilitySubscores from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "reading_time_seconds": obj.get("reading_time_seconds"),
            "forcast": obj.get("forcast"),
            "flesch": obj.get("flesch"),
            "smog": obj.get("smog"),
            "ari": obj.get("ari"),
            "lix": obj.get("lix"),
            "coleman_liau": obj.get("coleman_liau"),
            "kincaid": obj.get("kincaid"),
            "fog": obj.get("fog")
        })
        return _obj


