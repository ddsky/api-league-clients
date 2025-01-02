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
 * OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric.h
 *
 * 
 */

#ifndef OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric_H
#define OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric : public OAIObject {
public:
    OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric();
    OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric(QString json);
    ~OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getUnitShort() const;
    void setUnitShort(const QString &unit_short);
    bool is_unit_short_Set() const;
    bool is_unit_short_Valid() const;

    double getAmount() const;
    void setAmount(const double &amount);
    bool is_amount_Set() const;
    bool is_amount_Valid() const;

    QString getUnitLong() const;
    void setUnitLong(const QString &unit_long);
    bool is_unit_long_Set() const;
    bool is_unit_long_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_unit_short;
    bool m_unit_short_isSet;
    bool m_unit_short_isValid;

    double m_amount;
    bool m_amount_isSet;
    bool m_amount_isValid;

    QString m_unit_long;
    bool m_unit_long_isSet;
    bool m_unit_long_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric)

#endif // OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric_H
