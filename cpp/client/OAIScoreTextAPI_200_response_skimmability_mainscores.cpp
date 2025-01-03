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

#include "OAIScoreTextAPI_200_response_skimmability_mainscores.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIScoreTextAPI_200_response_skimmability_mainscores::OAIScoreTextAPI_200_response_skimmability_mainscores(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIScoreTextAPI_200_response_skimmability_mainscores::OAIScoreTextAPI_200_response_skimmability_mainscores() {
    this->initializeModel();
}

OAIScoreTextAPI_200_response_skimmability_mainscores::~OAIScoreTextAPI_200_response_skimmability_mainscores() {}

void OAIScoreTextAPI_200_response_skimmability_mainscores::initializeModel() {

    m_total_possible_isSet = false;
    m_total_possible_isValid = false;

    m_total_isSet = false;
    m_total_isValid = false;
}

void OAIScoreTextAPI_200_response_skimmability_mainscores::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIScoreTextAPI_200_response_skimmability_mainscores::fromJsonObject(QJsonObject json) {

    m_total_possible_isValid = ::OpenAPI::fromJsonValue(m_total_possible, json[QString("total_possible")]);
    m_total_possible_isSet = !json[QString("total_possible")].isNull() && m_total_possible_isValid;

    m_total_isValid = ::OpenAPI::fromJsonValue(m_total, json[QString("total")]);
    m_total_isSet = !json[QString("total")].isNull() && m_total_isValid;
}

QString OAIScoreTextAPI_200_response_skimmability_mainscores::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIScoreTextAPI_200_response_skimmability_mainscores::asJsonObject() const {
    QJsonObject obj;
    if (m_total_possible_isSet) {
        obj.insert(QString("total_possible"), ::OpenAPI::toJsonValue(m_total_possible));
    }
    if (m_total_isSet) {
        obj.insert(QString("total"), ::OpenAPI::toJsonValue(m_total));
    }
    return obj;
}

qint32 OAIScoreTextAPI_200_response_skimmability_mainscores::getTotalPossible() const {
    return m_total_possible;
}
void OAIScoreTextAPI_200_response_skimmability_mainscores::setTotalPossible(const qint32 &total_possible) {
    m_total_possible = total_possible;
    m_total_possible_isSet = true;
}

bool OAIScoreTextAPI_200_response_skimmability_mainscores::is_total_possible_Set() const{
    return m_total_possible_isSet;
}

bool OAIScoreTextAPI_200_response_skimmability_mainscores::is_total_possible_Valid() const{
    return m_total_possible_isValid;
}

double OAIScoreTextAPI_200_response_skimmability_mainscores::getTotal() const {
    return m_total;
}
void OAIScoreTextAPI_200_response_skimmability_mainscores::setTotal(const double &total) {
    m_total = total;
    m_total_isSet = true;
}

bool OAIScoreTextAPI_200_response_skimmability_mainscores::is_total_Set() const{
    return m_total_isSet;
}

bool OAIScoreTextAPI_200_response_skimmability_mainscores::is_total_Valid() const{
    return m_total_isValid;
}

bool OAIScoreTextAPI_200_response_skimmability_mainscores::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_total_possible_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_total_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIScoreTextAPI_200_response_skimmability_mainscores::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
