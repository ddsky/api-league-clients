package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SearchMemes200ResponseMemesInner;

@Canonical
class SearchMemes200Response {
    
    List<SearchMemes200ResponseMemesInner> memes = new ArrayList<>()
    
    Integer available
}
