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

from pydantic import BaseModel, ConfigDict, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from apileague.models.search_royalty_free_images200_response_images_inner_license import SearchRoyaltyFreeImages200ResponseImagesInnerLicense
from typing import Optional, Set
from typing_extensions import Self

class SearchRoyaltyFreeImages200ResponseImagesInner(BaseModel):
    """
    SearchRoyaltyFreeImages200ResponseImagesInner
    """ # noqa: E501
    width: Optional[StrictInt] = None
    license: Optional[SearchRoyaltyFreeImages200ResponseImagesInnerLicense] = None
    thumbnail: Optional[StrictStr] = None
    id: Optional[StrictStr] = None
    url: Optional[StrictStr] = None
    height: Optional[StrictInt] = None
    __properties: ClassVar[List[str]] = ["width", "license", "thumbnail", "id", "url", "height"]

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
        """Create an instance of SearchRoyaltyFreeImages200ResponseImagesInner from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of license
        if self.license:
            _dict['license'] = self.license.to_dict()
        # set to None if thumbnail (nullable) is None
        # and model_fields_set contains the field
        if self.thumbnail is None and "thumbnail" in self.model_fields_set:
            _dict['thumbnail'] = None

        # set to None if id (nullable) is None
        # and model_fields_set contains the field
        if self.id is None and "id" in self.model_fields_set:
            _dict['id'] = None

        # set to None if url (nullable) is None
        # and model_fields_set contains the field
        if self.url is None and "url" in self.model_fields_set:
            _dict['url'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of SearchRoyaltyFreeImages200ResponseImagesInner from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "width": obj.get("width"),
            "license": SearchRoyaltyFreeImages200ResponseImagesInnerLicense.from_dict(obj["license"]) if obj.get("license") is not None else None,
            "thumbnail": obj.get("thumbnail"),
            "id": obj.get("id"),
            "url": obj.get("url"),
            "height": obj.get("height")
        })
        return _obj


