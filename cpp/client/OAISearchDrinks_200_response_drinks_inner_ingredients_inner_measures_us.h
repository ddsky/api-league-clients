/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures_us.h
 *
 * 
 */

#ifndef OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures_us_H
#define OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures_us_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures_us : public OAIObject {
public:
    OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures_us();
    OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures_us(QString json);
    ~OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures_us() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getUnitShort() const;
    void setUnitShort(const QString &unit_short);
    bool is_unit_short_Set() const;
    bool is_unit_short_Valid() const;

    qint32 getAmount() const;
    void setAmount(const qint32 &amount);
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

    qint32 m_amount;
    bool m_amount_isSet;
    bool m_amount_isValid;

    QString m_unit_long;
    bool m_unit_long_isSet;
    bool m_unit_long_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures_us)

#endif // OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures_us_H
