package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class ExtractDates200ResponseDatesInner {
    
    Integer startPosition
    
    String date
    
    BigDecimal normalizedDate
    
    String tag
    
    Integer endPosition
}
