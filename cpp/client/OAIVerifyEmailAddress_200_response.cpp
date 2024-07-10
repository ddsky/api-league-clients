/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIVerifyEmailAddress_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIVerifyEmailAddress_200_response::OAIVerifyEmailAddress_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIVerifyEmailAddress_200_response::OAIVerifyEmailAddress_200_response() {
    this->initializeModel();
}

OAIVerifyEmailAddress_200_response::~OAIVerifyEmailAddress_200_response() {}

void OAIVerifyEmailAddress_200_response::initializeModel() {

    m_email_isSet = false;
    m_email_isValid = false;

    m_domain_isSet = false;
    m_domain_isValid = false;

    m_first_name_isSet = false;
    m_first_name_isValid = false;

    m_middle_name_isSet = false;
    m_middle_name_isValid = false;

    m_last_name_isSet = false;
    m_last_name_isValid = false;

    m_full_name_isSet = false;
    m_full_name_isValid = false;

    m_username_isSet = false;
    m_username_isValid = false;

    m_image_isSet = false;
    m_image_isValid = false;

    m_result_isSet = false;
    m_result_isValid = false;

    m_disposable_isSet = false;
    m_disposable_isValid = false;

    m_accept_all_isSet = false;
    m_accept_all_isValid = false;

    m_free_provider_isSet = false;
    m_free_provider_isValid = false;
}

void OAIVerifyEmailAddress_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIVerifyEmailAddress_200_response::fromJsonObject(QJsonObject json) {

    m_email_isValid = ::OpenAPI::fromJsonValue(m_email, json[QString("email")]);
    m_email_isSet = !json[QString("email")].isNull() && m_email_isValid;

    m_domain_isValid = ::OpenAPI::fromJsonValue(m_domain, json[QString("domain")]);
    m_domain_isSet = !json[QString("domain")].isNull() && m_domain_isValid;

    m_first_name_isValid = ::OpenAPI::fromJsonValue(m_first_name, json[QString("first_name")]);
    m_first_name_isSet = !json[QString("first_name")].isNull() && m_first_name_isValid;

    m_middle_name_isValid = ::OpenAPI::fromJsonValue(m_middle_name, json[QString("middle_name")]);
    m_middle_name_isSet = !json[QString("middle_name")].isNull() && m_middle_name_isValid;

    m_last_name_isValid = ::OpenAPI::fromJsonValue(m_last_name, json[QString("last_name")]);
    m_last_name_isSet = !json[QString("last_name")].isNull() && m_last_name_isValid;

    m_full_name_isValid = ::OpenAPI::fromJsonValue(m_full_name, json[QString("full_name")]);
    m_full_name_isSet = !json[QString("full_name")].isNull() && m_full_name_isValid;

    m_username_isValid = ::OpenAPI::fromJsonValue(m_username, json[QString("username")]);
    m_username_isSet = !json[QString("username")].isNull() && m_username_isValid;

    m_image_isValid = ::OpenAPI::fromJsonValue(m_image, json[QString("image")]);
    m_image_isSet = !json[QString("image")].isNull() && m_image_isValid;

    m_result_isValid = ::OpenAPI::fromJsonValue(m_result, json[QString("result")]);
    m_result_isSet = !json[QString("result")].isNull() && m_result_isValid;

    m_disposable_isValid = ::OpenAPI::fromJsonValue(m_disposable, json[QString("disposable")]);
    m_disposable_isSet = !json[QString("disposable")].isNull() && m_disposable_isValid;

    m_accept_all_isValid = ::OpenAPI::fromJsonValue(m_accept_all, json[QString("accept_all")]);
    m_accept_all_isSet = !json[QString("accept_all")].isNull() && m_accept_all_isValid;

    m_free_provider_isValid = ::OpenAPI::fromJsonValue(m_free_provider, json[QString("free_provider")]);
    m_free_provider_isSet = !json[QString("free_provider")].isNull() && m_free_provider_isValid;
}

QString OAIVerifyEmailAddress_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIVerifyEmailAddress_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_email_isSet) {
        obj.insert(QString("email"), ::OpenAPI::toJsonValue(m_email));
    }
    if (m_domain_isSet) {
        obj.insert(QString("domain"), ::OpenAPI::toJsonValue(m_domain));
    }
    if (m_first_name_isSet) {
        obj.insert(QString("first_name"), ::OpenAPI::toJsonValue(m_first_name));
    }
    if (m_middle_name_isSet) {
        obj.insert(QString("middle_name"), ::OpenAPI::toJsonValue(m_middle_name));
    }
    if (m_last_name_isSet) {
        obj.insert(QString("last_name"), ::OpenAPI::toJsonValue(m_last_name));
    }
    if (m_full_name_isSet) {
        obj.insert(QString("full_name"), ::OpenAPI::toJsonValue(m_full_name));
    }
    if (m_username_isSet) {
        obj.insert(QString("username"), ::OpenAPI::toJsonValue(m_username));
    }
    if (m_image_isSet) {
        obj.insert(QString("image"), ::OpenAPI::toJsonValue(m_image));
    }
    if (m_result_isSet) {
        obj.insert(QString("result"), ::OpenAPI::toJsonValue(m_result));
    }
    if (m_disposable_isSet) {
        obj.insert(QString("disposable"), ::OpenAPI::toJsonValue(m_disposable));
    }
    if (m_accept_all_isSet) {
        obj.insert(QString("accept_all"), ::OpenAPI::toJsonValue(m_accept_all));
    }
    if (m_free_provider_isSet) {
        obj.insert(QString("free_provider"), ::OpenAPI::toJsonValue(m_free_provider));
    }
    return obj;
}

QString OAIVerifyEmailAddress_200_response::getEmail() const {
    return m_email;
}
void OAIVerifyEmailAddress_200_response::setEmail(const QString &email) {
    m_email = email;
    m_email_isSet = true;
}

bool OAIVerifyEmailAddress_200_response::is_email_Set() const{
    return m_email_isSet;
}

bool OAIVerifyEmailAddress_200_response::is_email_Valid() const{
    return m_email_isValid;
}

QString OAIVerifyEmailAddress_200_response::getDomain() const {
    return m_domain;
}
void OAIVerifyEmailAddress_200_response::setDomain(const QString &domain) {
    m_domain = domain;
    m_domain_isSet = true;
}

bool OAIVerifyEmailAddress_200_response::is_domain_Set() const{
    return m_domain_isSet;
}

bool OAIVerifyEmailAddress_200_response::is_domain_Valid() const{
    return m_domain_isValid;
}

QString OAIVerifyEmailAddress_200_response::getFirstName() const {
    return m_first_name;
}
void OAIVerifyEmailAddress_200_response::setFirstName(const QString &first_name) {
    m_first_name = first_name;
    m_first_name_isSet = true;
}

bool OAIVerifyEmailAddress_200_response::is_first_name_Set() const{
    return m_first_name_isSet;
}

bool OAIVerifyEmailAddress_200_response::is_first_name_Valid() const{
    return m_first_name_isValid;
}

QString OAIVerifyEmailAddress_200_response::getMiddleName() const {
    return m_middle_name;
}
void OAIVerifyEmailAddress_200_response::setMiddleName(const QString &middle_name) {
    m_middle_name = middle_name;
    m_middle_name_isSet = true;
}

bool OAIVerifyEmailAddress_200_response::is_middle_name_Set() const{
    return m_middle_name_isSet;
}

bool OAIVerifyEmailAddress_200_response::is_middle_name_Valid() const{
    return m_middle_name_isValid;
}

QString OAIVerifyEmailAddress_200_response::getLastName() const {
    return m_last_name;
}
void OAIVerifyEmailAddress_200_response::setLastName(const QString &last_name) {
    m_last_name = last_name;
    m_last_name_isSet = true;
}

bool OAIVerifyEmailAddress_200_response::is_last_name_Set() const{
    return m_last_name_isSet;
}

bool OAIVerifyEmailAddress_200_response::is_last_name_Valid() const{
    return m_last_name_isValid;
}

QString OAIVerifyEmailAddress_200_response::getFullName() const {
    return m_full_name;
}
void OAIVerifyEmailAddress_200_response::setFullName(const QString &full_name) {
    m_full_name = full_name;
    m_full_name_isSet = true;
}

bool OAIVerifyEmailAddress_200_response::is_full_name_Set() const{
    return m_full_name_isSet;
}

bool OAIVerifyEmailAddress_200_response::is_full_name_Valid() const{
    return m_full_name_isValid;
}

QString OAIVerifyEmailAddress_200_response::getUsername() const {
    return m_username;
}
void OAIVerifyEmailAddress_200_response::setUsername(const QString &username) {
    m_username = username;
    m_username_isSet = true;
}

bool OAIVerifyEmailAddress_200_response::is_username_Set() const{
    return m_username_isSet;
}

bool OAIVerifyEmailAddress_200_response::is_username_Valid() const{
    return m_username_isValid;
}

QString OAIVerifyEmailAddress_200_response::getImage() const {
    return m_image;
}
void OAIVerifyEmailAddress_200_response::setImage(const QString &image) {
    m_image = image;
    m_image_isSet = true;
}

bool OAIVerifyEmailAddress_200_response::is_image_Set() const{
    return m_image_isSet;
}

bool OAIVerifyEmailAddress_200_response::is_image_Valid() const{
    return m_image_isValid;
}

QString OAIVerifyEmailAddress_200_response::getResult() const {
    return m_result;
}
void OAIVerifyEmailAddress_200_response::setResult(const QString &result) {
    m_result = result;
    m_result_isSet = true;
}

bool OAIVerifyEmailAddress_200_response::is_result_Set() const{
    return m_result_isSet;
}

bool OAIVerifyEmailAddress_200_response::is_result_Valid() const{
    return m_result_isValid;
}

bool OAIVerifyEmailAddress_200_response::isDisposable() const {
    return m_disposable;
}
void OAIVerifyEmailAddress_200_response::setDisposable(const bool &disposable) {
    m_disposable = disposable;
    m_disposable_isSet = true;
}

bool OAIVerifyEmailAddress_200_response::is_disposable_Set() const{
    return m_disposable_isSet;
}

bool OAIVerifyEmailAddress_200_response::is_disposable_Valid() const{
    return m_disposable_isValid;
}

bool OAIVerifyEmailAddress_200_response::isAcceptAll() const {
    return m_accept_all;
}
void OAIVerifyEmailAddress_200_response::setAcceptAll(const bool &accept_all) {
    m_accept_all = accept_all;
    m_accept_all_isSet = true;
}

bool OAIVerifyEmailAddress_200_response::is_accept_all_Set() const{
    return m_accept_all_isSet;
}

bool OAIVerifyEmailAddress_200_response::is_accept_all_Valid() const{
    return m_accept_all_isValid;
}

bool OAIVerifyEmailAddress_200_response::isFreeProvider() const {
    return m_free_provider;
}
void OAIVerifyEmailAddress_200_response::setFreeProvider(const bool &free_provider) {
    m_free_provider = free_provider;
    m_free_provider_isSet = true;
}

bool OAIVerifyEmailAddress_200_response::is_free_provider_Set() const{
    return m_free_provider_isSet;
}

bool OAIVerifyEmailAddress_200_response::is_free_provider_Valid() const{
    return m_free_provider_isValid;
}

bool OAIVerifyEmailAddress_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_email_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_domain_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_first_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_middle_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_last_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_full_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_username_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_image_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_result_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_disposable_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_accept_all_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_free_provider_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIVerifyEmailAddress_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
