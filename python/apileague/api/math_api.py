# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501

import warnings
from pydantic import validate_call, Field, StrictFloat, StrictStr, StrictInt
from typing import Any, Dict, List, Optional, Tuple, Union
from typing_extensions import Annotated

from pydantic import Field, field_validator
from typing import Optional, Union
from typing_extensions import Annotated
from apileague.models.convert_units200_response import ConvertUnits200Response

from apileague.api_client import ApiClient, RequestSerialized
from apileague.api_response import ApiResponse
from apileague.rest import RESTResponseType


class MathApi:
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None) -> None:
        if api_client is None:
            api_client = ApiClient.get_default()
        self.api_client = api_client


    @validate_call
    def convert_units(
        self,
        source_amount: Annotated[Union[Annotated[float, Field(le=99999999, strict=True, ge=0)], Annotated[int, Field(le=99999999, strict=True, ge=0)]], Field(description="The source amount.")],
        source_unit: Annotated[str, Field(strict=True, max_length=100, description="The source unit.")],
        target_unit: Annotated[str, Field(strict=True, max_length=100, description="The unit to which should be converted.")],
        food_name: Annotated[Optional[Annotated[str, Field(strict=True, max_length=200)]], Field(description="An optional food name. For converting foods the food is relevant as they have different densities.")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> ConvertUnits200Response:
        """Convert Units

        Convert units from one to another. The API returns the amount and the unit of the target unit.

        :param source_amount: The source amount. (required)
        :type source_amount: float
        :param source_unit: The source unit. (required)
        :type source_unit: str
        :param target_unit: The unit to which should be converted. (required)
        :type target_unit: str
        :param food_name: An optional food name. For converting foods the food is relevant as they have different densities.
        :type food_name: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._convert_units_serialize(
            source_amount=source_amount,
            source_unit=source_unit,
            target_unit=target_unit,
            food_name=food_name,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "ConvertUnits200Response",
            '401': None,
            '402': None,
            '403': None,
            '404': None,
            '406': None,
            '429': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        ).data


    @validate_call
    def convert_units_with_http_info(
        self,
        source_amount: Annotated[Union[Annotated[float, Field(le=99999999, strict=True, ge=0)], Annotated[int, Field(le=99999999, strict=True, ge=0)]], Field(description="The source amount.")],
        source_unit: Annotated[str, Field(strict=True, max_length=100, description="The source unit.")],
        target_unit: Annotated[str, Field(strict=True, max_length=100, description="The unit to which should be converted.")],
        food_name: Annotated[Optional[Annotated[str, Field(strict=True, max_length=200)]], Field(description="An optional food name. For converting foods the food is relevant as they have different densities.")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> ApiResponse[ConvertUnits200Response]:
        """Convert Units

        Convert units from one to another. The API returns the amount and the unit of the target unit.

        :param source_amount: The source amount. (required)
        :type source_amount: float
        :param source_unit: The source unit. (required)
        :type source_unit: str
        :param target_unit: The unit to which should be converted. (required)
        :type target_unit: str
        :param food_name: An optional food name. For converting foods the food is relevant as they have different densities.
        :type food_name: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._convert_units_serialize(
            source_amount=source_amount,
            source_unit=source_unit,
            target_unit=target_unit,
            food_name=food_name,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "ConvertUnits200Response",
            '401': None,
            '402': None,
            '403': None,
            '404': None,
            '406': None,
            '429': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        )


    @validate_call
    def convert_units_without_preload_content(
        self,
        source_amount: Annotated[Union[Annotated[float, Field(le=99999999, strict=True, ge=0)], Annotated[int, Field(le=99999999, strict=True, ge=0)]], Field(description="The source amount.")],
        source_unit: Annotated[str, Field(strict=True, max_length=100, description="The source unit.")],
        target_unit: Annotated[str, Field(strict=True, max_length=100, description="The unit to which should be converted.")],
        food_name: Annotated[Optional[Annotated[str, Field(strict=True, max_length=200)]], Field(description="An optional food name. For converting foods the food is relevant as they have different densities.")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> RESTResponseType:
        """Convert Units

        Convert units from one to another. The API returns the amount and the unit of the target unit.

        :param source_amount: The source amount. (required)
        :type source_amount: float
        :param source_unit: The source unit. (required)
        :type source_unit: str
        :param target_unit: The unit to which should be converted. (required)
        :type target_unit: str
        :param food_name: An optional food name. For converting foods the food is relevant as they have different densities.
        :type food_name: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._convert_units_serialize(
            source_amount=source_amount,
            source_unit=source_unit,
            target_unit=target_unit,
            food_name=food_name,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "ConvertUnits200Response",
            '401': None,
            '402': None,
            '403': None,
            '404': None,
            '406': None,
            '429': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        return response_data.response


    def _convert_units_serialize(
        self,
        source_amount,
        source_unit,
        target_unit,
        food_name,
        _request_auth,
        _content_type,
        _headers,
        _host_index,
    ) -> RequestSerialized:

        _host = None

        _collection_formats: Dict[str, str] = {
        }

        _path_params: Dict[str, str] = {}
        _query_params: List[Tuple[str, str]] = []
        _header_params: Dict[str, Optional[str]] = _headers or {}
        _form_params: List[Tuple[str, str]] = []
        _files: Dict[str, str] = {}
        _body_params: Optional[bytes] = None

        # process the path parameters
        # process the query parameters
        if source_amount is not None:
            
            _query_params.append(('source-amount', source_amount))
            
        if source_unit is not None:
            
            _query_params.append(('source-unit', source_unit))
            
        if target_unit is not None:
            
            _query_params.append(('target-unit', target_unit))
            
        if food_name is not None:
            
            _query_params.append(('food-name', food_name))
            
        # process the header parameters
        # process the form parameters
        # process the body parameter


        # set the HTTP header `Accept`
        _header_params['Accept'] = self.api_client.select_header_accept(
            [
                'application/json'
            ]
        )


        # authentication setting
        _auth_settings: List[str] = [
            'apiKey', 
            'headerApiKey'
        ]

        return self.api_client.param_serialize(
            method='GET',
            resource_path='/convert-units',
            path_params=_path_params,
            query_params=_query_params,
            header_params=_header_params,
            body=_body_params,
            post_params=_form_params,
            files=_files,
            auth_settings=_auth_settings,
            collection_formats=_collection_formats,
            _host=_host,
            _request_auth=_request_auth
        )


