package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SearchBooks200ResponseBooksInner;

@Canonical
class SearchBooks200Response {
    
    Integer available
    
    Integer number
    
    Integer offset
    
    List<SearchBooks200ResponseBooksInner> books
}
