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

#include "OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner() {
    this->initializeModel();
}

OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::~OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner() {}

void OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::initializeModel() {

    m_name_isSet = false;
    m_name_isValid = false;

    m_amount_isSet = false;
    m_amount_isValid = false;

    m_unit_isSet = false;
    m_unit_isValid = false;

    m_id_isSet = false;
    m_id_isValid = false;

    m_nutrients_isSet = false;
    m_nutrients_isValid = false;
}

void OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::fromJsonObject(QJsonObject json) {

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_amount_isValid = ::OpenAPI::fromJsonValue(m_amount, json[QString("amount")]);
    m_amount_isSet = !json[QString("amount")].isNull() && m_amount_isValid;

    m_unit_isValid = ::OpenAPI::fromJsonValue(m_unit, json[QString("unit")]);
    m_unit_isSet = !json[QString("unit")].isNull() && m_unit_isValid;

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_nutrients_isValid = ::OpenAPI::fromJsonValue(m_nutrients, json[QString("nutrients")]);
    m_nutrients_isSet = !json[QString("nutrients")].isNull() && m_nutrients_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::asJsonObject() const {
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
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    if (m_nutrients.size() > 0) {
        obj.insert(QString("nutrients"), ::OpenAPI::toJsonValue(m_nutrients));
    }
    return obj;
}

QString OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::getName() const {
    return m_name;
}
void OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::is_name_Set() const{
    return m_name_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::is_name_Valid() const{
    return m_name_isValid;
}

double OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::getAmount() const {
    return m_amount;
}
void OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::setAmount(const double &amount) {
    m_amount = amount;
    m_amount_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::is_amount_Set() const{
    return m_amount_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::is_amount_Valid() const{
    return m_amount_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::getUnit() const {
    return m_unit;
}
void OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::setUnit(const QString &unit) {
    m_unit = unit;
    m_unit_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::is_unit_Set() const{
    return m_unit_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::is_unit_Valid() const{
    return m_unit_isValid;
}

qint32 OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::getId() const {
    return m_id;
}
void OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::setId(const qint32 &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::is_id_Set() const{
    return m_id_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::is_id_Valid() const{
    return m_id_isValid;
}

QList<OAISearchDrinks_200_response_drinks_inner_nutrition_nutrients_inner> OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::getNutrients() const {
    return m_nutrients;
}
void OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::setNutrients(const QList<OAISearchDrinks_200_response_drinks_inner_nutrition_nutrients_inner> &nutrients) {
    m_nutrients = nutrients;
    m_nutrients_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::is_nutrients_Set() const{
    return m_nutrients_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::is_nutrients_Valid() const{
    return m_nutrients_isValid;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::isSet() const {
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

        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_nutrients.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
