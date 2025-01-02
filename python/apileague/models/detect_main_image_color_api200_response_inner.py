# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.4
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from typing import Optional, Set
from typing_extensions import Self

class DetectMainImageColorAPI200ResponseInner(BaseModel):
    """
    DetectMainImageColorAPI200ResponseInner
    """ # noqa: E501
    specific_color: Optional[StrictStr] = None
    main_color: Optional[StrictStr] = None
    hex_code: Optional[StrictStr] = None
    __properties: ClassVar[List[str]] = ["specific_color", "main_color", "hex_code"]

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
        """Create an instance of DetectMainImageColorAPI200ResponseInner from a JSON string"""
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
        # set to None if specific_color (nullable) is None
        # and model_fields_set contains the field
        if self.specific_color is None and "specific_color" in self.model_fields_set:
            _dict['specific_color'] = None

        # set to None if main_color (nullable) is None
        # and model_fields_set contains the field
        if self.main_color is None and "main_color" in self.model_fields_set:
            _dict['main_color'] = None

        # set to None if hex_code (nullable) is None
        # and model_fields_set contains the field
        if self.hex_code is None and "hex_code" in self.model_fields_set:
            _dict['hex_code'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of DetectMainImageColorAPI200ResponseInner from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "specific_color": obj.get("specific_color"),
            "main_color": obj.get("main_color"),
            "hex_code": obj.get("hex_code")
        })
        return _obj

