package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ScoreText200ResponseSkimmabilitySubscores {
    
    List<Integer> bulletPointRatioScore
    
    List<Integer> imageScore
    
    List<Integer> highlightedWordRatioScore
    
    List<Integer> videoScore
    
    List<Integer> paragraphScore
    
    List<Integer> paragraphHeadlineRatioScore
}
