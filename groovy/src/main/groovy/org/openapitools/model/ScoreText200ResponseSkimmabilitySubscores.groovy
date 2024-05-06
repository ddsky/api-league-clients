package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ScoreText200ResponseSkimmabilitySubscores {
    
    List<Integer> bulletPointRatioScore = new ArrayList<>()
    
    List<Integer> imageScore = new ArrayList<>()
    
    List<Integer> highlightedWordRatioScore = new ArrayList<>()
    
    List<Integer> videoScore = new ArrayList<>()
    
    List<Integer> paragraphScore = new ArrayList<>()
    
    List<Integer> paragraphHeadlineRatioScore = new ArrayList<>()
}
