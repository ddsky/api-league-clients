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

#include "OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown() {
    this->initializeModel();
}

OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::~OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown() {}

void OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::initializeModel() {

    m_percent_fat_isSet = false;
    m_percent_fat_isValid = false;

    m_percent_carbs_isSet = false;
    m_percent_carbs_isValid = false;

    m_percent_protein_isSet = false;
    m_percent_protein_isValid = false;
}

void OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::fromJsonObject(QJsonObject json) {

    m_percent_fat_isValid = ::OpenAPI::fromJsonValue(m_percent_fat, json[QString("percent_fat")]);
    m_percent_fat_isSet = !json[QString("percent_fat")].isNull() && m_percent_fat_isValid;

    m_percent_carbs_isValid = ::OpenAPI::fromJsonValue(m_percent_carbs, json[QString("percent_carbs")]);
    m_percent_carbs_isSet = !json[QString("percent_carbs")].isNull() && m_percent_carbs_isValid;

    m_percent_protein_isValid = ::OpenAPI::fromJsonValue(m_percent_protein, json[QString("percent_protein")]);
    m_percent_protein_isSet = !json[QString("percent_protein")].isNull() && m_percent_protein_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::asJsonObject() const {
    QJsonObject obj;
    if (m_percent_fat_isSet) {
        obj.insert(QString("percent_fat"), ::OpenAPI::toJsonValue(m_percent_fat));
    }
    if (m_percent_carbs_isSet) {
        obj.insert(QString("percent_carbs"), ::OpenAPI::toJsonValue(m_percent_carbs));
    }
    if (m_percent_protein_isSet) {
        obj.insert(QString("percent_protein"), ::OpenAPI::toJsonValue(m_percent_protein));
    }
    return obj;
}

double OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::getPercentFat() const {
    return m_percent_fat;
}
void OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::setPercentFat(const double &percent_fat) {
    m_percent_fat = percent_fat;
    m_percent_fat_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::is_percent_fat_Set() const{
    return m_percent_fat_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::is_percent_fat_Valid() const{
    return m_percent_fat_isValid;
}

double OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::getPercentCarbs() const {
    return m_percent_carbs;
}
void OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::setPercentCarbs(const double &percent_carbs) {
    m_percent_carbs = percent_carbs;
    m_percent_carbs_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::is_percent_carbs_Set() const{
    return m_percent_carbs_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::is_percent_carbs_Valid() const{
    return m_percent_carbs_isValid;
}

double OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::getPercentProtein() const {
    return m_percent_protein;
}
void OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::setPercentProtein(const double &percent_protein) {
    m_percent_protein = percent_protein;
    m_percent_protein_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::is_percent_protein_Set() const{
    return m_percent_protein_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::is_percent_protein_Valid() const{
    return m_percent_protein_isValid;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_percent_fat_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_percent_carbs_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_percent_protein_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
