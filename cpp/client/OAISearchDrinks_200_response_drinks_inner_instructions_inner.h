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
 * OAISearchDrinks_200_response_drinks_inner_instructions_inner.h
 *
 * 
 */

#ifndef OAISearchDrinks_200_response_drinks_inner_instructions_inner_H
#define OAISearchDrinks_200_response_drinks_inner_instructions_inner_H

#include <QJsonObject>

#include "OAISearchDrinks_200_response_drinks_inner_instructions_inner_steps_inner.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchDrinks_200_response_drinks_inner_instructions_inner_steps_inner;

class OAISearchDrinks_200_response_drinks_inner_instructions_inner : public OAIObject {
public:
    OAISearchDrinks_200_response_drinks_inner_instructions_inner();
    OAISearchDrinks_200_response_drinks_inner_instructions_inner(QString json);
    ~OAISearchDrinks_200_response_drinks_inner_instructions_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getName() const;
    void setName(const QString &name);
    bool is_name_Set() const;
    bool is_name_Valid() const;

    QList<OAISearchDrinks_200_response_drinks_inner_instructions_inner_steps_inner> getSteps() const;
    void setSteps(const QList<OAISearchDrinks_200_response_drinks_inner_instructions_inner_steps_inner> &steps);
    bool is_steps_Set() const;
    bool is_steps_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_name;
    bool m_name_isSet;
    bool m_name_isValid;

    QList<OAISearchDrinks_200_response_drinks_inner_instructions_inner_steps_inner> m_steps;
    bool m_steps_isSet;
    bool m_steps_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchDrinks_200_response_drinks_inner_instructions_inner)

#endif // OAISearchDrinks_200_response_drinks_inner_instructions_inner_H
