/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAISearchRecipes_200_response_recipes_inner_nutrition.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchRecipes_200_response_recipes_inner_nutrition::OAISearchRecipes_200_response_recipes_inner_nutrition(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchRecipes_200_response_recipes_inner_nutrition::OAISearchRecipes_200_response_recipes_inner_nutrition() {
    this->initializeModel();
}

OAISearchRecipes_200_response_recipes_inner_nutrition::~OAISearchRecipes_200_response_recipes_inner_nutrition() {}

void OAISearchRecipes_200_response_recipes_inner_nutrition::initializeModel() {

    m_nutrients_isSet = false;
    m_nutrients_isValid = false;
}

void OAISearchRecipes_200_response_recipes_inner_nutrition::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchRecipes_200_response_recipes_inner_nutrition::fromJsonObject(QJsonObject json) {

    m_nutrients_isValid = ::OpenAPI::fromJsonValue(m_nutrients, json[QString("nutrients")]);
    m_nutrients_isSet = !json[QString("nutrients")].isNull() && m_nutrients_isValid;
}

QString OAISearchRecipes_200_response_recipes_inner_nutrition::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchRecipes_200_response_recipes_inner_nutrition::asJsonObject() const {
    QJsonObject obj;
    if (m_nutrients.size() > 0) {
        obj.insert(QString("nutrients"), ::OpenAPI::toJsonValue(m_nutrients));
    }
    return obj;
}

QList<OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner> OAISearchRecipes_200_response_recipes_inner_nutrition::getNutrients() const {
    return m_nutrients;
}
void OAISearchRecipes_200_response_recipes_inner_nutrition::setNutrients(const QList<OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner> &nutrients) {
    m_nutrients = nutrients;
    m_nutrients_isSet = true;
}

bool OAISearchRecipes_200_response_recipes_inner_nutrition::is_nutrients_Set() const{
    return m_nutrients_isSet;
}

bool OAISearchRecipes_200_response_recipes_inner_nutrition::is_nutrients_Valid() const{
    return m_nutrients_isValid;
}

bool OAISearchRecipes_200_response_recipes_inner_nutrition::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_nutrients.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchRecipes_200_response_recipes_inner_nutrition::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
