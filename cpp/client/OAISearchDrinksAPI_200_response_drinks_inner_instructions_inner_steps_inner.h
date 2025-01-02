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
 * OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner.h
 *
 * 
 */

#ifndef OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_H
#define OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_H

#include <QJsonObject>

#include "OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner;

class OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner : public OAIObject {
public:
    OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner();
    OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner(QString json);
    ~OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getNumber() const;
    void setNumber(const qint32 &number);
    bool is_number_Set() const;
    bool is_number_Valid() const;

    QList<OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner> getIngredients() const;
    void setIngredients(const QList<OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner> &ingredients);
    bool is_ingredients_Set() const;
    bool is_ingredients_Valid() const;

    QList<QString> getEquipment() const;
    void setEquipment(const QList<QString> &equipment);
    bool is_equipment_Set() const;
    bool is_equipment_Valid() const;

    QString getStep() const;
    void setStep(const QString &step);
    bool is_step_Set() const;
    bool is_step_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_number;
    bool m_number_isSet;
    bool m_number_isValid;

    QList<OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner> m_ingredients;
    bool m_ingredients_isSet;
    bool m_ingredients_isValid;

    QList<QString> m_equipment;
    bool m_equipment_isSet;
    bool m_equipment_isValid;

    QString m_step;
    bool m_step_isSet;
    bool m_step_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner)

#endif // OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_H