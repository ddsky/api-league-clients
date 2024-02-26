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

#include "OAIInline_response_200_19_skimmability.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIInline_response_200_19_skimmability::OAIInline_response_200_19_skimmability(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIInline_response_200_19_skimmability::OAIInline_response_200_19_skimmability() {
    this->initializeModel();
}

OAIInline_response_200_19_skimmability::~OAIInline_response_200_19_skimmability() {}

void OAIInline_response_200_19_skimmability::initializeModel() {

    m_mainscores_isSet = false;
    m_mainscores_isValid = false;

    m_subscores_isSet = false;
    m_subscores_isValid = false;
}

void OAIInline_response_200_19_skimmability::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIInline_response_200_19_skimmability::fromJsonObject(QJsonObject json) {

    m_mainscores_isValid = ::OpenAPI::fromJsonValue(mainscores, json[QString("mainscores")]);
    m_mainscores_isSet = !json[QString("mainscores")].isNull() && m_mainscores_isValid;

    m_subscores_isValid = ::OpenAPI::fromJsonValue(subscores, json[QString("subscores")]);
    m_subscores_isSet = !json[QString("subscores")].isNull() && m_subscores_isValid;
}

QString OAIInline_response_200_19_skimmability::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIInline_response_200_19_skimmability::asJsonObject() const {
    QJsonObject obj;
    if (mainscores.isSet()) {
        obj.insert(QString("mainscores"), ::OpenAPI::toJsonValue(mainscores));
    }
    if (subscores.isSet()) {
        obj.insert(QString("subscores"), ::OpenAPI::toJsonValue(subscores));
    }
    return obj;
}

OAIInline_response_200_19_skimmability_mainscores OAIInline_response_200_19_skimmability::getMainscores() const {
    return mainscores;
}
void OAIInline_response_200_19_skimmability::setMainscores(const OAIInline_response_200_19_skimmability_mainscores &mainscores) {
    this->mainscores = mainscores;
    this->m_mainscores_isSet = true;
}

bool OAIInline_response_200_19_skimmability::is_mainscores_Set() const{
    return m_mainscores_isSet;
}

bool OAIInline_response_200_19_skimmability::is_mainscores_Valid() const{
    return m_mainscores_isValid;
}

OAIInline_response_200_19_skimmability_subscores OAIInline_response_200_19_skimmability::getSubscores() const {
    return subscores;
}
void OAIInline_response_200_19_skimmability::setSubscores(const OAIInline_response_200_19_skimmability_subscores &subscores) {
    this->subscores = subscores;
    this->m_subscores_isSet = true;
}

bool OAIInline_response_200_19_skimmability::is_subscores_Set() const{
    return m_subscores_isSet;
}

bool OAIInline_response_200_19_skimmability::is_subscores_Valid() const{
    return m_subscores_isValid;
}

bool OAIInline_response_200_19_skimmability::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (mainscores.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (subscores.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIInline_response_200_19_skimmability::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
