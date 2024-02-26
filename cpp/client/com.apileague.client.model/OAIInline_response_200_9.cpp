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

#include "OAIInline_response_200_9.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIInline_response_200_9::OAIInline_response_200_9(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIInline_response_200_9::OAIInline_response_200_9() {
    this->initializeModel();
}

OAIInline_response_200_9::~OAIInline_response_200_9() {}

void OAIInline_response_200_9::initializeModel() {

    m_trivia_isSet = false;
    m_trivia_isValid = false;
}

void OAIInline_response_200_9::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIInline_response_200_9::fromJsonObject(QJsonObject json) {

    m_trivia_isValid = ::OpenAPI::fromJsonValue(trivia, json[QString("trivia")]);
    m_trivia_isSet = !json[QString("trivia")].isNull() && m_trivia_isValid;
}

QString OAIInline_response_200_9::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIInline_response_200_9::asJsonObject() const {
    QJsonObject obj;
    if (m_trivia_isSet) {
        obj.insert(QString("trivia"), ::OpenAPI::toJsonValue(trivia));
    }
    return obj;
}

QString OAIInline_response_200_9::getTrivia() const {
    return trivia;
}
void OAIInline_response_200_9::setTrivia(const QString &trivia) {
    this->trivia = trivia;
    this->m_trivia_isSet = true;
}

bool OAIInline_response_200_9::is_trivia_Set() const{
    return m_trivia_isSet;
}

bool OAIInline_response_200_9::is_trivia_Valid() const{
    return m_trivia_isValid;
}

bool OAIInline_response_200_9::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_trivia_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIInline_response_200_9::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
