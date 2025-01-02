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
 * OAIVerifyEmailAddressAPI_200_response.h
 *
 * 
 */

#ifndef OAIVerifyEmailAddressAPI_200_response_H
#define OAIVerifyEmailAddressAPI_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIVerifyEmailAddressAPI_200_response : public OAIObject {
public:
    OAIVerifyEmailAddressAPI_200_response();
    OAIVerifyEmailAddressAPI_200_response(QString json);
    ~OAIVerifyEmailAddressAPI_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getEmail() const;
    void setEmail(const QString &email);
    bool is_email_Set() const;
    bool is_email_Valid() const;

    QString getDomain() const;
    void setDomain(const QString &domain);
    bool is_domain_Set() const;
    bool is_domain_Valid() const;

    QString getFirstName() const;
    void setFirstName(const QString &first_name);
    bool is_first_name_Set() const;
    bool is_first_name_Valid() const;

    QString getMiddleName() const;
    void setMiddleName(const QString &middle_name);
    bool is_middle_name_Set() const;
    bool is_middle_name_Valid() const;

    QString getLastName() const;
    void setLastName(const QString &last_name);
    bool is_last_name_Set() const;
    bool is_last_name_Valid() const;

    QString getFullName() const;
    void setFullName(const QString &full_name);
    bool is_full_name_Set() const;
    bool is_full_name_Valid() const;

    QString getUsername() const;
    void setUsername(const QString &username);
    bool is_username_Set() const;
    bool is_username_Valid() const;

    QString getImage() const;
    void setImage(const QString &image);
    bool is_image_Set() const;
    bool is_image_Valid() const;

    QString getResult() const;
    void setResult(const QString &result);
    bool is_result_Set() const;
    bool is_result_Valid() const;

    bool isDisposable() const;
    void setDisposable(const bool &disposable);
    bool is_disposable_Set() const;
    bool is_disposable_Valid() const;

    bool isAcceptAll() const;
    void setAcceptAll(const bool &accept_all);
    bool is_accept_all_Set() const;
    bool is_accept_all_Valid() const;

    bool isFreeProvider() const;
    void setFreeProvider(const bool &free_provider);
    bool is_free_provider_Set() const;
    bool is_free_provider_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_email;
    bool m_email_isSet;
    bool m_email_isValid;

    QString m_domain;
    bool m_domain_isSet;
    bool m_domain_isValid;

    QString m_first_name;
    bool m_first_name_isSet;
    bool m_first_name_isValid;

    QString m_middle_name;
    bool m_middle_name_isSet;
    bool m_middle_name_isValid;

    QString m_last_name;
    bool m_last_name_isSet;
    bool m_last_name_isValid;

    QString m_full_name;
    bool m_full_name_isSet;
    bool m_full_name_isValid;

    QString m_username;
    bool m_username_isSet;
    bool m_username_isValid;

    QString m_image;
    bool m_image_isSet;
    bool m_image_isValid;

    QString m_result;
    bool m_result_isSet;
    bool m_result_isValid;

    bool m_disposable;
    bool m_disposable_isSet;
    bool m_disposable_isValid;

    bool m_accept_all;
    bool m_accept_all_isSet;
    bool m_accept_all_isValid;

    bool m_free_provider;
    bool m_free_provider_isSet;
    bool m_free_provider_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIVerifyEmailAddressAPI_200_response)

#endif // OAIVerifyEmailAddressAPI_200_response_H
