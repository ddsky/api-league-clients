/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIRetrieveRecipeInformation_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRetrieveRecipeInformation_200_response::OAIRetrieveRecipeInformation_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRetrieveRecipeInformation_200_response::OAIRetrieveRecipeInformation_200_response() {
    this->initializeModel();
}

OAIRetrieveRecipeInformation_200_response::~OAIRetrieveRecipeInformation_200_response() {}

void OAIRetrieveRecipeInformation_200_response::initializeModel() {

    m_id_isSet = false;
    m_id_isValid = false;

    m_title_isSet = false;
    m_title_isValid = false;

    m_servings_isSet = false;
    m_servings_isValid = false;

    m_images_isSet = false;
    m_images_isValid = false;

    m_dietary_properties_isSet = false;
    m_dietary_properties_isValid = false;

    m_price_per_serving_isSet = false;
    m_price_per_serving_isValid = false;

    m_times_isSet = false;
    m_times_isValid = false;

    m_nutrition_isSet = false;
    m_nutrition_isValid = false;

    m_taste_isSet = false;
    m_taste_isValid = false;

    m_cuisines_isSet = false;
    m_cuisines_isValid = false;

    m_meal_types_isSet = false;
    m_meal_types_isValid = false;

    m_occasions_isSet = false;
    m_occasions_isValid = false;

    m_ingredients_isSet = false;
    m_ingredients_isValid = false;

    m_instructions_isSet = false;
    m_instructions_isValid = false;

    m_credits_isSet = false;
    m_credits_isValid = false;

    m_scores_isSet = false;
    m_scores_isValid = false;
}

void OAIRetrieveRecipeInformation_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRetrieveRecipeInformation_200_response::fromJsonObject(QJsonObject json) {

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_title_isValid = ::OpenAPI::fromJsonValue(m_title, json[QString("title")]);
    m_title_isSet = !json[QString("title")].isNull() && m_title_isValid;

    m_servings_isValid = ::OpenAPI::fromJsonValue(m_servings, json[QString("servings")]);
    m_servings_isSet = !json[QString("servings")].isNull() && m_servings_isValid;

    m_images_isValid = ::OpenAPI::fromJsonValue(m_images, json[QString("images")]);
    m_images_isSet = !json[QString("images")].isNull() && m_images_isValid;

    m_dietary_properties_isValid = ::OpenAPI::fromJsonValue(m_dietary_properties, json[QString("dietary_properties")]);
    m_dietary_properties_isSet = !json[QString("dietary_properties")].isNull() && m_dietary_properties_isValid;

    m_price_per_serving_isValid = ::OpenAPI::fromJsonValue(m_price_per_serving, json[QString("price_per_serving")]);
    m_price_per_serving_isSet = !json[QString("price_per_serving")].isNull() && m_price_per_serving_isValid;

    m_times_isValid = ::OpenAPI::fromJsonValue(m_times, json[QString("times")]);
    m_times_isSet = !json[QString("times")].isNull() && m_times_isValid;

    m_nutrition_isValid = ::OpenAPI::fromJsonValue(m_nutrition, json[QString("nutrition")]);
    m_nutrition_isSet = !json[QString("nutrition")].isNull() && m_nutrition_isValid;

    m_taste_isValid = ::OpenAPI::fromJsonValue(m_taste, json[QString("taste")]);
    m_taste_isSet = !json[QString("taste")].isNull() && m_taste_isValid;

    m_cuisines_isValid = ::OpenAPI::fromJsonValue(m_cuisines, json[QString("cuisines")]);
    m_cuisines_isSet = !json[QString("cuisines")].isNull() && m_cuisines_isValid;

    m_meal_types_isValid = ::OpenAPI::fromJsonValue(m_meal_types, json[QString("meal_types")]);
    m_meal_types_isSet = !json[QString("meal_types")].isNull() && m_meal_types_isValid;

    m_occasions_isValid = ::OpenAPI::fromJsonValue(m_occasions, json[QString("occasions")]);
    m_occasions_isSet = !json[QString("occasions")].isNull() && m_occasions_isValid;

    m_ingredients_isValid = ::OpenAPI::fromJsonValue(m_ingredients, json[QString("ingredients")]);
    m_ingredients_isSet = !json[QString("ingredients")].isNull() && m_ingredients_isValid;

    m_instructions_isValid = ::OpenAPI::fromJsonValue(m_instructions, json[QString("instructions")]);
    m_instructions_isSet = !json[QString("instructions")].isNull() && m_instructions_isValid;

    m_credits_isValid = ::OpenAPI::fromJsonValue(m_credits, json[QString("credits")]);
    m_credits_isSet = !json[QString("credits")].isNull() && m_credits_isValid;

    m_scores_isValid = ::OpenAPI::fromJsonValue(m_scores, json[QString("scores")]);
    m_scores_isSet = !json[QString("scores")].isNull() && m_scores_isValid;
}

QString OAIRetrieveRecipeInformation_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRetrieveRecipeInformation_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    if (m_title_isSet) {
        obj.insert(QString("title"), ::OpenAPI::toJsonValue(m_title));
    }
    if (m_servings_isSet) {
        obj.insert(QString("servings"), ::OpenAPI::toJsonValue(m_servings));
    }
    if (m_images.size() > 0) {
        obj.insert(QString("images"), ::OpenAPI::toJsonValue(m_images));
    }
    if (m_dietary_properties.isSet()) {
        obj.insert(QString("dietary_properties"), ::OpenAPI::toJsonValue(m_dietary_properties));
    }
    if (m_price_per_serving_isSet) {
        obj.insert(QString("price_per_serving"), ::OpenAPI::toJsonValue(m_price_per_serving));
    }
    if (m_times.isSet()) {
        obj.insert(QString("times"), ::OpenAPI::toJsonValue(m_times));
    }
    if (m_nutrition.isSet()) {
        obj.insert(QString("nutrition"), ::OpenAPI::toJsonValue(m_nutrition));
    }
    if (m_taste.isSet()) {
        obj.insert(QString("taste"), ::OpenAPI::toJsonValue(m_taste));
    }
    if (m_cuisines.size() > 0) {
        obj.insert(QString("cuisines"), ::OpenAPI::toJsonValue(m_cuisines));
    }
    if (m_meal_types.size() > 0) {
        obj.insert(QString("meal_types"), ::OpenAPI::toJsonValue(m_meal_types));
    }
    if (m_occasions.size() > 0) {
        obj.insert(QString("occasions"), ::OpenAPI::toJsonValue(m_occasions));
    }
    if (m_ingredients.size() > 0) {
        obj.insert(QString("ingredients"), ::OpenAPI::toJsonValue(m_ingredients));
    }
    if (m_instructions.size() > 0) {
        obj.insert(QString("instructions"), ::OpenAPI::toJsonValue(m_instructions));
    }
    if (m_credits.isSet()) {
        obj.insert(QString("credits"), ::OpenAPI::toJsonValue(m_credits));
    }
    if (m_scores.isSet()) {
        obj.insert(QString("scores"), ::OpenAPI::toJsonValue(m_scores));
    }
    return obj;
}

qint32 OAIRetrieveRecipeInformation_200_response::getId() const {
    return m_id;
}
void OAIRetrieveRecipeInformation_200_response::setId(const qint32 &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_id_Set() const{
    return m_id_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_id_Valid() const{
    return m_id_isValid;
}

QString OAIRetrieveRecipeInformation_200_response::getTitle() const {
    return m_title;
}
void OAIRetrieveRecipeInformation_200_response::setTitle(const QString &title) {
    m_title = title;
    m_title_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_title_Set() const{
    return m_title_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_title_Valid() const{
    return m_title_isValid;
}

qint32 OAIRetrieveRecipeInformation_200_response::getServings() const {
    return m_servings;
}
void OAIRetrieveRecipeInformation_200_response::setServings(const qint32 &servings) {
    m_servings = servings;
    m_servings_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_servings_Set() const{
    return m_servings_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_servings_Valid() const{
    return m_servings_isValid;
}

QList<QString> OAIRetrieveRecipeInformation_200_response::getImages() const {
    return m_images;
}
void OAIRetrieveRecipeInformation_200_response::setImages(const QList<QString> &images) {
    m_images = images;
    m_images_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_images_Set() const{
    return m_images_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_images_Valid() const{
    return m_images_isValid;
}

OAIRetrieveRecipeInformation_200_response_dietary_properties OAIRetrieveRecipeInformation_200_response::getDietaryProperties() const {
    return m_dietary_properties;
}
void OAIRetrieveRecipeInformation_200_response::setDietaryProperties(const OAIRetrieveRecipeInformation_200_response_dietary_properties &dietary_properties) {
    m_dietary_properties = dietary_properties;
    m_dietary_properties_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_dietary_properties_Set() const{
    return m_dietary_properties_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_dietary_properties_Valid() const{
    return m_dietary_properties_isValid;
}

double OAIRetrieveRecipeInformation_200_response::getPricePerServing() const {
    return m_price_per_serving;
}
void OAIRetrieveRecipeInformation_200_response::setPricePerServing(const double &price_per_serving) {
    m_price_per_serving = price_per_serving;
    m_price_per_serving_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_price_per_serving_Set() const{
    return m_price_per_serving_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_price_per_serving_Valid() const{
    return m_price_per_serving_isValid;
}

OAIRetrieveRecipeInformation_200_response_times OAIRetrieveRecipeInformation_200_response::getTimes() const {
    return m_times;
}
void OAIRetrieveRecipeInformation_200_response::setTimes(const OAIRetrieveRecipeInformation_200_response_times &times) {
    m_times = times;
    m_times_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_times_Set() const{
    return m_times_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_times_Valid() const{
    return m_times_isValid;
}

OAIRetrieveRecipeInformation_200_response_nutrition OAIRetrieveRecipeInformation_200_response::getNutrition() const {
    return m_nutrition;
}
void OAIRetrieveRecipeInformation_200_response::setNutrition(const OAIRetrieveRecipeInformation_200_response_nutrition &nutrition) {
    m_nutrition = nutrition;
    m_nutrition_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_nutrition_Set() const{
    return m_nutrition_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_nutrition_Valid() const{
    return m_nutrition_isValid;
}

OAIRetrieveRecipeInformation_200_response_taste OAIRetrieveRecipeInformation_200_response::getTaste() const {
    return m_taste;
}
void OAIRetrieveRecipeInformation_200_response::setTaste(const OAIRetrieveRecipeInformation_200_response_taste &taste) {
    m_taste = taste;
    m_taste_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_taste_Set() const{
    return m_taste_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_taste_Valid() const{
    return m_taste_isValid;
}

QList<QString> OAIRetrieveRecipeInformation_200_response::getCuisines() const {
    return m_cuisines;
}
void OAIRetrieveRecipeInformation_200_response::setCuisines(const QList<QString> &cuisines) {
    m_cuisines = cuisines;
    m_cuisines_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_cuisines_Set() const{
    return m_cuisines_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_cuisines_Valid() const{
    return m_cuisines_isValid;
}

QList<QString> OAIRetrieveRecipeInformation_200_response::getMealTypes() const {
    return m_meal_types;
}
void OAIRetrieveRecipeInformation_200_response::setMealTypes(const QList<QString> &meal_types) {
    m_meal_types = meal_types;
    m_meal_types_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_meal_types_Set() const{
    return m_meal_types_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_meal_types_Valid() const{
    return m_meal_types_isValid;
}

QList<QString> OAIRetrieveRecipeInformation_200_response::getOccasions() const {
    return m_occasions;
}
void OAIRetrieveRecipeInformation_200_response::setOccasions(const QList<QString> &occasions) {
    m_occasions = occasions;
    m_occasions_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_occasions_Set() const{
    return m_occasions_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_occasions_Valid() const{
    return m_occasions_isValid;
}

QList<OAIRetrieveRecipeInformation_200_response_ingredients_inner> OAIRetrieveRecipeInformation_200_response::getIngredients() const {
    return m_ingredients;
}
void OAIRetrieveRecipeInformation_200_response::setIngredients(const QList<OAIRetrieveRecipeInformation_200_response_ingredients_inner> &ingredients) {
    m_ingredients = ingredients;
    m_ingredients_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_ingredients_Set() const{
    return m_ingredients_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_ingredients_Valid() const{
    return m_ingredients_isValid;
}

QList<OAIRetrieveRecipeInformation_200_response_instructions_inner> OAIRetrieveRecipeInformation_200_response::getInstructions() const {
    return m_instructions;
}
void OAIRetrieveRecipeInformation_200_response::setInstructions(const QList<OAIRetrieveRecipeInformation_200_response_instructions_inner> &instructions) {
    m_instructions = instructions;
    m_instructions_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_instructions_Set() const{
    return m_instructions_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_instructions_Valid() const{
    return m_instructions_isValid;
}

OAIRetrieveRecipeInformation_200_response_credits OAIRetrieveRecipeInformation_200_response::getCredits() const {
    return m_credits;
}
void OAIRetrieveRecipeInformation_200_response::setCredits(const OAIRetrieveRecipeInformation_200_response_credits &credits) {
    m_credits = credits;
    m_credits_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_credits_Set() const{
    return m_credits_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_credits_Valid() const{
    return m_credits_isValid;
}

OAIRetrieveRecipeInformation_200_response_scores OAIRetrieveRecipeInformation_200_response::getScores() const {
    return m_scores;
}
void OAIRetrieveRecipeInformation_200_response::setScores(const OAIRetrieveRecipeInformation_200_response_scores &scores) {
    m_scores = scores;
    m_scores_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response::is_scores_Set() const{
    return m_scores_isSet;
}

bool OAIRetrieveRecipeInformation_200_response::is_scores_Valid() const{
    return m_scores_isValid;
}

bool OAIRetrieveRecipeInformation_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_title_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_servings_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_images.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_dietary_properties.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_price_per_serving_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_times.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_nutrition.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_taste.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_cuisines.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_meal_types.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_occasions.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_ingredients.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_instructions.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_credits.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_scores.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRetrieveRecipeInformation_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
