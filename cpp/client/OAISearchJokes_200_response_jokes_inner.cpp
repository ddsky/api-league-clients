/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAISearchJokes_200_response_jokes_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchJokes_200_response_jokes_inner::OAISearchJokes_200_response_jokes_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchJokes_200_response_jokes_inner::OAISearchJokes_200_response_jokes_inner() {
    this->initializeModel();
}

OAISearchJokes_200_response_jokes_inner::~OAISearchJokes_200_response_jokes_inner() {}

void OAISearchJokes_200_response_jokes_inner::initializeModel() {

    m_joke_isSet = false;
    m_joke_isValid = false;
}

void OAISearchJokes_200_response_jokes_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchJokes_200_response_jokes_inner::fromJsonObject(QJsonObject json) {

    m_joke_isValid = ::OpenAPI::fromJsonValue(m_joke, json[QString("joke")]);
    m_joke_isSet = !json[QString("joke")].isNull() && m_joke_isValid;
}

QString OAISearchJokes_200_response_jokes_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchJokes_200_response_jokes_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_joke_isSet) {
        obj.insert(QString("joke"), ::OpenAPI::toJsonValue(m_joke));
    }
    return obj;
}

QString OAISearchJokes_200_response_jokes_inner::getJoke() const {
    return m_joke;
}
void OAISearchJokes_200_response_jokes_inner::setJoke(const QString &joke) {
    m_joke = joke;
    m_joke_isSet = true;
}

bool OAISearchJokes_200_response_jokes_inner::is_joke_Set() const{
    return m_joke_isSet;
}

bool OAISearchJokes_200_response_jokes_inner::is_joke_Valid() const{
    return m_joke_isValid;
}

bool OAISearchJokes_200_response_jokes_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_joke_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchJokes_200_response_jokes_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
