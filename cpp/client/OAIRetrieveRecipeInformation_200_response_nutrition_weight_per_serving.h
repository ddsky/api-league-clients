/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving.h
 *
 * 
 */

#ifndef OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving_H
#define OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving : public OAIObject {
public:
    OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving();
    OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving(QString json);
    ~OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving() override;

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

Q_DECLARE_METATYPE(OpenAPI::OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving)

#endif // OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving_H
