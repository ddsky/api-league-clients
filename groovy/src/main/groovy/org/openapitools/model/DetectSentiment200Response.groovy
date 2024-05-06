package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.DetectSentiment200ResponseDocument;
import org.openapitools.model.DetectSentiment200ResponseSentencesInner;

@Canonical
class DetectSentiment200Response {
    
    DetectSentiment200ResponseDocument document
    
    List<DetectSentiment200ResponseSentencesInner> sentences = new ArrayList<>()
}
