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

#include "OAIExtractEntitiesAPI_200_response_entities_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIExtractEntitiesAPI_200_response_entities_inner::OAIExtractEntitiesAPI_200_response_entities_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIExtractEntitiesAPI_200_response_entities_inner::OAIExtractEntitiesAPI_200_response_entities_inner() {
    this->initializeModel();
}

OAIExtractEntitiesAPI_200_response_entities_inner::~OAIExtractEntitiesAPI_200_response_entities_inner() {}

void OAIExtractEntitiesAPI_200_response_entities_inner::initializeModel() {

    m_start_position_isSet = false;
    m_start_position_isValid = false;

    m_image_isSet = false;
    m_image_isValid = false;

    m_type_isSet = false;
    m_type_isValid = false;

    m_value_isSet = false;
    m_value_isValid = false;

    m_end_position_isSet = false;
    m_end_position_isValid = false;
}

void OAIExtractEntitiesAPI_200_response_entities_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIExtractEntitiesAPI_200_response_entities_inner::fromJsonObject(QJsonObject json) {

    m_start_position_isValid = ::OpenAPI::fromJsonValue(m_start_position, json[QString("start_position")]);
    m_start_position_isSet = !json[QString("start_position")].isNull() && m_start_position_isValid;

    m_image_isValid = ::OpenAPI::fromJsonValue(m_image, json[QString("image")]);
    m_image_isSet = !json[QString("image")].isNull() && m_image_isValid;

    m_type_isValid = ::OpenAPI::fromJsonValue(m_type, json[QString("type")]);
    m_type_isSet = !json[QString("type")].isNull() && m_type_isValid;

    m_value_isValid = ::OpenAPI::fromJsonValue(m_value, json[QString("value")]);
    m_value_isSet = !json[QString("value")].isNull() && m_value_isValid;

    m_end_position_isValid = ::OpenAPI::fromJsonValue(m_end_position, json[QString("end_position")]);
    m_end_position_isSet = !json[QString("end_position")].isNull() && m_end_position_isValid;
}

QString OAIExtractEntitiesAPI_200_response_entities_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIExtractEntitiesAPI_200_response_entities_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_start_position_isSet) {
        obj.insert(QString("start_position"), ::OpenAPI::toJsonValue(m_start_position));
    }
    if (m_image_isSet) {
        obj.insert(QString("image"), ::OpenAPI::toJsonValue(m_image));
    }
    if (m_type_isSet) {
        obj.insert(QString("type"), ::OpenAPI::toJsonValue(m_type));
    }
    if (m_value_isSet) {
        obj.insert(QString("value"), ::OpenAPI::toJsonValue(m_value));
    }
    if (m_end_position_isSet) {
        obj.insert(QString("end_position"), ::OpenAPI::toJsonValue(m_end_position));
    }
    return obj;
}

qint32 OAIExtractEntitiesAPI_200_response_entities_inner::getStartPosition() const {
    return m_start_position;
}
void OAIExtractEntitiesAPI_200_response_entities_inner::setStartPosition(const qint32 &start_position) {
    m_start_position = start_position;
    m_start_position_isSet = true;
}

bool OAIExtractEntitiesAPI_200_response_entities_inner::is_start_position_Set() const{
    return m_start_position_isSet;
}

bool OAIExtractEntitiesAPI_200_response_entities_inner::is_start_position_Valid() const{
    return m_start_position_isValid;
}

QString OAIExtractEntitiesAPI_200_response_entities_inner::getImage() const {
    return m_image;
}
void OAIExtractEntitiesAPI_200_response_entities_inner::setImage(const QString &image) {
    m_image = image;
    m_image_isSet = true;
}

bool OAIExtractEntitiesAPI_200_response_entities_inner::is_image_Set() const{
    return m_image_isSet;
}

bool OAIExtractEntitiesAPI_200_response_entities_inner::is_image_Valid() const{
    return m_image_isValid;
}

QString OAIExtractEntitiesAPI_200_response_entities_inner::getType() const {
    return m_type;
}
void OAIExtractEntitiesAPI_200_response_entities_inner::setType(const QString &type) {
    m_type = type;
    m_type_isSet = true;
}

bool OAIExtractEntitiesAPI_200_response_entities_inner::is_type_Set() const{
    return m_type_isSet;
}

bool OAIExtractEntitiesAPI_200_response_entities_inner::is_type_Valid() const{
    return m_type_isValid;
}

QString OAIExtractEntitiesAPI_200_response_entities_inner::getValue() const {
    return m_value;
}
void OAIExtractEntitiesAPI_200_response_entities_inner::setValue(const QString &value) {
    m_value = value;
    m_value_isSet = true;
}

bool OAIExtractEntitiesAPI_200_response_entities_inner::is_value_Set() const{
    return m_value_isSet;
}

bool OAIExtractEntitiesAPI_200_response_entities_inner::is_value_Valid() const{
    return m_value_isValid;
}

qint32 OAIExtractEntitiesAPI_200_response_entities_inner::getEndPosition() const {
    return m_end_position;
}
void OAIExtractEntitiesAPI_200_response_entities_inner::setEndPosition(const qint32 &end_position) {
    m_end_position = end_position;
    m_end_position_isSet = true;
}

bool OAIExtractEntitiesAPI_200_response_entities_inner::is_end_position_Set() const{
    return m_end_position_isSet;
}

bool OAIExtractEntitiesAPI_200_response_entities_inner::is_end_position_Valid() const{
    return m_end_position_isValid;
}

bool OAIExtractEntitiesAPI_200_response_entities_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_start_position_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_image_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_type_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_value_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_end_position_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIExtractEntitiesAPI_200_response_entities_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
