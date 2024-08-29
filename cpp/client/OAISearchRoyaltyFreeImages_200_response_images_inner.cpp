/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAISearchRoyaltyFreeImages_200_response_images_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchRoyaltyFreeImages_200_response_images_inner::OAISearchRoyaltyFreeImages_200_response_images_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchRoyaltyFreeImages_200_response_images_inner::OAISearchRoyaltyFreeImages_200_response_images_inner() {
    this->initializeModel();
}

OAISearchRoyaltyFreeImages_200_response_images_inner::~OAISearchRoyaltyFreeImages_200_response_images_inner() {}

void OAISearchRoyaltyFreeImages_200_response_images_inner::initializeModel() {

    m_width_isSet = false;
    m_width_isValid = false;

    m_license_isSet = false;
    m_license_isValid = false;

    m_thumbnail_isSet = false;
    m_thumbnail_isValid = false;

    m_id_isSet = false;
    m_id_isValid = false;

    m_url_isSet = false;
    m_url_isValid = false;

    m_height_isSet = false;
    m_height_isValid = false;
}

void OAISearchRoyaltyFreeImages_200_response_images_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchRoyaltyFreeImages_200_response_images_inner::fromJsonObject(QJsonObject json) {

    m_width_isValid = ::OpenAPI::fromJsonValue(m_width, json[QString("width")]);
    m_width_isSet = !json[QString("width")].isNull() && m_width_isValid;

    m_license_isValid = ::OpenAPI::fromJsonValue(m_license, json[QString("license")]);
    m_license_isSet = !json[QString("license")].isNull() && m_license_isValid;

    m_thumbnail_isValid = ::OpenAPI::fromJsonValue(m_thumbnail, json[QString("thumbnail")]);
    m_thumbnail_isSet = !json[QString("thumbnail")].isNull() && m_thumbnail_isValid;

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(m_url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;

    m_height_isValid = ::OpenAPI::fromJsonValue(m_height, json[QString("height")]);
    m_height_isSet = !json[QString("height")].isNull() && m_height_isValid;
}

QString OAISearchRoyaltyFreeImages_200_response_images_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchRoyaltyFreeImages_200_response_images_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_width_isSet) {
        obj.insert(QString("width"), ::OpenAPI::toJsonValue(m_width));
    }
    if (m_license.isSet()) {
        obj.insert(QString("license"), ::OpenAPI::toJsonValue(m_license));
    }
    if (m_thumbnail_isSet) {
        obj.insert(QString("thumbnail"), ::OpenAPI::toJsonValue(m_thumbnail));
    }
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    if (m_url_isSet) {
        obj.insert(QString("url"), ::OpenAPI::toJsonValue(m_url));
    }
    if (m_height_isSet) {
        obj.insert(QString("height"), ::OpenAPI::toJsonValue(m_height));
    }
    return obj;
}

qint32 OAISearchRoyaltyFreeImages_200_response_images_inner::getWidth() const {
    return m_width;
}
void OAISearchRoyaltyFreeImages_200_response_images_inner::setWidth(const qint32 &width) {
    m_width = width;
    m_width_isSet = true;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner::is_width_Set() const{
    return m_width_isSet;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner::is_width_Valid() const{
    return m_width_isValid;
}

OAISearchRoyaltyFreeImages_200_response_images_inner_license OAISearchRoyaltyFreeImages_200_response_images_inner::getLicense() const {
    return m_license;
}
void OAISearchRoyaltyFreeImages_200_response_images_inner::setLicense(const OAISearchRoyaltyFreeImages_200_response_images_inner_license &license) {
    m_license = license;
    m_license_isSet = true;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner::is_license_Set() const{
    return m_license_isSet;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner::is_license_Valid() const{
    return m_license_isValid;
}

QString OAISearchRoyaltyFreeImages_200_response_images_inner::getThumbnail() const {
    return m_thumbnail;
}
void OAISearchRoyaltyFreeImages_200_response_images_inner::setThumbnail(const QString &thumbnail) {
    m_thumbnail = thumbnail;
    m_thumbnail_isSet = true;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner::is_thumbnail_Set() const{
    return m_thumbnail_isSet;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner::is_thumbnail_Valid() const{
    return m_thumbnail_isValid;
}

QString OAISearchRoyaltyFreeImages_200_response_images_inner::getId() const {
    return m_id;
}
void OAISearchRoyaltyFreeImages_200_response_images_inner::setId(const QString &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner::is_id_Set() const{
    return m_id_isSet;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner::is_id_Valid() const{
    return m_id_isValid;
}

QString OAISearchRoyaltyFreeImages_200_response_images_inner::getUrl() const {
    return m_url;
}
void OAISearchRoyaltyFreeImages_200_response_images_inner::setUrl(const QString &url) {
    m_url = url;
    m_url_isSet = true;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner::is_url_Set() const{
    return m_url_isSet;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner::is_url_Valid() const{
    return m_url_isValid;
}

qint32 OAISearchRoyaltyFreeImages_200_response_images_inner::getHeight() const {
    return m_height;
}
void OAISearchRoyaltyFreeImages_200_response_images_inner::setHeight(const qint32 &height) {
    m_height = height;
    m_height_isSet = true;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner::is_height_Set() const{
    return m_height_isSet;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner::is_height_Valid() const{
    return m_height_isValid;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_width_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_license.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_thumbnail_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_id_isSet) {
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

bool OAISearchRoyaltyFreeImages_200_response_images_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
