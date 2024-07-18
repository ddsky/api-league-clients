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

#include "OAIRetrieveRecipeInformation_200_response_credits.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRetrieveRecipeInformation_200_response_credits::OAIRetrieveRecipeInformation_200_response_credits(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRetrieveRecipeInformation_200_response_credits::OAIRetrieveRecipeInformation_200_response_credits() {
    this->initializeModel();
}

OAIRetrieveRecipeInformation_200_response_credits::~OAIRetrieveRecipeInformation_200_response_credits() {}

void OAIRetrieveRecipeInformation_200_response_credits::initializeModel() {

    m_license_isSet = false;
    m_license_isValid = false;

    m_text_isSet = false;
    m_text_isValid = false;

    m_source_name_isSet = false;
    m_source_name_isValid = false;

    m_source_url_isSet = false;
    m_source_url_isValid = false;
}

void OAIRetrieveRecipeInformation_200_response_credits::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRetrieveRecipeInformation_200_response_credits::fromJsonObject(QJsonObject json) {

    m_license_isValid = ::OpenAPI::fromJsonValue(m_license, json[QString("license")]);
    m_license_isSet = !json[QString("license")].isNull() && m_license_isValid;

    m_text_isValid = ::OpenAPI::fromJsonValue(m_text, json[QString("text")]);
    m_text_isSet = !json[QString("text")].isNull() && m_text_isValid;

    m_source_name_isValid = ::OpenAPI::fromJsonValue(m_source_name, json[QString("source_name")]);
    m_source_name_isSet = !json[QString("source_name")].isNull() && m_source_name_isValid;

    m_source_url_isValid = ::OpenAPI::fromJsonValue(m_source_url, json[QString("source_url")]);
    m_source_url_isSet = !json[QString("source_url")].isNull() && m_source_url_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_credits::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRetrieveRecipeInformation_200_response_credits::asJsonObject() const {
    QJsonObject obj;
    if (m_license_isSet) {
        obj.insert(QString("license"), ::OpenAPI::toJsonValue(m_license));
    }
    if (m_text_isSet) {
        obj.insert(QString("text"), ::OpenAPI::toJsonValue(m_text));
    }
    if (m_source_name_isSet) {
        obj.insert(QString("source_name"), ::OpenAPI::toJsonValue(m_source_name));
    }
    if (m_source_url_isSet) {
        obj.insert(QString("source_url"), ::OpenAPI::toJsonValue(m_source_url));
    }
    return obj;
}

QString OAIRetrieveRecipeInformation_200_response_credits::getLicense() const {
    return m_license;
}
void OAIRetrieveRecipeInformation_200_response_credits::setLicense(const QString &license) {
    m_license = license;
    m_license_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_credits::is_license_Set() const{
    return m_license_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_credits::is_license_Valid() const{
    return m_license_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_credits::getText() const {
    return m_text;
}
void OAIRetrieveRecipeInformation_200_response_credits::setText(const QString &text) {
    m_text = text;
    m_text_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_credits::is_text_Set() const{
    return m_text_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_credits::is_text_Valid() const{
    return m_text_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_credits::getSourceName() const {
    return m_source_name;
}
void OAIRetrieveRecipeInformation_200_response_credits::setSourceName(const QString &source_name) {
    m_source_name = source_name;
    m_source_name_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_credits::is_source_name_Set() const{
    return m_source_name_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_credits::is_source_name_Valid() const{
    return m_source_name_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_credits::getSourceUrl() const {
    return m_source_url;
}
void OAIRetrieveRecipeInformation_200_response_credits::setSourceUrl(const QString &source_url) {
    m_source_url = source_url;
    m_source_url_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_credits::is_source_url_Set() const{
    return m_source_url_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_credits::is_source_url_Valid() const{
    return m_source_url_isValid;
}

bool OAIRetrieveRecipeInformation_200_response_credits::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_license_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_text_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_source_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_source_url_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRetrieveRecipeInformation_200_response_credits::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
