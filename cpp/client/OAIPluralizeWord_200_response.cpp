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

#include "OAIPluralizeWord_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIPluralizeWord_200_response::OAIPluralizeWord_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIPluralizeWord_200_response::OAIPluralizeWord_200_response() {
    this->initializeModel();
}

OAIPluralizeWord_200_response::~OAIPluralizeWord_200_response() {}

void OAIPluralizeWord_200_response::initializeModel() {

    m_original_isSet = false;
    m_original_isValid = false;

    m_plural_isSet = false;
    m_plural_isValid = false;
}

void OAIPluralizeWord_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIPluralizeWord_200_response::fromJsonObject(QJsonObject json) {

    m_original_isValid = ::OpenAPI::fromJsonValue(m_original, json[QString("original")]);
    m_original_isSet = !json[QString("original")].isNull() && m_original_isValid;

    m_plural_isValid = ::OpenAPI::fromJsonValue(m_plural, json[QString("plural")]);
    m_plural_isSet = !json[QString("plural")].isNull() && m_plural_isValid;
}

QString OAIPluralizeWord_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIPluralizeWord_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_original_isSet) {
        obj.insert(QString("original"), ::OpenAPI::toJsonValue(m_original));
    }
    if (m_plural_isSet) {
        obj.insert(QString("plural"), ::OpenAPI::toJsonValue(m_plural));
    }
    return obj;
}

QString OAIPluralizeWord_200_response::getOriginal() const {
    return m_original;
}
void OAIPluralizeWord_200_response::setOriginal(const QString &original) {
    m_original = original;
    m_original_isSet = true;
}

bool OAIPluralizeWord_200_response::is_original_Set() const{
    return m_original_isSet;
}

bool OAIPluralizeWord_200_response::is_original_Valid() const{
    return m_original_isValid;
}

QString OAIPluralizeWord_200_response::getPlural() const {
    return m_plural;
}
void OAIPluralizeWord_200_response::setPlural(const QString &plural) {
    m_plural = plural;
    m_plural_isSet = true;
}

bool OAIPluralizeWord_200_response::is_plural_Set() const{
    return m_plural_isSet;
}

bool OAIPluralizeWord_200_response::is_plural_Valid() const{
    return m_plural_isValid;
}

bool OAIPluralizeWord_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_original_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_plural_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIPluralizeWord_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
