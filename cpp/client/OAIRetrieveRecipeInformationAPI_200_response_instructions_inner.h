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
 * OAIRetrieveRecipeInformationAPI_200_response_instructions_inner.h
 *
 * 
 */

#ifndef OAIRetrieveRecipeInformationAPI_200_response_instructions_inner_H
#define OAIRetrieveRecipeInformationAPI_200_response_instructions_inner_H

#include <QJsonObject>

#include "OAIRetrieveRecipeInformationAPI_200_response_instructions_inner_steps_inner.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIRetrieveRecipeInformationAPI_200_response_instructions_inner_steps_inner;

class OAIRetrieveRecipeInformationAPI_200_response_instructions_inner : public OAIObject {
public:
    OAIRetrieveRecipeInformationAPI_200_response_instructions_inner();
    OAIRetrieveRecipeInformationAPI_200_response_instructions_inner(QString json);
    ~OAIRetrieveRecipeInformationAPI_200_response_instructions_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getName() const;
    void setName(const QString &name);
    bool is_name_Set() const;
    bool is_name_Valid() const;

    QList<OAIRetrieveRecipeInformationAPI_200_response_instructions_inner_steps_inner> getSteps() const;
    void setSteps(const QList<OAIRetrieveRecipeInformationAPI_200_response_instructions_inner_steps_inner> &steps);
    bool is_steps_Set() const;
    bool is_steps_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_name;
    bool m_name_isSet;
    bool m_name_isValid;

    QList<OAIRetrieveRecipeInformationAPI_200_response_instructions_inner_steps_inner> m_steps;
    bool m_steps_isSet;
    bool m_steps_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRetrieveRecipeInformationAPI_200_response_instructions_inner)

#endif // OAIRetrieveRecipeInformationAPI_200_response_instructions_inner_H
