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

#include "OAIRandomMemeAPI_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRandomMemeAPI_200_response::OAIRandomMemeAPI_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRandomMemeAPI_200_response::OAIRandomMemeAPI_200_response() {
    this->initializeModel();
}

OAIRandomMemeAPI_200_response::~OAIRandomMemeAPI_200_response() {}

void OAIRandomMemeAPI_200_response::initializeModel() {

    m_description_isSet = false;
    m_description_isValid = false;

    m_url_isSet = false;
    m_url_isValid = false;

    m_type_isSet = false;
    m_type_isValid = false;

    m_width_isSet = false;
    m_width_isValid = false;

    m_height_isSet = false;
    m_height_isValid = false;

    m_ratio_isSet = false;
    m_ratio_isValid = false;
}

void OAIRandomMemeAPI_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRandomMemeAPI_200_response::fromJsonObject(QJsonObject json) {

    m_description_isValid = ::OpenAPI::fromJsonValue(m_description, json[QString("description")]);
    m_description_isSet = !json[QString("description")].isNull() && m_description_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(m_url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;

    m_type_isValid = ::OpenAPI::fromJsonValue(m_type, json[QString("type")]);
    m_type_isSet = !json[QString("type")].isNull() && m_type_isValid;

    m_width_isValid = ::OpenAPI::fromJsonValue(m_width, json[QString("width")]);
    m_width_isSet = !json[QString("width")].isNull() && m_width_isValid;

    m_height_isValid = ::OpenAPI::fromJsonValue(m_height, json[QString("height")]);
    m_height_isSet = !json[QString("height")].isNull() && m_height_isValid;

    m_ratio_isValid = ::OpenAPI::fromJsonValue(m_ratio, json[QString("ratio")]);
    m_ratio_isSet = !json[QString("ratio")].isNull() && m_ratio_isValid;
}

QString OAIRandomMemeAPI_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRandomMemeAPI_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_description_isSet) {
        obj.insert(QString("description"), ::OpenAPI::toJsonValue(m_description));
    }
    if (m_url_isSet) {
        obj.insert(QString("url"), ::OpenAPI::toJsonValue(m_url));
    }
    if (m_type_isSet) {
        obj.insert(QString("type"), ::OpenAPI::toJsonValue(m_type));
    }
    if (m_width_isSet) {
        obj.insert(QString("width"), ::OpenAPI::toJsonValue(m_width));
    }
    if (m_height_isSet) {
        obj.insert(QString("height"), ::OpenAPI::toJsonValue(m_height));
    }
    if (m_ratio_isSet) {
        obj.insert(QString("ratio"), ::OpenAPI::toJsonValue(m_ratio));
    }
    return obj;
}

QString OAIRandomMemeAPI_200_response::getDescription() const {
    return m_description;
}
void OAIRandomMemeAPI_200_response::setDescription(const QString &description) {
    m_description = description;
    m_description_isSet = true;
}

bool OAIRandomMemeAPI_200_response::is_description_Set() const{
    return m_description_isSet;
}

bool OAIRandomMemeAPI_200_response::is_description_Valid() const{
    return m_description_isValid;
}

QString OAIRandomMemeAPI_200_response::getUrl() const {
    return m_url;
}
void OAIRandomMemeAPI_200_response::setUrl(const QString &url) {
    m_url = url;
    m_url_isSet = true;
}

bool OAIRandomMemeAPI_200_response::is_url_Set() const{
    return m_url_isSet;
}

bool OAIRandomMemeAPI_200_response::is_url_Valid() const{
    return m_url_isValid;
}

QString OAIRandomMemeAPI_200_response::getType() const {
    return m_type;
}
void OAIRandomMemeAPI_200_response::setType(const QString &type) {
    m_type = type;
    m_type_isSet = true;
}

bool OAIRandomMemeAPI_200_response::is_type_Set() const{
    return m_type_isSet;
}

bool OAIRandomMemeAPI_200_response::is_type_Valid() const{
    return m_type_isValid;
}

qint32 OAIRandomMemeAPI_200_response::getWidth() const {
    return m_width;
}
void OAIRandomMemeAPI_200_response::setWidth(const qint32 &width) {
    m_width = width;
    m_width_isSet = true;
}

bool OAIRandomMemeAPI_200_response::is_width_Set() const{
    return m_width_isSet;
}

bool OAIRandomMemeAPI_200_response::is_width_Valid() const{
    return m_width_isValid;
}

qint32 OAIRandomMemeAPI_200_response::getHeight() const {
    return m_height;
}
void OAIRandomMemeAPI_200_response::setHeight(const qint32 &height) {
    m_height = height;
    m_height_isSet = true;
}

bool OAIRandomMemeAPI_200_response::is_height_Set() const{
    return m_height_isSet;
}

bool OAIRandomMemeAPI_200_response::is_height_Valid() const{
    return m_height_isValid;
}

double OAIRandomMemeAPI_200_response::getRatio() const {
    return m_ratio;
}
void OAIRandomMemeAPI_200_response::setRatio(const double &ratio) {
    m_ratio = ratio;
    m_ratio_isSet = true;
}

bool OAIRandomMemeAPI_200_response::is_ratio_Set() const{
    return m_ratio_isSet;
}

bool OAIRandomMemeAPI_200_response::is_ratio_Valid() const{
    return m_ratio_isValid;
}

bool OAIRandomMemeAPI_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_description_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_url_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_type_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_width_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_height_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_ratio_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRandomMemeAPI_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
