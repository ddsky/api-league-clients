/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner() {
    this->initializeModel();
}

OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::~OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner() {}

void OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::initializeModel() {

    m_name_isSet = false;
    m_name_isValid = false;

    m_percent_of_daily_needs_isSet = false;
    m_percent_of_daily_needs_isValid = false;

    m_amount_isSet = false;
    m_amount_isValid = false;

    m_unit_isSet = false;
    m_unit_isValid = false;
}

void OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::fromJsonObject(QJsonObject json) {

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_percent_of_daily_needs_isValid = ::OpenAPI::fromJsonValue(m_percent_of_daily_needs, json[QString("percent_of_daily_needs")]);
    m_percent_of_daily_needs_isSet = !json[QString("percent_of_daily_needs")].isNull() && m_percent_of_daily_needs_isValid;

    m_amount_isValid = ::OpenAPI::fromJsonValue(m_amount, json[QString("amount")]);
    m_amount_isSet = !json[QString("amount")].isNull() && m_amount_isValid;

    m_unit_isValid = ::OpenAPI::fromJsonValue(m_unit, json[QString("unit")]);
    m_unit_isSet = !json[QString("unit")].isNull() && m_unit_isValid;
}

QString OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    if (m_percent_of_daily_needs_isSet) {
        obj.insert(QString("percent_of_daily_needs"), ::OpenAPI::toJsonValue(m_percent_of_daily_needs));
    }
    if (m_amount_isSet) {
        obj.insert(QString("amount"), ::OpenAPI::toJsonValue(m_amount));
    }
    if (m_unit_isSet) {
        obj.insert(QString("unit"), ::OpenAPI::toJsonValue(m_unit));
    }
    return obj;
}

QString OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::getName() const {
    return m_name;
}
void OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::is_name_Set() const{
    return m_name_isSet;
}

bool OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::is_name_Valid() const{
    return m_name_isValid;
}

qint32 OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::getPercentOfDailyNeeds() const {
    return m_percent_of_daily_needs;
}
void OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::setPercentOfDailyNeeds(const qint32 &percent_of_daily_needs) {
    m_percent_of_daily_needs = percent_of_daily_needs;
    m_percent_of_daily_needs_isSet = true;
}

bool OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::is_percent_of_daily_needs_Set() const{
    return m_percent_of_daily_needs_isSet;
}

bool OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::is_percent_of_daily_needs_Valid() const{
    return m_percent_of_daily_needs_isValid;
}

qint32 OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::getAmount() const {
    return m_amount;
}
void OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::setAmount(const qint32 &amount) {
    m_amount = amount;
    m_amount_isSet = true;
}

bool OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::is_amount_Set() const{
    return m_amount_isSet;
}

bool OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::is_amount_Valid() const{
    return m_amount_isValid;
}

QString OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::getUnit() const {
    return m_unit;
}
void OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::setUnit(const QString &unit) {
    m_unit = unit;
    m_unit_isSet = true;
}

bool OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::is_unit_Set() const{
    return m_unit_isSet;
}

bool OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::is_unit_Valid() const{
    return m_unit_isValid;
}

bool OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_percent_of_daily_needs_isSet) {
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

bool OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
