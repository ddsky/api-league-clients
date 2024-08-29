/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAISearchIcons_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchIcons_200_response::OAISearchIcons_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchIcons_200_response::OAISearchIcons_200_response() {
    this->initializeModel();
}

OAISearchIcons_200_response::~OAISearchIcons_200_response() {}

void OAISearchIcons_200_response::initializeModel() {

    m_icons_isSet = false;
    m_icons_isValid = false;
}

void OAISearchIcons_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchIcons_200_response::fromJsonObject(QJsonObject json) {

    m_icons_isValid = ::OpenAPI::fromJsonValue(m_icons, json[QString("icons")]);
    m_icons_isSet = !json[QString("icons")].isNull() && m_icons_isValid;
}

QString OAISearchIcons_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchIcons_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_icons.size() > 0) {
        obj.insert(QString("icons"), ::OpenAPI::toJsonValue(m_icons));
    }
    return obj;
}

QList<OAISearchRoyaltyFreeImages_200_response_images_inner> OAISearchIcons_200_response::getIcons() const {
    return m_icons;
}
void OAISearchIcons_200_response::setIcons(const QList<OAISearchRoyaltyFreeImages_200_response_images_inner> &icons) {
    m_icons = icons;
    m_icons_isSet = true;
}

bool OAISearchIcons_200_response::is_icons_Set() const{
    return m_icons_isSet;
}

bool OAISearchIcons_200_response::is_icons_Valid() const{
    return m_icons_isValid;
}

bool OAISearchIcons_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_icons.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchIcons_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
