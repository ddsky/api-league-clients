package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SearchJokes200ResponseJokesInner;

@Canonical
class SearchJokes200Response {
    
    List<SearchJokes200ResponseJokesInner> jokes
    
    Integer available
}
