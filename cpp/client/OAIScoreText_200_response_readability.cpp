/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIScoreText_200_response_readability.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIScoreText_200_response_readability::OAIScoreText_200_response_readability(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIScoreText_200_response_readability::OAIScoreText_200_response_readability() {
    this->initializeModel();
}

OAIScoreText_200_response_readability::~OAIScoreText_200_response_readability() {}

void OAIScoreText_200_response_readability::initializeModel() {

    m_mainscores_isSet = false;
    m_mainscores_isValid = false;

    m_subscores_isSet = false;
    m_subscores_isValid = false;
}

void OAIScoreText_200_response_readability::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIScoreText_200_response_readability::fromJsonObject(QJsonObject json) {

    m_mainscores_isValid = ::OpenAPI::fromJsonValue(m_mainscores, json[QString("mainscores")]);
    m_mainscores_isSet = !json[QString("mainscores")].isNull() && m_mainscores_isValid;

    m_subscores_isValid = ::OpenAPI::fromJsonValue(m_subscores, json[QString("subscores")]);
    m_subscores_isSet = !json[QString("subscores")].isNull() && m_subscores_isValid;
}

QString OAIScoreText_200_response_readability::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIScoreText_200_response_readability::asJsonObject() const {
    QJsonObject obj;
    if (m_mainscores.isSet()) {
        obj.insert(QString("mainscores"), ::OpenAPI::toJsonValue(m_mainscores));
    }
    if (m_subscores.isSet()) {
        obj.insert(QString("subscores"), ::OpenAPI::toJsonValue(m_subscores));
    }
    return obj;
}

OAIScoreText_200_response_readability_mainscores OAIScoreText_200_response_readability::getMainscores() const {
    return m_mainscores;
}
void OAIScoreText_200_response_readability::setMainscores(const OAIScoreText_200_response_readability_mainscores &mainscores) {
    m_mainscores = mainscores;
    m_mainscores_isSet = true;
}

bool OAIScoreText_200_response_readability::is_mainscores_Set() const{
    return m_mainscores_isSet;
}

bool OAIScoreText_200_response_readability::is_mainscores_Valid() const{
    return m_mainscores_isValid;
}

OAIScoreText_200_response_readability_subscores OAIScoreText_200_response_readability::getSubscores() const {
    return m_subscores;
}
void OAIScoreText_200_response_readability::setSubscores(const OAIScoreText_200_response_readability_subscores &subscores) {
    m_subscores = subscores;
    m_subscores_isSet = true;
}

bool OAIScoreText_200_response_readability::is_subscores_Set() const{
    return m_subscores_isSet;
}

bool OAIScoreText_200_response_readability::is_subscores_Valid() const{
    return m_subscores_isValid;
}

bool OAIScoreText_200_response_readability::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_mainscores.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_subscores.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIScoreText_200_response_readability::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
