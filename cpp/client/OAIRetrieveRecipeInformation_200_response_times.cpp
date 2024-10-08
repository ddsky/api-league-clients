/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIRetrieveRecipeInformation_200_response_times.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRetrieveRecipeInformation_200_response_times::OAIRetrieveRecipeInformation_200_response_times(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRetrieveRecipeInformation_200_response_times::OAIRetrieveRecipeInformation_200_response_times() {
    this->initializeModel();
}

OAIRetrieveRecipeInformation_200_response_times::~OAIRetrieveRecipeInformation_200_response_times() {}

void OAIRetrieveRecipeInformation_200_response_times::initializeModel() {

    m_total_minutes_isSet = false;
    m_total_minutes_isValid = false;
}

void OAIRetrieveRecipeInformation_200_response_times::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRetrieveRecipeInformation_200_response_times::fromJsonObject(QJsonObject json) {

    m_total_minutes_isValid = ::OpenAPI::fromJsonValue(m_total_minutes, json[QString("total_minutes")]);
    m_total_minutes_isSet = !json[QString("total_minutes")].isNull() && m_total_minutes_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_times::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRetrieveRecipeInformation_200_response_times::asJsonObject() const {
    QJsonObject obj;
    if (m_total_minutes_isSet) {
        obj.insert(QString("total_minutes"), ::OpenAPI::toJsonValue(m_total_minutes));
    }
    return obj;
}

qint32 OAIRetrieveRecipeInformation_200_response_times::getTotalMinutes() const {
    return m_total_minutes;
}
void OAIRetrieveRecipeInformation_200_response_times::setTotalMinutes(const qint32 &total_minutes) {
    m_total_minutes = total_minutes;
    m_total_minutes_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_times::is_total_minutes_Set() const{
    return m_total_minutes_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_times::is_total_minutes_Valid() const{
    return m_total_minutes_isValid;
}

bool OAIRetrieveRecipeInformation_200_response_times::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_total_minutes_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRetrieveRecipeInformation_200_response_times::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
