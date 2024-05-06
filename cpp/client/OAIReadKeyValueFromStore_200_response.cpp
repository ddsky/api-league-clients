/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIReadKeyValueFromStore_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIReadKeyValueFromStore_200_response::OAIReadKeyValueFromStore_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIReadKeyValueFromStore_200_response::OAIReadKeyValueFromStore_200_response() {
    this->initializeModel();
}

OAIReadKeyValueFromStore_200_response::~OAIReadKeyValueFromStore_200_response() {}

void OAIReadKeyValueFromStore_200_response::initializeModel() {

    m_value_isSet = false;
    m_value_isValid = false;
}

void OAIReadKeyValueFromStore_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIReadKeyValueFromStore_200_response::fromJsonObject(QJsonObject json) {

    m_value_isValid = ::OpenAPI::fromJsonValue(m_value, json[QString("value")]);
    m_value_isSet = !json[QString("value")].isNull() && m_value_isValid;
}

QString OAIReadKeyValueFromStore_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIReadKeyValueFromStore_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_value_isSet) {
        obj.insert(QString("value"), ::OpenAPI::toJsonValue(m_value));
    }
    return obj;
}

QString OAIReadKeyValueFromStore_200_response::getValue() const {
    return m_value;
}
void OAIReadKeyValueFromStore_200_response::setValue(const QString &value) {
    m_value = value;
    m_value_isSet = true;
}

bool OAIReadKeyValueFromStore_200_response::is_value_Set() const{
    return m_value_isSet;
}

bool OAIReadKeyValueFromStore_200_response::is_value_Valid() const{
    return m_value_isValid;
}

bool OAIReadKeyValueFromStore_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_value_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIReadKeyValueFromStore_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
