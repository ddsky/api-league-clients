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

#include "OAIStemTextAPI_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIStemTextAPI_200_response::OAIStemTextAPI_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIStemTextAPI_200_response::OAIStemTextAPI_200_response() {
    this->initializeModel();
}

OAIStemTextAPI_200_response::~OAIStemTextAPI_200_response() {}

void OAIStemTextAPI_200_response::initializeModel() {

    m_original_isSet = false;
    m_original_isValid = false;

    m_stemmed_isSet = false;
    m_stemmed_isValid = false;
}

void OAIStemTextAPI_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIStemTextAPI_200_response::fromJsonObject(QJsonObject json) {

    m_original_isValid = ::OpenAPI::fromJsonValue(m_original, json[QString("original")]);
    m_original_isSet = !json[QString("original")].isNull() && m_original_isValid;

    m_stemmed_isValid = ::OpenAPI::fromJsonValue(m_stemmed, json[QString("stemmed")]);
    m_stemmed_isSet = !json[QString("stemmed")].isNull() && m_stemmed_isValid;
}

QString OAIStemTextAPI_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIStemTextAPI_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_original_isSet) {
        obj.insert(QString("original"), ::OpenAPI::toJsonValue(m_original));
    }
    if (m_stemmed_isSet) {
        obj.insert(QString("stemmed"), ::OpenAPI::toJsonValue(m_stemmed));
    }
    return obj;
}

QString OAIStemTextAPI_200_response::getOriginal() const {
    return m_original;
}
void OAIStemTextAPI_200_response::setOriginal(const QString &original) {
    m_original = original;
    m_original_isSet = true;
}

bool OAIStemTextAPI_200_response::is_original_Set() const{
    return m_original_isSet;
}

bool OAIStemTextAPI_200_response::is_original_Valid() const{
    return m_original_isValid;
}

QString OAIStemTextAPI_200_response::getStemmed() const {
    return m_stemmed;
}
void OAIStemTextAPI_200_response::setStemmed(const QString &stemmed) {
    m_stemmed = stemmed;
    m_stemmed_isSet = true;
}

bool OAIStemTextAPI_200_response::is_stemmed_Set() const{
    return m_stemmed_isSet;
}

bool OAIStemTextAPI_200_response::is_stemmed_Valid() const{
    return m_stemmed_isValid;
}

bool OAIStemTextAPI_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_original_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_stemmed_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIStemTextAPI_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
