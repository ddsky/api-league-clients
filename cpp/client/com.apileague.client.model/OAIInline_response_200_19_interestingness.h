/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIInline_response_200_19_interestingness.h
 *
 * 
 */

#ifndef OAIInline_response_200_19_interestingness_H
#define OAIInline_response_200_19_interestingness_H

#include <QJsonObject>

#include "com.apileague.client.model\OAIInline_response_200_19_interestingness_subscores.h"
#include "com.apileague.client.model\OAIInline_response_200_19_skimmability_mainscores.h"

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIInline_response_200_19_interestingness : public OAIObject {
public:
    OAIInline_response_200_19_interestingness();
    OAIInline_response_200_19_interestingness(QString json);
    ~OAIInline_response_200_19_interestingness() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAIInline_response_200_19_skimmability_mainscores getMainscores() const;
    void setMainscores(const OAIInline_response_200_19_skimmability_mainscores &mainscores);
    bool is_mainscores_Set() const;
    bool is_mainscores_Valid() const;

    OAIInline_response_200_19_interestingness_subscores getSubscores() const;
    void setSubscores(const OAIInline_response_200_19_interestingness_subscores &subscores);
    bool is_subscores_Set() const;
    bool is_subscores_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAIInline_response_200_19_skimmability_mainscores mainscores;
    bool m_mainscores_isSet;
    bool m_mainscores_isValid;

    OAIInline_response_200_19_interestingness_subscores subscores;
    bool m_subscores_isSet;
    bool m_subscores_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIInline_response_200_19_interestingness)

#endif // OAIInline_response_200_19_interestingness_H
