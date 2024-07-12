/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIDetectGenderByName_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIDetectGenderByName_200_response::OAIDetectGenderByName_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIDetectGenderByName_200_response::OAIDetectGenderByName_200_response() {
    this->initializeModel();
}

OAIDetectGenderByName_200_response::~OAIDetectGenderByName_200_response() {}

void OAIDetectGenderByName_200_response::initializeModel() {

    m_name_isSet = false;
    m_name_isValid = false;

    m_probability_male_isSet = false;
    m_probability_male_isValid = false;
}

void OAIDetectGenderByName_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIDetectGenderByName_200_response::fromJsonObject(QJsonObject json) {

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_probability_male_isValid = ::OpenAPI::fromJsonValue(m_probability_male, json[QString("probability_male")]);
    m_probability_male_isSet = !json[QString("probability_male")].isNull() && m_probability_male_isValid;
}

QString OAIDetectGenderByName_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIDetectGenderByName_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    if (m_probability_male_isSet) {
        obj.insert(QString("probability_male"), ::OpenAPI::toJsonValue(m_probability_male));
    }
    return obj;
}

QString OAIDetectGenderByName_200_response::getName() const {
    return m_name;
}
void OAIDetectGenderByName_200_response::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAIDetectGenderByName_200_response::is_name_Set() const{
    return m_name_isSet;
}

bool OAIDetectGenderByName_200_response::is_name_Valid() const{
    return m_name_isValid;
}

double OAIDetectGenderByName_200_response::getProbabilityMale() const {
    return m_probability_male;
}
void OAIDetectGenderByName_200_response::setProbabilityMale(const double &probability_male) {
    m_probability_male = probability_male;
    m_probability_male_isSet = true;
}

bool OAIDetectGenderByName_200_response::is_probability_male_Set() const{
    return m_probability_male_isSet;
}

bool OAIDetectGenderByName_200_response::is_probability_male_Valid() const{
    return m_probability_male_isValid;
}

bool OAIDetectGenderByName_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_probability_male_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIDetectGenderByName_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
