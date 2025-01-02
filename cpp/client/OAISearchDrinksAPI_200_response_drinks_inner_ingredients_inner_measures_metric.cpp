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

#include "OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric() {
    this->initializeModel();
}

OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::~OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric() {}

void OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::initializeModel() {

    m_unit_short_isSet = false;
    m_unit_short_isValid = false;

    m_amount_isSet = false;
    m_amount_isValid = false;

    m_unit_long_isSet = false;
    m_unit_long_isValid = false;
}

void OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::fromJsonObject(QJsonObject json) {

    m_unit_short_isValid = ::OpenAPI::fromJsonValue(m_unit_short, json[QString("unit_short")]);
    m_unit_short_isSet = !json[QString("unit_short")].isNull() && m_unit_short_isValid;

    m_amount_isValid = ::OpenAPI::fromJsonValue(m_amount, json[QString("amount")]);
    m_amount_isSet = !json[QString("amount")].isNull() && m_amount_isValid;

    m_unit_long_isValid = ::OpenAPI::fromJsonValue(m_unit_long, json[QString("unit_long")]);
    m_unit_long_isSet = !json[QString("unit_long")].isNull() && m_unit_long_isValid;
}

QString OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::asJsonObject() const {
    QJsonObject obj;
    if (m_unit_short_isSet) {
        obj.insert(QString("unit_short"), ::OpenAPI::toJsonValue(m_unit_short));
    }
    if (m_amount_isSet) {
        obj.insert(QString("amount"), ::OpenAPI::toJsonValue(m_amount));
    }
    if (m_unit_long_isSet) {
        obj.insert(QString("unit_long"), ::OpenAPI::toJsonValue(m_unit_long));
    }
    return obj;
}

QString OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::getUnitShort() const {
    return m_unit_short;
}
void OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::setUnitShort(const QString &unit_short) {
    m_unit_short = unit_short;
    m_unit_short_isSet = true;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::is_unit_short_Set() const{
    return m_unit_short_isSet;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::is_unit_short_Valid() const{
    return m_unit_short_isValid;
}

double OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::getAmount() const {
    return m_amount;
}
void OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::setAmount(const double &amount) {
    m_amount = amount;
    m_amount_isSet = true;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::is_amount_Set() const{
    return m_amount_isSet;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::is_amount_Valid() const{
    return m_amount_isValid;
}

QString OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::getUnitLong() const {
    return m_unit_long;
}
void OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::setUnitLong(const QString &unit_long) {
    m_unit_long = unit_long;
    m_unit_long_isSet = true;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::is_unit_long_Set() const{
    return m_unit_long_isSet;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::is_unit_long_Valid() const{
    return m_unit_long_isValid;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_unit_short_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_amount_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_unit_long_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
