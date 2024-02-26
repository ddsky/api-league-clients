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

#include "OAIInline_response_200_17.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIInline_response_200_17::OAIInline_response_200_17(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIInline_response_200_17::OAIInline_response_200_17() {
    this->initializeModel();
}

OAIInline_response_200_17::~OAIInline_response_200_17() {}

void OAIInline_response_200_17::initializeModel() {

    m_language_isSet = false;
    m_language_isValid = false;

    m_confidence_isSet = false;
    m_confidence_isValid = false;
}

void OAIInline_response_200_17::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIInline_response_200_17::fromJsonObject(QJsonObject json) {

    m_language_isValid = ::OpenAPI::fromJsonValue(language, json[QString("language")]);
    m_language_isSet = !json[QString("language")].isNull() && m_language_isValid;

    m_confidence_isValid = ::OpenAPI::fromJsonValue(confidence, json[QString("confidence")]);
    m_confidence_isSet = !json[QString("confidence")].isNull() && m_confidence_isValid;
}

QString OAIInline_response_200_17::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIInline_response_200_17::asJsonObject() const {
    QJsonObject obj;
    if (m_language_isSet) {
        obj.insert(QString("language"), ::OpenAPI::toJsonValue(language));
    }
    if (m_confidence_isSet) {
        obj.insert(QString("confidence"), ::OpenAPI::toJsonValue(confidence));
    }
    return obj;
}

QString OAIInline_response_200_17::getLanguage() const {
    return language;
}
void OAIInline_response_200_17::setLanguage(const QString &language) {
    this->language = language;
    this->m_language_isSet = true;
}

bool OAIInline_response_200_17::is_language_Set() const{
    return m_language_isSet;
}

bool OAIInline_response_200_17::is_language_Valid() const{
    return m_language_isValid;
}

double OAIInline_response_200_17::getConfidence() const {
    return confidence;
}
void OAIInline_response_200_17::setConfidence(const double &confidence) {
    this->confidence = confidence;
    this->m_confidence_isSet = true;
}

bool OAIInline_response_200_17::is_confidence_Set() const{
    return m_confidence_isSet;
}

bool OAIInline_response_200_17::is_confidence_Valid() const{
    return m_confidence_isValid;
}

bool OAIInline_response_200_17::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_language_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_confidence_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIInline_response_200_17::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
