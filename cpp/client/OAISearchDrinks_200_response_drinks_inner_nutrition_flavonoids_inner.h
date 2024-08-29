/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner.h
 *
 * 
 */

#ifndef OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner_H
#define OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner : public OAIObject {
public:
    OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner();
    OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner(QString json);
    ~OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner() override;

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
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner)

#endif // OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner_H
