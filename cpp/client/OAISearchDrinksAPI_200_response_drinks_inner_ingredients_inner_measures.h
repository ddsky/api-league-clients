/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures.h
 *
 * 
 */

#ifndef OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_H
#define OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_H

#include <QJsonObject>

#include "OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric.h"
#include "OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_us.h"

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric;
class OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_us;

class OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures : public OAIObject {
public:
    OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures();
    OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures(QString json);
    ~OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric getMetric() const;
    void setMetric(const OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric &metric);
    bool is_metric_Set() const;
    bool is_metric_Valid() const;

    OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_us getUs() const;
    void setUs(const OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_us &us);
    bool is_us_Set() const;
    bool is_us_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric m_metric;
    bool m_metric_isSet;
    bool m_metric_isValid;

    OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_us m_us;
    bool m_us_isSet;
    bool m_us_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures)

#endif // OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_H
