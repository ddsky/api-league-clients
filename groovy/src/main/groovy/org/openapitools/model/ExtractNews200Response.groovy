package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;
import org.openapitools.model.ExtractNews200ResponseImagesInner;
import org.openapitools.model.ExtractNews200ResponseVideosInner;

@Canonical
class ExtractNews200Response {
    
    String title
    
    String text
    
    String url
    
    List<ExtractNews200ResponseImagesInner> images = new ArrayList<>()
    
    List<ExtractNews200ResponseVideosInner> videos = new ArrayList<>()
    
    String publishDate
    
    List<String> authors = new ArrayList<>()
    
    String language
}
