/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving() {
    this->initializeModel();
}

OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::~OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving() {}

void OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::initializeModel() {

    m_amount_isSet = false;
    m_amount_isValid = false;

    m_unit_isSet = false;
    m_unit_isValid = false;
}

void OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::fromJsonObject(QJsonObject json) {

    m_amount_isValid = ::OpenAPI::fromJsonValue(m_amount, json[QString("amount")]);
    m_amount_isSet = !json[QString("amount")].isNull() && m_amount_isValid;

    m_unit_isValid = ::OpenAPI::fromJsonValue(m_unit, json[QString("unit")]);
    m_unit_isSet = !json[QString("unit")].isNull() && m_unit_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::asJsonObject() const {
    QJsonObject obj;
    if (m_amount_isSet) {
        obj.insert(QString("amount"), ::OpenAPI::toJsonValue(m_amount));
    }
    if (m_unit_isSet) {
        obj.insert(QString("unit"), ::OpenAPI::toJsonValue(m_unit));
    }
    return obj;
}

qint32 OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::getAmount() const {
    return m_amount;
}
void OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::setAmount(const qint32 &amount) {
    m_amount = amount;
    m_amount_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::is_amount_Set() const{
    return m_amount_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::is_amount_Valid() const{
    return m_amount_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::getUnit() const {
    return m_unit;
}
void OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::setUnit(const QString &unit) {
    m_unit = unit;
    m_unit_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::is_unit_Set() const{
    return m_unit_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::is_unit_Valid() const{
    return m_unit_isValid;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::isSet() const {
    bool isObjectUpdated = false;
    do {
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

bool OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
