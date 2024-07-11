/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIDetectMainImageColor_200_response_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIDetectMainImageColor_200_response_inner::OAIDetectMainImageColor_200_response_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIDetectMainImageColor_200_response_inner::OAIDetectMainImageColor_200_response_inner() {
    this->initializeModel();
}

OAIDetectMainImageColor_200_response_inner::~OAIDetectMainImageColor_200_response_inner() {}

void OAIDetectMainImageColor_200_response_inner::initializeModel() {

    m_specific_color_isSet = false;
    m_specific_color_isValid = false;

    m_main_color_isSet = false;
    m_main_color_isValid = false;

    m_hex_code_isSet = false;
    m_hex_code_isValid = false;
}

void OAIDetectMainImageColor_200_response_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIDetectMainImageColor_200_response_inner::fromJsonObject(QJsonObject json) {

    m_specific_color_isValid = ::OpenAPI::fromJsonValue(m_specific_color, json[QString("specific_color")]);
    m_specific_color_isSet = !json[QString("specific_color")].isNull() && m_specific_color_isValid;

    m_main_color_isValid = ::OpenAPI::fromJsonValue(m_main_color, json[QString("main_color")]);
    m_main_color_isSet = !json[QString("main_color")].isNull() && m_main_color_isValid;

    m_hex_code_isValid = ::OpenAPI::fromJsonValue(m_hex_code, json[QString("hex_code")]);
    m_hex_code_isSet = !json[QString("hex_code")].isNull() && m_hex_code_isValid;
}

QString OAIDetectMainImageColor_200_response_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIDetectMainImageColor_200_response_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_specific_color_isSet) {
        obj.insert(QString("specific_color"), ::OpenAPI::toJsonValue(m_specific_color));
    }
    if (m_main_color_isSet) {
        obj.insert(QString("main_color"), ::OpenAPI::toJsonValue(m_main_color));
    }
    if (m_hex_code_isSet) {
        obj.insert(QString("hex_code"), ::OpenAPI::toJsonValue(m_hex_code));
    }
    return obj;
}

QString OAIDetectMainImageColor_200_response_inner::getSpecificColor() const {
    return m_specific_color;
}
void OAIDetectMainImageColor_200_response_inner::setSpecificColor(const QString &specific_color) {
    m_specific_color = specific_color;
    m_specific_color_isSet = true;
}

bool OAIDetectMainImageColor_200_response_inner::is_specific_color_Set() const{
    return m_specific_color_isSet;
}

bool OAIDetectMainImageColor_200_response_inner::is_specific_color_Valid() const{
    return m_specific_color_isValid;
}

QString OAIDetectMainImageColor_200_response_inner::getMainColor() const {
    return m_main_color;
}
void OAIDetectMainImageColor_200_response_inner::setMainColor(const QString &main_color) {
    m_main_color = main_color;
    m_main_color_isSet = true;
}

bool OAIDetectMainImageColor_200_response_inner::is_main_color_Set() const{
    return m_main_color_isSet;
}

bool OAIDetectMainImageColor_200_response_inner::is_main_color_Valid() const{
    return m_main_color_isValid;
}

QString OAIDetectMainImageColor_200_response_inner::getHexCode() const {
    return m_hex_code;
}
void OAIDetectMainImageColor_200_response_inner::setHexCode(const QString &hex_code) {
    m_hex_code = hex_code;
    m_hex_code_isSet = true;
}

bool OAIDetectMainImageColor_200_response_inner::is_hex_code_Set() const{
    return m_hex_code_isSet;
}

bool OAIDetectMainImageColor_200_response_inner::is_hex_code_Valid() const{
    return m_hex_code_isValid;
}

bool OAIDetectMainImageColor_200_response_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_specific_color_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_main_color_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_hex_code_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIDetectMainImageColor_200_response_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
