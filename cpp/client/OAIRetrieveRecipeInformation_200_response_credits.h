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
 * OAIRetrieveRecipeInformation_200_response_credits.h
 *
 * 
 */

#ifndef OAIRetrieveRecipeInformation_200_response_credits_H
#define OAIRetrieveRecipeInformation_200_response_credits_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRetrieveRecipeInformation_200_response_credits : public OAIObject {
public:
    OAIRetrieveRecipeInformation_200_response_credits();
    OAIRetrieveRecipeInformation_200_response_credits(QString json);
    ~OAIRetrieveRecipeInformation_200_response_credits() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getLicense() const;
    void setLicense(const QString &license);
    bool is_license_Set() const;
    bool is_license_Valid() const;

    QString getText() const;
    void setText(const QString &text);
    bool is_text_Set() const;
    bool is_text_Valid() const;

    QString getSourceName() const;
    void setSourceName(const QString &source_name);
    bool is_source_name_Set() const;
    bool is_source_name_Valid() const;

    QString getSourceUrl() const;
    void setSourceUrl(const QString &source_url);
    bool is_source_url_Set() const;
    bool is_source_url_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_license;
    bool m_license_isSet;
    bool m_license_isValid;

    QString m_text;
    bool m_text_isSet;
    bool m_text_isValid;

    QString m_source_name;
    bool m_source_name_isSet;
    bool m_source_name_isValid;

    QString m_source_url;
    bool m_source_url_isSet;
    bool m_source_url_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRetrieveRecipeInformation_200_response_credits)

#endif // OAIRetrieveRecipeInformation_200_response_credits_H
