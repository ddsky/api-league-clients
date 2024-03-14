/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures.h
 *
 * 
 */

#ifndef OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_H
#define OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_H

#include <QJsonObject>

#include "OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_metric.h"

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_metric;

class OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures : public OAIObject {
public:
    OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures();
    OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures(QString json);
    ~OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_metric getMetric() const;
    void setMetric(const OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_metric &metric);
    bool is_metric_Set() const;
    bool is_metric_Valid() const;

    OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_metric getUs() const;
    void setUs(const OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_metric &us);
    bool is_us_Set() const;
    bool is_us_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_metric m_metric;
    bool m_metric_isSet;
    bool m_metric_isValid;

    OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_metric m_us;
    bool m_us_isSet;
    bool m_us_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures)

#endif // OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_H
