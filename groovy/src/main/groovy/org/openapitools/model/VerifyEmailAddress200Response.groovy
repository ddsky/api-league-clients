package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class VerifyEmailAddress200Response {
    
    String email
    
    String domain
    
    String firstName
    
    String middleName
    
    String lastName
    
    String fullName
    
    String username
    
    String image
    
    String result
    
    Boolean disposable
    
    Boolean acceptAll
    
    Boolean freeProvider
}
