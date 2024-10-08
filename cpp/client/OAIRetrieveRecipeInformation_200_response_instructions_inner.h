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
 * OAIRetrieveRecipeInformation_200_response_instructions_inner.h
 *
 * 
 */

#ifndef OAIRetrieveRecipeInformation_200_response_instructions_inner_H
#define OAIRetrieveRecipeInformation_200_response_instructions_inner_H

#include <QJsonObject>

#include "OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner;

class OAIRetrieveRecipeInformation_200_response_instructions_inner : public OAIObject {
public:
    OAIRetrieveRecipeInformation_200_response_instructions_inner();
    OAIRetrieveRecipeInformation_200_response_instructions_inner(QString json);
    ~OAIRetrieveRecipeInformation_200_response_instructions_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getName() const;
    void setName(const QString &name);
    bool is_name_Set() const;
    bool is_name_Valid() const;

    QList<OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner> getSteps() const;
    void setSteps(const QList<OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner> &steps);
    bool is_steps_Set() const;
    bool is_steps_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_name;
    bool m_name_isSet;
    bool m_name_isValid;

    QList<OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner> m_steps;
    bool m_steps_isSet;
    bool m_steps_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRetrieveRecipeInformation_200_response_instructions_inner)

#endif // OAIRetrieveRecipeInformation_200_response_instructions_inner_H
