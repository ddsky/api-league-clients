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

#include "OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner() {
    this->initializeModel();
}

OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::~OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner() {}

void OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::initializeModel() {

    m_name_isSet = false;
    m_name_isValid = false;

    m_image_isSet = false;
    m_image_isValid = false;

    m_id_isSet = false;
    m_id_isValid = false;
}

void OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::fromJsonObject(QJsonObject json) {

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_image_isValid = ::OpenAPI::fromJsonValue(m_image, json[QString("image")]);
    m_image_isSet = !json[QString("image")].isNull() && m_image_isValid;

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;
}

QString OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    if (m_image_isSet) {
        obj.insert(QString("image"), ::OpenAPI::toJsonValue(m_image));
    }
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    return obj;
}

QString OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::getName() const {
    return m_name;
}
void OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::is_name_Set() const{
    return m_name_isSet;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::is_name_Valid() const{
    return m_name_isValid;
}

QString OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::getImage() const {
    return m_image;
}
void OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::setImage(const QString &image) {
    m_image = image;
    m_image_isSet = true;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::is_image_Set() const{
    return m_image_isSet;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::is_image_Valid() const{
    return m_image_isValid;
}

qint32 OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::getId() const {
    return m_id;
}
void OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::setId(const qint32 &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::is_id_Set() const{
    return m_id_isSet;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::is_id_Valid() const{
    return m_id_isValid;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_image_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
