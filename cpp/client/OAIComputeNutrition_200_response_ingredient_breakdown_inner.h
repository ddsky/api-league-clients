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
 * OAIComputeNutrition_200_response_ingredient_breakdown_inner.h
 *
 * 
 */

#ifndef OAIComputeNutrition_200_response_ingredient_breakdown_inner_H
#define OAIComputeNutrition_200_response_ingredient_breakdown_inner_H

#include <QJsonObject>

#include "OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner;

class OAIComputeNutrition_200_response_ingredient_breakdown_inner : public OAIObject {
public:
    OAIComputeNutrition_200_response_ingredient_breakdown_inner();
    OAIComputeNutrition_200_response_ingredient_breakdown_inner(QString json);
    ~OAIComputeNutrition_200_response_ingredient_breakdown_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getName() const;
    void setName(const QString &name);
    bool is_name_Set() const;
    bool is_name_Valid() const;

    qint32 getAmount() const;
    void setAmount(const qint32 &amount);
    bool is_amount_Set() const;
    bool is_amount_Valid() const;

    QString getUnit() const;
    void setUnit(const QString &unit);
    bool is_unit_Set() const;
    bool is_unit_Valid() const;

    qint32 getId() const;
    void setId(const qint32 &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QList<OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner> getNutrients() const;
    void setNutrients(const QList<OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner> &nutrients);
    bool is_nutrients_Set() const;
    bool is_nutrients_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_name;
    bool m_name_isSet;
    bool m_name_isValid;

    qint32 m_amount;
    bool m_amount_isSet;
    bool m_amount_isValid;

    QString m_unit;
    bool m_unit_isSet;
    bool m_unit_isValid;

    qint32 m_id;
    bool m_id_isSet;
    bool m_id_isValid;

    QList<OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner> m_nutrients;
    bool m_nutrients_isSet;
    bool m_nutrients_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIComputeNutrition_200_response_ingredient_breakdown_inner)

#endif // OAIComputeNutrition_200_response_ingredient_breakdown_inner_H
