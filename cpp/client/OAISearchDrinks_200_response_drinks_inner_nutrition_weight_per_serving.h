/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchDrinks_200_response_drinks_inner_nutrition_weight_per_serving.h
 *
 * 
 */

#ifndef OAISearchDrinks_200_response_drinks_inner_nutrition_weight_per_serving_H
#define OAISearchDrinks_200_response_drinks_inner_nutrition_weight_per_serving_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISearchDrinks_200_response_drinks_inner_nutrition_weight_per_serving : public OAIObject {
public:
    OAISearchDrinks_200_response_drinks_inner_nutrition_weight_per_serving();
    OAISearchDrinks_200_response_drinks_inner_nutrition_weight_per_serving(QString json);
    ~OAISearchDrinks_200_response_drinks_inner_nutrition_weight_per_serving() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getAmount() const;
    void setAmount(const qint32 &amount);
    bool is_amount_Set() const;
    bool is_amount_Valid() const;

    QString getUnit() const;
    void setUnit(const QString &unit);
    bool is_unit_Set() const;
    bool is_unit_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_amount;
    bool m_amount_isSet;
    bool m_amount_isValid;

    QString m_unit;
    bool m_unit_isSet;
    bool m_unit_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchDrinks_200_response_drinks_inner_nutrition_weight_per_serving)

#endif // OAISearchDrinks_200_response_drinks_inner_nutrition_weight_per_serving_H
