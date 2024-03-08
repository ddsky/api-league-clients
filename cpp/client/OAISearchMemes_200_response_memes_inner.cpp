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

#include "OAISearchMemes_200_response_memes_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchMemes_200_response_memes_inner::OAISearchMemes_200_response_memes_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchMemes_200_response_memes_inner::OAISearchMemes_200_response_memes_inner() {
    this->initializeModel();
}

OAISearchMemes_200_response_memes_inner::~OAISearchMemes_200_response_memes_inner() {}

void OAISearchMemes_200_response_memes_inner::initializeModel() {

    m_type_isSet = false;
    m_type_isValid = false;

    m_description_isSet = false;
    m_description_isValid = false;

    m_url_isSet = false;
    m_url_isValid = false;
}

void OAISearchMemes_200_response_memes_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchMemes_200_response_memes_inner::fromJsonObject(QJsonObject json) {

    m_type_isValid = ::OpenAPI::fromJsonValue(m_type, json[QString("type")]);
    m_type_isSet = !json[QString("type")].isNull() && m_type_isValid;

    m_description_isValid = ::OpenAPI::fromJsonValue(m_description, json[QString("description")]);
    m_description_isSet = !json[QString("description")].isNull() && m_description_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(m_url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;
}

QString OAISearchMemes_200_response_memes_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchMemes_200_response_memes_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_type_isSet) {
        obj.insert(QString("type"), ::OpenAPI::toJsonValue(m_type));
    }
    if (m_description_isSet) {
        obj.insert(QString("description"), ::OpenAPI::toJsonValue(m_description));
    }
    if (m_url_isSet) {
        obj.insert(QString("url"), ::OpenAPI::toJsonValue(m_url));
    }
    return obj;
}

QString OAISearchMemes_200_response_memes_inner::getType() const {
    return m_type;
}
void OAISearchMemes_200_response_memes_inner::setType(const QString &type) {
    m_type = type;
    m_type_isSet = true;
}

bool OAISearchMemes_200_response_memes_inner::is_type_Set() const{
    return m_type_isSet;
}

bool OAISearchMemes_200_response_memes_inner::is_type_Valid() const{
    return m_type_isValid;
}

QString OAISearchMemes_200_response_memes_inner::getDescription() const {
    return m_description;
}
void OAISearchMemes_200_response_memes_inner::setDescription(const QString &description) {
    m_description = description;
    m_description_isSet = true;
}

bool OAISearchMemes_200_response_memes_inner::is_description_Set() const{
    return m_description_isSet;
}

bool OAISearchMemes_200_response_memes_inner::is_description_Valid() const{
    return m_description_isValid;
}

QString OAISearchMemes_200_response_memes_inner::getUrl() const {
    return m_url;
}
void OAISearchMemes_200_response_memes_inner::setUrl(const QString &url) {
    m_url = url;
    m_url_isSet = true;
}

bool OAISearchMemes_200_response_memes_inner::is_url_Set() const{
    return m_url_isSet;
}

bool OAISearchMemes_200_response_memes_inner::is_url_Valid() const{
    return m_url_isValid;
}

bool OAISearchMemes_200_response_memes_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_type_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_description_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_url_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchMemes_200_response_memes_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
