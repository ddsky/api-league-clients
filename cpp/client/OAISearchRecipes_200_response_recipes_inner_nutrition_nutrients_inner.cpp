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

#include "OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner() {
    this->initializeModel();
}

OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::~OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner() {}

void OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::initializeModel() {

    m_name_isSet = false;
    m_name_isValid = false;

    m_amount_isSet = false;
    m_amount_isValid = false;

    m_unit_isSet = false;
    m_unit_isValid = false;
}

void OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::fromJsonObject(QJsonObject json) {

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_amount_isValid = ::OpenAPI::fromJsonValue(m_amount, json[QString("amount")]);
    m_amount_isSet = !json[QString("amount")].isNull() && m_amount_isValid;

    m_unit_isValid = ::OpenAPI::fromJsonValue(m_unit, json[QString("unit")]);
    m_unit_isSet = !json[QString("unit")].isNull() && m_unit_isValid;
}

QString OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    if (m_amount_isSet) {
        obj.insert(QString("amount"), ::OpenAPI::toJsonValue(m_amount));
    }
    if (m_unit_isSet) {
        obj.insert(QString("unit"), ::OpenAPI::toJsonValue(m_unit));
    }
    return obj;
}

QString OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::getName() const {
    return m_name;
}
void OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::is_name_Set() const{
    return m_name_isSet;
}

bool OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::is_name_Valid() const{
    return m_name_isValid;
}

double OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::getAmount() const {
    return m_amount;
}
void OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::setAmount(const double &amount) {
    m_amount = amount;
    m_amount_isSet = true;
}

bool OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::is_amount_Set() const{
    return m_amount_isSet;
}

bool OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::is_amount_Valid() const{
    return m_amount_isValid;
}

QString OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::getUnit() const {
    return m_unit;
}
void OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::setUnit(const QString &unit) {
    m_unit = unit;
    m_unit_isSet = true;
}

bool OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::is_unit_Set() const{
    return m_unit_isSet;
}

bool OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::is_unit_Valid() const{
    return m_unit_isValid;
}

bool OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_amount_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_unit_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
