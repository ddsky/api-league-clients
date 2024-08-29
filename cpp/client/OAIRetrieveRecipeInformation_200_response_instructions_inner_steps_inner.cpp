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

#include "OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner() {
    this->initializeModel();
}

OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::~OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner() {}

void OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::initializeModel() {

    m_number_isSet = false;
    m_number_isValid = false;

    m_ingredients_isSet = false;
    m_ingredients_isValid = false;

    m_equipment_isSet = false;
    m_equipment_isValid = false;

    m_step_isSet = false;
    m_step_isValid = false;
}

void OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::fromJsonObject(QJsonObject json) {

    m_number_isValid = ::OpenAPI::fromJsonValue(m_number, json[QString("number")]);
    m_number_isSet = !json[QString("number")].isNull() && m_number_isValid;

    m_ingredients_isValid = ::OpenAPI::fromJsonValue(m_ingredients, json[QString("ingredients")]);
    m_ingredients_isSet = !json[QString("ingredients")].isNull() && m_ingredients_isValid;

    m_equipment_isValid = ::OpenAPI::fromJsonValue(m_equipment, json[QString("equipment")]);
    m_equipment_isSet = !json[QString("equipment")].isNull() && m_equipment_isValid;

    m_step_isValid = ::OpenAPI::fromJsonValue(m_step, json[QString("step")]);
    m_step_isSet = !json[QString("step")].isNull() && m_step_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_number_isSet) {
        obj.insert(QString("number"), ::OpenAPI::toJsonValue(m_number));
    }
    if (m_ingredients.size() > 0) {
        obj.insert(QString("ingredients"), ::OpenAPI::toJsonValue(m_ingredients));
    }
    if (m_equipment.size() > 0) {
        obj.insert(QString("equipment"), ::OpenAPI::toJsonValue(m_equipment));
    }
    if (m_step_isSet) {
        obj.insert(QString("step"), ::OpenAPI::toJsonValue(m_step));
    }
    return obj;
}

qint32 OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::getNumber() const {
    return m_number;
}
void OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::setNumber(const qint32 &number) {
    m_number = number;
    m_number_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::is_number_Set() const{
    return m_number_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::is_number_Valid() const{
    return m_number_isValid;
}

QList<OAISearchDrinks_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner> OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::getIngredients() const {
    return m_ingredients;
}
void OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::setIngredients(const QList<OAISearchDrinks_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner> &ingredients) {
    m_ingredients = ingredients;
    m_ingredients_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::is_ingredients_Set() const{
    return m_ingredients_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::is_ingredients_Valid() const{
    return m_ingredients_isValid;
}

QList<OAISearchDrinks_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner> OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::getEquipment() const {
    return m_equipment;
}
void OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::setEquipment(const QList<OAISearchDrinks_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner> &equipment) {
    m_equipment = equipment;
    m_equipment_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::is_equipment_Set() const{
    return m_equipment_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::is_equipment_Valid() const{
    return m_equipment_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::getStep() const {
    return m_step;
}
void OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::setStep(const QString &step) {
    m_step = step;
    m_step_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::is_step_Set() const{
    return m_step_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::is_step_Valid() const{
    return m_step_isValid;
}

bool OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_number_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_ingredients.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_equipment.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_step_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
