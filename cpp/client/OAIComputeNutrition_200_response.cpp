/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIComputeNutrition_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIComputeNutrition_200_response::OAIComputeNutrition_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIComputeNutrition_200_response::OAIComputeNutrition_200_response() {
    this->initializeModel();
}

OAIComputeNutrition_200_response::~OAIComputeNutrition_200_response() {}

void OAIComputeNutrition_200_response::initializeModel() {

    m_nutrients_isSet = false;
    m_nutrients_isValid = false;

    m_properties_isSet = false;
    m_properties_isValid = false;

    m_flavonoids_isSet = false;
    m_flavonoids_isValid = false;

    m_ingredient_breakdown_isSet = false;
    m_ingredient_breakdown_isValid = false;

    m_caloric_breakdown_isSet = false;
    m_caloric_breakdown_isValid = false;

    m_weight_per_serving_isSet = false;
    m_weight_per_serving_isValid = false;
}

void OAIComputeNutrition_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIComputeNutrition_200_response::fromJsonObject(QJsonObject json) {

    m_nutrients_isValid = ::OpenAPI::fromJsonValue(m_nutrients, json[QString("nutrients")]);
    m_nutrients_isSet = !json[QString("nutrients")].isNull() && m_nutrients_isValid;

    m_properties_isValid = ::OpenAPI::fromJsonValue(m_properties, json[QString("properties")]);
    m_properties_isSet = !json[QString("properties")].isNull() && m_properties_isValid;

    m_flavonoids_isValid = ::OpenAPI::fromJsonValue(m_flavonoids, json[QString("flavonoids")]);
    m_flavonoids_isSet = !json[QString("flavonoids")].isNull() && m_flavonoids_isValid;

    m_ingredient_breakdown_isValid = ::OpenAPI::fromJsonValue(m_ingredient_breakdown, json[QString("ingredient_breakdown")]);
    m_ingredient_breakdown_isSet = !json[QString("ingredient_breakdown")].isNull() && m_ingredient_breakdown_isValid;

    m_caloric_breakdown_isValid = ::OpenAPI::fromJsonValue(m_caloric_breakdown, json[QString("caloric_breakdown")]);
    m_caloric_breakdown_isSet = !json[QString("caloric_breakdown")].isNull() && m_caloric_breakdown_isValid;

    m_weight_per_serving_isValid = ::OpenAPI::fromJsonValue(m_weight_per_serving, json[QString("weight_per_serving")]);
    m_weight_per_serving_isSet = !json[QString("weight_per_serving")].isNull() && m_weight_per_serving_isValid;
}

QString OAIComputeNutrition_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIComputeNutrition_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_nutrients.size() > 0) {
        obj.insert(QString("nutrients"), ::OpenAPI::toJsonValue(m_nutrients));
    }
    if (m_properties.size() > 0) {
        obj.insert(QString("properties"), ::OpenAPI::toJsonValue(m_properties));
    }
    if (m_flavonoids.size() > 0) {
        obj.insert(QString("flavonoids"), ::OpenAPI::toJsonValue(m_flavonoids));
    }
    if (m_ingredient_breakdown.size() > 0) {
        obj.insert(QString("ingredient_breakdown"), ::OpenAPI::toJsonValue(m_ingredient_breakdown));
    }
    if (m_caloric_breakdown.isSet()) {
        obj.insert(QString("caloric_breakdown"), ::OpenAPI::toJsonValue(m_caloric_breakdown));
    }
    if (m_weight_per_serving.isSet()) {
        obj.insert(QString("weight_per_serving"), ::OpenAPI::toJsonValue(m_weight_per_serving));
    }
    return obj;
}

QList<OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner_nutrients_inner> OAIComputeNutrition_200_response::getNutrients() const {
    return m_nutrients;
}
void OAIComputeNutrition_200_response::setNutrients(const QList<OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner_nutrients_inner> &nutrients) {
    m_nutrients = nutrients;
    m_nutrients_isSet = true;
}

bool OAIComputeNutrition_200_response::is_nutrients_Set() const{
    return m_nutrients_isSet;
}

bool OAIComputeNutrition_200_response::is_nutrients_Valid() const{
    return m_nutrients_isValid;
}

QList<OAIRetrieveRecipeInformation_200_response_nutrition_flavonoids_inner> OAIComputeNutrition_200_response::getProperties() const {
    return m_properties;
}
void OAIComputeNutrition_200_response::setProperties(const QList<OAIRetrieveRecipeInformation_200_response_nutrition_flavonoids_inner> &properties) {
    m_properties = properties;
    m_properties_isSet = true;
}

bool OAIComputeNutrition_200_response::is_properties_Set() const{
    return m_properties_isSet;
}

bool OAIComputeNutrition_200_response::is_properties_Valid() const{
    return m_properties_isValid;
}

QList<OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner> OAIComputeNutrition_200_response::getFlavonoids() const {
    return m_flavonoids;
}
void OAIComputeNutrition_200_response::setFlavonoids(const QList<OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner> &flavonoids) {
    m_flavonoids = flavonoids;
    m_flavonoids_isSet = true;
}

bool OAIComputeNutrition_200_response::is_flavonoids_Set() const{
    return m_flavonoids_isSet;
}

bool OAIComputeNutrition_200_response::is_flavonoids_Valid() const{
    return m_flavonoids_isValid;
}

QList<OAIComputeNutrition_200_response_ingredient_breakdown_inner> OAIComputeNutrition_200_response::getIngredientBreakdown() const {
    return m_ingredient_breakdown;
}
void OAIComputeNutrition_200_response::setIngredientBreakdown(const QList<OAIComputeNutrition_200_response_ingredient_breakdown_inner> &ingredient_breakdown) {
    m_ingredient_breakdown = ingredient_breakdown;
    m_ingredient_breakdown_isSet = true;
}

bool OAIComputeNutrition_200_response::is_ingredient_breakdown_Set() const{
    return m_ingredient_breakdown_isSet;
}

bool OAIComputeNutrition_200_response::is_ingredient_breakdown_Valid() const{
    return m_ingredient_breakdown_isValid;
}

OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown OAIComputeNutrition_200_response::getCaloricBreakdown() const {
    return m_caloric_breakdown;
}
void OAIComputeNutrition_200_response::setCaloricBreakdown(const OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown &caloric_breakdown) {
    m_caloric_breakdown = caloric_breakdown;
    m_caloric_breakdown_isSet = true;
}

bool OAIComputeNutrition_200_response::is_caloric_breakdown_Set() const{
    return m_caloric_breakdown_isSet;
}

bool OAIComputeNutrition_200_response::is_caloric_breakdown_Valid() const{
    return m_caloric_breakdown_isValid;
}

OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving OAIComputeNutrition_200_response::getWeightPerServing() const {
    return m_weight_per_serving;
}
void OAIComputeNutrition_200_response::setWeightPerServing(const OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving &weight_per_serving) {
    m_weight_per_serving = weight_per_serving;
    m_weight_per_serving_isSet = true;
}

bool OAIComputeNutrition_200_response::is_weight_per_serving_Set() const{
    return m_weight_per_serving_isSet;
}

bool OAIComputeNutrition_200_response::is_weight_per_serving_Valid() const{
    return m_weight_per_serving_isValid;
}

bool OAIComputeNutrition_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_nutrients.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_properties.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_flavonoids.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_ingredient_breakdown.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_caloric_breakdown.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_weight_per_serving.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIComputeNutrition_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
