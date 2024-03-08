package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class ExtractContentFromAWebPage200Response {
    
    String title
    
    String mainText
    
    String mainHtml
    
    List<String> images
}
