/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAISearchGifs_200_response_images_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchGifs_200_response_images_inner::OAISearchGifs_200_response_images_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchGifs_200_response_images_inner::OAISearchGifs_200_response_images_inner() {
    this->initializeModel();
}

OAISearchGifs_200_response_images_inner::~OAISearchGifs_200_response_images_inner() {}

void OAISearchGifs_200_response_images_inner::initializeModel() {

    m_width_isSet = false;
    m_width_isValid = false;

    m_url_isSet = false;
    m_url_isValid = false;

    m_height_isSet = false;
    m_height_isValid = false;
}

void OAISearchGifs_200_response_images_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchGifs_200_response_images_inner::fromJsonObject(QJsonObject json) {

    m_width_isValid = ::OpenAPI::fromJsonValue(m_width, json[QString("width")]);
    m_width_isSet = !json[QString("width")].isNull() && m_width_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(m_url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;

    m_height_isValid = ::OpenAPI::fromJsonValue(m_height, json[QString("height")]);
    m_height_isSet = !json[QString("height")].isNull() && m_height_isValid;
}

QString OAISearchGifs_200_response_images_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchGifs_200_response_images_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_width_isSet) {
        obj.insert(QString("width"), ::OpenAPI::toJsonValue(m_width));
    }
    if (m_url_isSet) {
        obj.insert(QString("url"), ::OpenAPI::toJsonValue(m_url));
    }
    if (m_height_isSet) {
        obj.insert(QString("height"), ::OpenAPI::toJsonValue(m_height));
    }
    return obj;
}

qint32 OAISearchGifs_200_response_images_inner::getWidth() const {
    return m_width;
}
void OAISearchGifs_200_response_images_inner::setWidth(const qint32 &width) {
    m_width = width;
    m_width_isSet = true;
}

bool OAISearchGifs_200_response_images_inner::is_width_Set() const{
    return m_width_isSet;
}

bool OAISearchGifs_200_response_images_inner::is_width_Valid() const{
    return m_width_isValid;
}

QString OAISearchGifs_200_response_images_inner::getUrl() const {
    return m_url;
}
void OAISearchGifs_200_response_images_inner::setUrl(const QString &url) {
    m_url = url;
    m_url_isSet = true;
}

bool OAISearchGifs_200_response_images_inner::is_url_Set() const{
    return m_url_isSet;
}

bool OAISearchGifs_200_response_images_inner::is_url_Valid() const{
    return m_url_isValid;
}

qint32 OAISearchGifs_200_response_images_inner::getHeight() const {
    return m_height;
}
void OAISearchGifs_200_response_images_inner::setHeight(const qint32 &height) {
    m_height = height;
    m_height_isSet = true;
}

bool OAISearchGifs_200_response_images_inner::is_height_Set() const{
    return m_height_isSet;
}

bool OAISearchGifs_200_response_images_inner::is_height_Valid() const{
    return m_height_isValid;
}

bool OAISearchGifs_200_response_images_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_width_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_url_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_height_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchGifs_200_response_images_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
