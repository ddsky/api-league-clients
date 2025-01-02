/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAISearchGifsAPI_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchGifsAPI_200_response::OAISearchGifsAPI_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchGifsAPI_200_response::OAISearchGifsAPI_200_response() {
    this->initializeModel();
}

OAISearchGifsAPI_200_response::~OAISearchGifsAPI_200_response() {}

void OAISearchGifsAPI_200_response::initializeModel() {

    m_images_isSet = false;
    m_images_isValid = false;
}

void OAISearchGifsAPI_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchGifsAPI_200_response::fromJsonObject(QJsonObject json) {

    m_images_isValid = ::OpenAPI::fromJsonValue(m_images, json[QString("images")]);
    m_images_isSet = !json[QString("images")].isNull() && m_images_isValid;
}

QString OAISearchGifsAPI_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchGifsAPI_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_images.size() > 0) {
        obj.insert(QString("images"), ::OpenAPI::toJsonValue(m_images));
    }
    return obj;
}

QList<OAISearchGifsAPI_200_response_images_inner> OAISearchGifsAPI_200_response::getImages() const {
    return m_images;
}
void OAISearchGifsAPI_200_response::setImages(const QList<OAISearchGifsAPI_200_response_images_inner> &images) {
    m_images = images;
    m_images_isSet = true;
}

bool OAISearchGifsAPI_200_response::is_images_Set() const{
    return m_images_isSet;
}

bool OAISearchGifsAPI_200_response::is_images_Valid() const{
    return m_images_isValid;
}

bool OAISearchGifsAPI_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_images.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchGifsAPI_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI