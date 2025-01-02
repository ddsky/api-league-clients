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
 * OAIScoreTextAPI_200_response_skimmability.h
 *
 * 
 */

#ifndef OAIScoreTextAPI_200_response_skimmability_H
#define OAIScoreTextAPI_200_response_skimmability_H

#include <QJsonObject>

#include "OAIScoreTextAPI_200_response_skimmability_mainscores.h"
#include "OAIScoreTextAPI_200_response_skimmability_subscores.h"

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIScoreTextAPI_200_response_skimmability_mainscores;
class OAIScoreTextAPI_200_response_skimmability_subscores;

class OAIScoreTextAPI_200_response_skimmability : public OAIObject {
public:
    OAIScoreTextAPI_200_response_skimmability();
    OAIScoreTextAPI_200_response_skimmability(QString json);
    ~OAIScoreTextAPI_200_response_skimmability() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAIScoreTextAPI_200_response_skimmability_mainscores getMainscores() const;
    void setMainscores(const OAIScoreTextAPI_200_response_skimmability_mainscores &mainscores);
    bool is_mainscores_Set() const;
    bool is_mainscores_Valid() const;

    OAIScoreTextAPI_200_response_skimmability_subscores getSubscores() const;
    void setSubscores(const OAIScoreTextAPI_200_response_skimmability_subscores &subscores);
    bool is_subscores_Set() const;
    bool is_subscores_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAIScoreTextAPI_200_response_skimmability_mainscores m_mainscores;
    bool m_mainscores_isSet;
    bool m_mainscores_isValid;

    OAIScoreTextAPI_200_response_skimmability_subscores m_subscores;
    bool m_subscores_isSet;
    bool m_subscores_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIScoreTextAPI_200_response_skimmability)

#endif // OAIScoreTextAPI_200_response_skimmability_H
