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

#include "OAIInline_response_200_6.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIInline_response_200_6::OAIInline_response_200_6(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIInline_response_200_6::OAIInline_response_200_6() {
    this->initializeModel();
}

OAIInline_response_200_6::~OAIInline_response_200_6() {}

void OAIInline_response_200_6::initializeModel() {

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

void OAIInline_response_200_6::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIInline_response_200_6::fromJsonObject(QJsonObject json) {

    m_description_isValid = ::OpenAPI::fromJsonValue(description, json[QString("description")]);
    m_description_isSet = !json[QString("description")].isNull() && m_description_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;

    m_type_isValid = ::OpenAPI::fromJsonValue(type, json[QString("type")]);
    m_type_isSet = !json[QString("type")].isNull() && m_type_isValid;

    m_width_isValid = ::OpenAPI::fromJsonValue(width, json[QString("width")]);
    m_width_isSet = !json[QString("width")].isNull() && m_width_isValid;

    m_height_isValid = ::OpenAPI::fromJsonValue(height, json[QString("height")]);
    m_height_isSet = !json[QString("height")].isNull() && m_height_isValid;

    m_ratio_isValid = ::OpenAPI::fromJsonValue(ratio, json[QString("ratio")]);
    m_ratio_isSet = !json[QString("ratio")].isNull() && m_ratio_isValid;
}

QString OAIInline_response_200_6::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIInline_response_200_6::asJsonObject() const {
    QJsonObject obj;
    if (m_description_isSet) {
        obj.insert(QString("description"), ::OpenAPI::toJsonValue(description));
    }
    if (m_url_isSet) {
        obj.insert(QString("url"), ::OpenAPI::toJsonValue(url));
    }
    if (m_type_isSet) {
        obj.insert(QString("type"), ::OpenAPI::toJsonValue(type));
    }
    if (m_width_isSet) {
        obj.insert(QString("width"), ::OpenAPI::toJsonValue(width));
    }
    if (m_height_isSet) {
        obj.insert(QString("height"), ::OpenAPI::toJsonValue(height));
    }
    if (m_ratio_isSet) {
        obj.insert(QString("ratio"), ::OpenAPI::toJsonValue(ratio));
    }
    return obj;
}

QString OAIInline_response_200_6::getDescription() const {
    return description;
}
void OAIInline_response_200_6::setDescription(const QString &description) {
    this->description = description;
    this->m_description_isSet = true;
}

bool OAIInline_response_200_6::is_description_Set() const{
    return m_description_isSet;
}

bool OAIInline_response_200_6::is_description_Valid() const{
    return m_description_isValid;
}

QString OAIInline_response_200_6::getUrl() const {
    return url;
}
void OAIInline_response_200_6::setUrl(const QString &url) {
    this->url = url;
    this->m_url_isSet = true;
}

bool OAIInline_response_200_6::is_url_Set() const{
    return m_url_isSet;
}

bool OAIInline_response_200_6::is_url_Valid() const{
    return m_url_isValid;
}

QString OAIInline_response_200_6::getType() const {
    return type;
}
void OAIInline_response_200_6::setType(const QString &type) {
    this->type = type;
    this->m_type_isSet = true;
}

bool OAIInline_response_200_6::is_type_Set() const{
    return m_type_isSet;
}

bool OAIInline_response_200_6::is_type_Valid() const{
    return m_type_isValid;
}

qint32 OAIInline_response_200_6::getWidth() const {
    return width;
}
void OAIInline_response_200_6::setWidth(const qint32 &width) {
    this->width = width;
    this->m_width_isSet = true;
}

bool OAIInline_response_200_6::is_width_Set() const{
    return m_width_isSet;
}

bool OAIInline_response_200_6::is_width_Valid() const{
    return m_width_isValid;
}

qint32 OAIInline_response_200_6::getHeight() const {
    return height;
}
void OAIInline_response_200_6::setHeight(const qint32 &height) {
    this->height = height;
    this->m_height_isSet = true;
}

bool OAIInline_response_200_6::is_height_Set() const{
    return m_height_isSet;
}

bool OAIInline_response_200_6::is_height_Valid() const{
    return m_height_isValid;
}

double OAIInline_response_200_6::getRatio() const {
    return ratio;
}
void OAIInline_response_200_6::setRatio(const double &ratio) {
    this->ratio = ratio;
    this->m_ratio_isSet = true;
}

bool OAIInline_response_200_6::is_ratio_Set() const{
    return m_ratio_isSet;
}

bool OAIInline_response_200_6::is_ratio_Valid() const{
    return m_ratio_isValid;
}

bool OAIInline_response_200_6::isSet() const {
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

bool OAIInline_response_200_6::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
