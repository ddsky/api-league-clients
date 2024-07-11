/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAISearchJokes_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchJokes_200_response::OAISearchJokes_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchJokes_200_response::OAISearchJokes_200_response() {
    this->initializeModel();
}

OAISearchJokes_200_response::~OAISearchJokes_200_response() {}

void OAISearchJokes_200_response::initializeModel() {

    m_jokes_isSet = false;
    m_jokes_isValid = false;

    m_available_isSet = false;
    m_available_isValid = false;
}

void OAISearchJokes_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchJokes_200_response::fromJsonObject(QJsonObject json) {

    m_jokes_isValid = ::OpenAPI::fromJsonValue(m_jokes, json[QString("jokes")]);
    m_jokes_isSet = !json[QString("jokes")].isNull() && m_jokes_isValid;

    m_available_isValid = ::OpenAPI::fromJsonValue(m_available, json[QString("available")]);
    m_available_isSet = !json[QString("available")].isNull() && m_available_isValid;
}

QString OAISearchJokes_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchJokes_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_jokes.size() > 0) {
        obj.insert(QString("jokes"), ::OpenAPI::toJsonValue(m_jokes));
    }
    if (m_available_isSet) {
        obj.insert(QString("available"), ::OpenAPI::toJsonValue(m_available));
    }
    return obj;
}

QList<OAISearchJokes_200_response_jokes_inner> OAISearchJokes_200_response::getJokes() const {
    return m_jokes;
}
void OAISearchJokes_200_response::setJokes(const QList<OAISearchJokes_200_response_jokes_inner> &jokes) {
    m_jokes = jokes;
    m_jokes_isSet = true;
}

bool OAISearchJokes_200_response::is_jokes_Set() const{
    return m_jokes_isSet;
}

bool OAISearchJokes_200_response::is_jokes_Valid() const{
    return m_jokes_isValid;
}

qint32 OAISearchJokes_200_response::getAvailable() const {
    return m_available;
}
void OAISearchJokes_200_response::setAvailable(const qint32 &available) {
    m_available = available;
    m_available_isSet = true;
}

bool OAISearchJokes_200_response::is_available_Set() const{
    return m_available_isSet;
}

bool OAISearchJokes_200_response::is_available_Valid() const{
    return m_available_isValid;
}

bool OAISearchJokes_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_jokes.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_available_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchJokes_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
