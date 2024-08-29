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

#include "OAISearchDrinks_200_response_drinks_inner_nutrition.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchDrinks_200_response_drinks_inner_nutrition::OAISearchDrinks_200_response_drinks_inner_nutrition(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchDrinks_200_response_drinks_inner_nutrition::OAISearchDrinks_200_response_drinks_inner_nutrition() {
    this->initializeModel();
}

OAISearchDrinks_200_response_drinks_inner_nutrition::~OAISearchDrinks_200_response_drinks_inner_nutrition() {}

void OAISearchDrinks_200_response_drinks_inner_nutrition::initializeModel() {

    m_weight_per_serving_isSet = false;
    m_weight_per_serving_isValid = false;

    m_caloric_breakdown_isSet = false;
    m_caloric_breakdown_isValid = false;

    m_flavonoids_isSet = false;
    m_flavonoids_isValid = false;

    m_ingredient_breakdown_isSet = false;
    m_ingredient_breakdown_isValid = false;

    m_properties_isSet = false;
    m_properties_isValid = false;

    m_nutrients_isSet = false;
    m_nutrients_isValid = false;
}

void OAISearchDrinks_200_response_drinks_inner_nutrition::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchDrinks_200_response_drinks_inner_nutrition::fromJsonObject(QJsonObject json) {

    m_weight_per_serving_isValid = ::OpenAPI::fromJsonValue(m_weight_per_serving, json[QString("weight_per_serving")]);
    m_weight_per_serving_isSet = !json[QString("weight_per_serving")].isNull() && m_weight_per_serving_isValid;

    m_caloric_breakdown_isValid = ::OpenAPI::fromJsonValue(m_caloric_breakdown, json[QString("caloric_breakdown")]);
    m_caloric_breakdown_isSet = !json[QString("caloric_breakdown")].isNull() && m_caloric_breakdown_isValid;

    m_flavonoids_isValid = ::OpenAPI::fromJsonValue(m_flavonoids, json[QString("flavonoids")]);
    m_flavonoids_isSet = !json[QString("flavonoids")].isNull() && m_flavonoids_isValid;

    m_ingredient_breakdown_isValid = ::OpenAPI::fromJsonValue(m_ingredient_breakdown, json[QString("ingredient_breakdown")]);
    m_ingredient_breakdown_isSet = !json[QString("ingredient_breakdown")].isNull() && m_ingredient_breakdown_isValid;

    m_properties_isValid = ::OpenAPI::fromJsonValue(m_properties, json[QString("properties")]);
    m_properties_isSet = !json[QString("properties")].isNull() && m_properties_isValid;

    m_nutrients_isValid = ::OpenAPI::fromJsonValue(m_nutrients, json[QString("nutrients")]);
    m_nutrients_isSet = !json[QString("nutrients")].isNull() && m_nutrients_isValid;
}

QString OAISearchDrinks_200_response_drinks_inner_nutrition::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchDrinks_200_response_drinks_inner_nutrition::asJsonObject() const {
    QJsonObject obj;
    if (m_weight_per_serving.isSet()) {
        obj.insert(QString("weight_per_serving"), ::OpenAPI::toJsonValue(m_weight_per_serving));
    }
    if (m_caloric_breakdown.isSet()) {
        obj.insert(QString("caloric_breakdown"), ::OpenAPI::toJsonValue(m_caloric_breakdown));
    }
    if (m_flavonoids.size() > 0) {
        obj.insert(QString("flavonoids"), ::OpenAPI::toJsonValue(m_flavonoids));
    }
    if (m_ingredient_breakdown.size() > 0) {
        obj.insert(QString("ingredient_breakdown"), ::OpenAPI::toJsonValue(m_ingredient_breakdown));
    }
    if (m_properties.size() > 0) {
        obj.insert(QString("properties"), ::OpenAPI::toJsonValue(m_properties));
    }
    if (m_nutrients.size() > 0) {
        obj.insert(QString("nutrients"), ::OpenAPI::toJsonValue(m_nutrients));
    }
    return obj;
}

OAISearchDrinks_200_response_drinks_inner_nutrition_weight_per_serving OAISearchDrinks_200_response_drinks_inner_nutrition::getWeightPerServing() const {
    return m_weight_per_serving;
}
void OAISearchDrinks_200_response_drinks_inner_nutrition::setWeightPerServing(const OAISearchDrinks_200_response_drinks_inner_nutrition_weight_per_serving &weight_per_serving) {
    m_weight_per_serving = weight_per_serving;
    m_weight_per_serving_isSet = true;
}

bool OAISearchDrinks_200_response_drinks_inner_nutrition::is_weight_per_serving_Set() const{
    return m_weight_per_serving_isSet;
}

bool OAISearchDrinks_200_response_drinks_inner_nutrition::is_weight_per_serving_Valid() const{
    return m_weight_per_serving_isValid;
}

OAISearchDrinks_200_response_drinks_inner_nutrition_caloric_breakdown OAISearchDrinks_200_response_drinks_inner_nutrition::getCaloricBreakdown() const {
    return m_caloric_breakdown;
}
void OAISearchDrinks_200_response_drinks_inner_nutrition::setCaloricBreakdown(const OAISearchDrinks_200_response_drinks_inner_nutrition_caloric_breakdown &caloric_breakdown) {
    m_caloric_breakdown = caloric_breakdown;
    m_caloric_breakdown_isSet = true;
}

bool OAISearchDrinks_200_response_drinks_inner_nutrition::is_caloric_breakdown_Set() const{
    return m_caloric_breakdown_isSet;
}

bool OAISearchDrinks_200_response_drinks_inner_nutrition::is_caloric_breakdown_Valid() const{
    return m_caloric_breakdown_isValid;
}

QList<OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner> OAISearchDrinks_200_response_drinks_inner_nutrition::getFlavonoids() const {
    return m_flavonoids;
}
void OAISearchDrinks_200_response_drinks_inner_nutrition::setFlavonoids(const QList<OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner> &flavonoids) {
    m_flavonoids = flavonoids;
    m_flavonoids_isSet = true;
}

bool OAISearchDrinks_200_response_drinks_inner_nutrition::is_flavonoids_Set() const{
    return m_flavonoids_isSet;
}

bool OAISearchDrinks_200_response_drinks_inner_nutrition::is_flavonoids_Valid() const{
    return m_flavonoids_isValid;
}

QList<OAISearchDrinks_200_response_drinks_inner_nutrition_ingredient_breakdown_inner> OAISearchDrinks_200_response_drinks_inner_nutrition::getIngredientBreakdown() const {
    return m_ingredient_breakdown;
}
void OAISearchDrinks_200_response_drinks_inner_nutrition::setIngredientBreakdown(const QList<OAISearchDrinks_200_response_drinks_inner_nutrition_ingredient_breakdown_inner> &ingredient_breakdown) {
    m_ingredient_breakdown = ingredient_breakdown;
    m_ingredient_breakdown_isSet = true;
}

bool OAISearchDrinks_200_response_drinks_inner_nutrition::is_ingredient_breakdown_Set() const{
    return m_ingredient_breakdown_isSet;
}

bool OAISearchDrinks_200_response_drinks_inner_nutrition::is_ingredient_breakdown_Valid() const{
    return m_ingredient_breakdown_isValid;
}

QList<OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner> OAISearchDrinks_200_response_drinks_inner_nutrition::getProperties() const {
    return m_properties;
}
void OAISearchDrinks_200_response_drinks_inner_nutrition::setProperties(const QList<OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner> &properties) {
    m_properties = properties;
    m_properties_isSet = true;
}

bool OAISearchDrinks_200_response_drinks_inner_nutrition::is_properties_Set() const{
    return m_properties_isSet;
}

bool OAISearchDrinks_200_response_drinks_inner_nutrition::is_properties_Valid() const{
    return m_properties_isValid;
}

QList<OAISearchDrinks_200_response_drinks_inner_nutrition_nutrients_inner> OAISearchDrinks_200_response_drinks_inner_nutrition::getNutrients() const {
    return m_nutrients;
}
void OAISearchDrinks_200_response_drinks_inner_nutrition::setNutrients(const QList<OAISearchDrinks_200_response_drinks_inner_nutrition_nutrients_inner> &nutrients) {
    m_nutrients = nutrients;
    m_nutrients_isSet = true;
}

bool OAISearchDrinks_200_response_drinks_inner_nutrition::is_nutrients_Set() const{
    return m_nutrients_isSet;
}

bool OAISearchDrinks_200_response_drinks_inner_nutrition::is_nutrients_Valid() const{
    return m_nutrients_isValid;
}

bool OAISearchDrinks_200_response_drinks_inner_nutrition::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_weight_per_serving.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_caloric_breakdown.isSet()) {
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

        if (m_properties.size() > 0) {
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

bool OAISearchDrinks_200_response_drinks_inner_nutrition::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
