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

#include "OAIRandomTrivia_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRandomTrivia_200_response::OAIRandomTrivia_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRandomTrivia_200_response::OAIRandomTrivia_200_response() {
    this->initializeModel();
}

OAIRandomTrivia_200_response::~OAIRandomTrivia_200_response() {}

void OAIRandomTrivia_200_response::initializeModel() {

    m_trivia_isSet = false;
    m_trivia_isValid = false;
}

void OAIRandomTrivia_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRandomTrivia_200_response::fromJsonObject(QJsonObject json) {

    m_trivia_isValid = ::OpenAPI::fromJsonValue(m_trivia, json[QString("trivia")]);
    m_trivia_isSet = !json[QString("trivia")].isNull() && m_trivia_isValid;
}

QString OAIRandomTrivia_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRandomTrivia_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_trivia_isSet) {
        obj.insert(QString("trivia"), ::OpenAPI::toJsonValue(m_trivia));
    }
    return obj;
}

QString OAIRandomTrivia_200_response::getTrivia() const {
    return m_trivia;
}
void OAIRandomTrivia_200_response::setTrivia(const QString &trivia) {
    m_trivia = trivia;
    m_trivia_isSet = true;
}

bool OAIRandomTrivia_200_response::is_trivia_Set() const{
    return m_trivia_isSet;
}

bool OAIRandomTrivia_200_response::is_trivia_Valid() const{
    return m_trivia_isValid;
}

bool OAIRandomTrivia_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_trivia_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRandomTrivia_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
