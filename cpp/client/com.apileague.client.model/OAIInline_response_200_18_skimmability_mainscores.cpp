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

#include "OAIInline_response_200_18_skimmability_mainscores.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIInline_response_200_18_skimmability_mainscores::OAIInline_response_200_18_skimmability_mainscores(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIInline_response_200_18_skimmability_mainscores::OAIInline_response_200_18_skimmability_mainscores() {
    this->initializeModel();
}

OAIInline_response_200_18_skimmability_mainscores::~OAIInline_response_200_18_skimmability_mainscores() {}

void OAIInline_response_200_18_skimmability_mainscores::initializeModel() {

    m_total_possible_isSet = false;
    m_total_possible_isValid = false;

    m_total_isSet = false;
    m_total_isValid = false;
}

void OAIInline_response_200_18_skimmability_mainscores::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIInline_response_200_18_skimmability_mainscores::fromJsonObject(QJsonObject json) {

    m_total_possible_isValid = ::OpenAPI::fromJsonValue(total_possible, json[QString("total_possible")]);
    m_total_possible_isSet = !json[QString("total_possible")].isNull() && m_total_possible_isValid;

    m_total_isValid = ::OpenAPI::fromJsonValue(total, json[QString("total")]);
    m_total_isSet = !json[QString("total")].isNull() && m_total_isValid;
}

QString OAIInline_response_200_18_skimmability_mainscores::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIInline_response_200_18_skimmability_mainscores::asJsonObject() const {
    QJsonObject obj;
    if (m_total_possible_isSet) {
        obj.insert(QString("total_possible"), ::OpenAPI::toJsonValue(total_possible));
    }
    if (m_total_isSet) {
        obj.insert(QString("total"), ::OpenAPI::toJsonValue(total));
    }
    return obj;
}

qint32 OAIInline_response_200_18_skimmability_mainscores::getTotalPossible() const {
    return total_possible;
}
void OAIInline_response_200_18_skimmability_mainscores::setTotalPossible(const qint32 &total_possible) {
    this->total_possible = total_possible;
    this->m_total_possible_isSet = true;
}

bool OAIInline_response_200_18_skimmability_mainscores::is_total_possible_Set() const{
    return m_total_possible_isSet;
}

bool OAIInline_response_200_18_skimmability_mainscores::is_total_possible_Valid() const{
    return m_total_possible_isValid;
}

double OAIInline_response_200_18_skimmability_mainscores::getTotal() const {
    return total;
}
void OAIInline_response_200_18_skimmability_mainscores::setTotal(const double &total) {
    this->total = total;
    this->m_total_isSet = true;
}

bool OAIInline_response_200_18_skimmability_mainscores::is_total_Set() const{
    return m_total_isSet;
}

bool OAIInline_response_200_18_skimmability_mainscores::is_total_Valid() const{
    return m_total_isValid;
}

bool OAIInline_response_200_18_skimmability_mainscores::isSet() const {
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

bool OAIInline_response_200_18_skimmability_mainscores::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
