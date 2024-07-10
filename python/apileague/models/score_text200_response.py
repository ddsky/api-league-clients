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

from pydantic import BaseModel, ConfigDict, StrictFloat, StrictInt
from typing import Any, ClassVar, Dict, List, Optional, Union
from apileague.models.score_text200_response_interestingness import ScoreText200ResponseInterestingness
from apileague.models.score_text200_response_readability import ScoreText200ResponseReadability
from apileague.models.score_text200_response_skimmability import ScoreText200ResponseSkimmability
from apileague.models.score_text200_response_style import ScoreText200ResponseStyle
from typing import Optional, Set
from typing_extensions import Self

class ScoreText200Response(BaseModel):
    """
    ScoreText200Response
    """ # noqa: E501
    number_of_words: Optional[StrictInt] = None
    number_of_sentences: Optional[StrictInt] = None
    readability: Optional[ScoreText200ResponseReadability] = None
    skimmability: Optional[ScoreText200ResponseSkimmability] = None
    interestingness: Optional[ScoreText200ResponseInterestingness] = None
    style: Optional[ScoreText200ResponseStyle] = None
    total_score: Optional[Union[StrictFloat, StrictInt]] = None
    __properties: ClassVar[List[str]] = ["number_of_words", "number_of_sentences", "readability", "skimmability", "interestingness", "style", "total_score"]

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
        """Create an instance of ScoreText200Response from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of readability
        if self.readability:
            _dict['readability'] = self.readability.to_dict()
        # override the default output from pydantic by calling `to_dict()` of skimmability
        if self.skimmability:
            _dict['skimmability'] = self.skimmability.to_dict()
        # override the default output from pydantic by calling `to_dict()` of interestingness
        if self.interestingness:
            _dict['interestingness'] = self.interestingness.to_dict()
        # override the default output from pydantic by calling `to_dict()` of style
        if self.style:
            _dict['style'] = self.style.to_dict()
        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of ScoreText200Response from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "number_of_words": obj.get("number_of_words"),
            "number_of_sentences": obj.get("number_of_sentences"),
            "readability": ScoreText200ResponseReadability.from_dict(obj["readability"]) if obj.get("readability") is not None else None,
            "skimmability": ScoreText200ResponseSkimmability.from_dict(obj["skimmability"]) if obj.get("skimmability") is not None else None,
            "interestingness": ScoreText200ResponseInterestingness.from_dict(obj["interestingness"]) if obj.get("interestingness") is not None else None,
            "style": ScoreText200ResponseStyle.from_dict(obj["style"]) if obj.get("style") is not None else None,
            "total_score": obj.get("total_score")
        })
        return _obj


