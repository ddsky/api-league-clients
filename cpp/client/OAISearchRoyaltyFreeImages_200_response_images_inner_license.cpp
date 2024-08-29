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

#include "OAISearchRoyaltyFreeImages_200_response_images_inner_license.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchRoyaltyFreeImages_200_response_images_inner_license::OAISearchRoyaltyFreeImages_200_response_images_inner_license(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchRoyaltyFreeImages_200_response_images_inner_license::OAISearchRoyaltyFreeImages_200_response_images_inner_license() {
    this->initializeModel();
}

OAISearchRoyaltyFreeImages_200_response_images_inner_license::~OAISearchRoyaltyFreeImages_200_response_images_inner_license() {}

void OAISearchRoyaltyFreeImages_200_response_images_inner_license::initializeModel() {

    m_name_isSet = false;
    m_name_isValid = false;

    m_link_isSet = false;
    m_link_isValid = false;
}

void OAISearchRoyaltyFreeImages_200_response_images_inner_license::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchRoyaltyFreeImages_200_response_images_inner_license::fromJsonObject(QJsonObject json) {

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_link_isValid = ::OpenAPI::fromJsonValue(m_link, json[QString("link")]);
    m_link_isSet = !json[QString("link")].isNull() && m_link_isValid;
}

QString OAISearchRoyaltyFreeImages_200_response_images_inner_license::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchRoyaltyFreeImages_200_response_images_inner_license::asJsonObject() const {
    QJsonObject obj;
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    if (m_link_isSet) {
        obj.insert(QString("link"), ::OpenAPI::toJsonValue(m_link));
    }
    return obj;
}

QString OAISearchRoyaltyFreeImages_200_response_images_inner_license::getName() const {
    return m_name;
}
void OAISearchRoyaltyFreeImages_200_response_images_inner_license::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner_license::is_name_Set() const{
    return m_name_isSet;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner_license::is_name_Valid() const{
    return m_name_isValid;
}

QString OAISearchRoyaltyFreeImages_200_response_images_inner_license::getLink() const {
    return m_link;
}
void OAISearchRoyaltyFreeImages_200_response_images_inner_license::setLink(const QString &link) {
    m_link = link;
    m_link_isSet = true;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner_license::is_link_Set() const{
    return m_link_isSet;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner_license::is_link_Valid() const{
    return m_link_isValid;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner_license::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_link_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchRoyaltyFreeImages_200_response_images_inner_license::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
