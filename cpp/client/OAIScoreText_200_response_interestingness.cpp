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

#include "OAIScoreText_200_response_interestingness.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIScoreText_200_response_interestingness::OAIScoreText_200_response_interestingness(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIScoreText_200_response_interestingness::OAIScoreText_200_response_interestingness() {
    this->initializeModel();
}

OAIScoreText_200_response_interestingness::~OAIScoreText_200_response_interestingness() {}

void OAIScoreText_200_response_interestingness::initializeModel() {

    m_mainscores_isSet = false;
    m_mainscores_isValid = false;

    m_subscores_isSet = false;
    m_subscores_isValid = false;
}

void OAIScoreText_200_response_interestingness::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIScoreText_200_response_interestingness::fromJsonObject(QJsonObject json) {

    m_mainscores_isValid = ::OpenAPI::fromJsonValue(m_mainscores, json[QString("mainscores")]);
    m_mainscores_isSet = !json[QString("mainscores")].isNull() && m_mainscores_isValid;

    m_subscores_isValid = ::OpenAPI::fromJsonValue(m_subscores, json[QString("subscores")]);
    m_subscores_isSet = !json[QString("subscores")].isNull() && m_subscores_isValid;
}

QString OAIScoreText_200_response_interestingness::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIScoreText_200_response_interestingness::asJsonObject() const {
    QJsonObject obj;
    if (m_mainscores.isSet()) {
        obj.insert(QString("mainscores"), ::OpenAPI::toJsonValue(m_mainscores));
    }
    if (m_subscores.isSet()) {
        obj.insert(QString("subscores"), ::OpenAPI::toJsonValue(m_subscores));
    }
    return obj;
}

OAIScoreText_200_response_skimmability_mainscores OAIScoreText_200_response_interestingness::getMainscores() const {
    return m_mainscores;
}
void OAIScoreText_200_response_interestingness::setMainscores(const OAIScoreText_200_response_skimmability_mainscores &mainscores) {
    m_mainscores = mainscores;
    m_mainscores_isSet = true;
}

bool OAIScoreText_200_response_interestingness::is_mainscores_Set() const{
    return m_mainscores_isSet;
}

bool OAIScoreText_200_response_interestingness::is_mainscores_Valid() const{
    return m_mainscores_isValid;
}

OAIScoreText_200_response_interestingness_subscores OAIScoreText_200_response_interestingness::getSubscores() const {
    return m_subscores;
}
void OAIScoreText_200_response_interestingness::setSubscores(const OAIScoreText_200_response_interestingness_subscores &subscores) {
    m_subscores = subscores;
    m_subscores_isSet = true;
}

bool OAIScoreText_200_response_interestingness::is_subscores_Set() const{
    return m_subscores_isSet;
}

bool OAIScoreText_200_response_interestingness::is_subscores_Valid() const{
    return m_subscores_isValid;
}

bool OAIScoreText_200_response_interestingness::isSet() const {
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

bool OAIScoreText_200_response_interestingness::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
