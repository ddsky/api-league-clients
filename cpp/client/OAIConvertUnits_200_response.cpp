/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIConvertUnits_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIConvertUnits_200_response::OAIConvertUnits_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIConvertUnits_200_response::OAIConvertUnits_200_response() {
    this->initializeModel();
}

OAIConvertUnits_200_response::~OAIConvertUnits_200_response() {}

void OAIConvertUnits_200_response::initializeModel() {

    m_target_amount_isSet = false;
    m_target_amount_isValid = false;

    m_target_unit_isSet = false;
    m_target_unit_isValid = false;
}

void OAIConvertUnits_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIConvertUnits_200_response::fromJsonObject(QJsonObject json) {

    m_target_amount_isValid = ::OpenAPI::fromJsonValue(m_target_amount, json[QString("target_amount")]);
    m_target_amount_isSet = !json[QString("target_amount")].isNull() && m_target_amount_isValid;

    m_target_unit_isValid = ::OpenAPI::fromJsonValue(m_target_unit, json[QString("target_unit")]);
    m_target_unit_isSet = !json[QString("target_unit")].isNull() && m_target_unit_isValid;
}

QString OAIConvertUnits_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIConvertUnits_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_target_amount_isSet) {
        obj.insert(QString("target_amount"), ::OpenAPI::toJsonValue(m_target_amount));
    }
    if (m_target_unit_isSet) {
        obj.insert(QString("target_unit"), ::OpenAPI::toJsonValue(m_target_unit));
    }
    return obj;
}

double OAIConvertUnits_200_response::getTargetAmount() const {
    return m_target_amount;
}
void OAIConvertUnits_200_response::setTargetAmount(const double &target_amount) {
    m_target_amount = target_amount;
    m_target_amount_isSet = true;
}

bool OAIConvertUnits_200_response::is_target_amount_Set() const{
    return m_target_amount_isSet;
}

bool OAIConvertUnits_200_response::is_target_amount_Valid() const{
    return m_target_amount_isValid;
}

QString OAIConvertUnits_200_response::getTargetUnit() const {
    return m_target_unit;
}
void OAIConvertUnits_200_response::setTargetUnit(const QString &target_unit) {
    m_target_unit = target_unit;
    m_target_unit_isSet = true;
}

bool OAIConvertUnits_200_response::is_target_unit_Set() const{
    return m_target_unit_isSet;
}

bool OAIConvertUnits_200_response::is_target_unit_Valid() const{
    return m_target_unit_isValid;
}

bool OAIConvertUnits_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_target_amount_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_target_unit_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIConvertUnits_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
