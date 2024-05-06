/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAISearchRecipes_200_response_recipes_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchRecipes_200_response_recipes_inner::OAISearchRecipes_200_response_recipes_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchRecipes_200_response_recipes_inner::OAISearchRecipes_200_response_recipes_inner() {
    this->initializeModel();
}

OAISearchRecipes_200_response_recipes_inner::~OAISearchRecipes_200_response_recipes_inner() {}

void OAISearchRecipes_200_response_recipes_inner::initializeModel() {

    m_images_isSet = false;
    m_images_isValid = false;

    m_nutrition_isSet = false;
    m_nutrition_isValid = false;

    m_id_isSet = false;
    m_id_isValid = false;

    m_title_isSet = false;
    m_title_isValid = false;
}

void OAISearchRecipes_200_response_recipes_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchRecipes_200_response_recipes_inner::fromJsonObject(QJsonObject json) {

    m_images_isValid = ::OpenAPI::fromJsonValue(m_images, json[QString("images")]);
    m_images_isSet = !json[QString("images")].isNull() && m_images_isValid;

    m_nutrition_isValid = ::OpenAPI::fromJsonValue(m_nutrition, json[QString("nutrition")]);
    m_nutrition_isSet = !json[QString("nutrition")].isNull() && m_nutrition_isValid;

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_title_isValid = ::OpenAPI::fromJsonValue(m_title, json[QString("title")]);
    m_title_isSet = !json[QString("title")].isNull() && m_title_isValid;
}

QString OAISearchRecipes_200_response_recipes_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchRecipes_200_response_recipes_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_images.size() > 0) {
        obj.insert(QString("images"), ::OpenAPI::toJsonValue(m_images));
    }
    if (m_nutrition.isSet()) {
        obj.insert(QString("nutrition"), ::OpenAPI::toJsonValue(m_nutrition));
    }
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    if (m_title_isSet) {
        obj.insert(QString("title"), ::OpenAPI::toJsonValue(m_title));
    }
    return obj;
}

QList<QString> OAISearchRecipes_200_response_recipes_inner::getImages() const {
    return m_images;
}
void OAISearchRecipes_200_response_recipes_inner::setImages(const QList<QString> &images) {
    m_images = images;
    m_images_isSet = true;
}

bool OAISearchRecipes_200_response_recipes_inner::is_images_Set() const{
    return m_images_isSet;
}

bool OAISearchRecipes_200_response_recipes_inner::is_images_Valid() const{
    return m_images_isValid;
}

OAISearchRecipes_200_response_recipes_inner_nutrition OAISearchRecipes_200_response_recipes_inner::getNutrition() const {
    return m_nutrition;
}
void OAISearchRecipes_200_response_recipes_inner::setNutrition(const OAISearchRecipes_200_response_recipes_inner_nutrition &nutrition) {
    m_nutrition = nutrition;
    m_nutrition_isSet = true;
}

bool OAISearchRecipes_200_response_recipes_inner::is_nutrition_Set() const{
    return m_nutrition_isSet;
}

bool OAISearchRecipes_200_response_recipes_inner::is_nutrition_Valid() const{
    return m_nutrition_isValid;
}

qint32 OAISearchRecipes_200_response_recipes_inner::getId() const {
    return m_id;
}
void OAISearchRecipes_200_response_recipes_inner::setId(const qint32 &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAISearchRecipes_200_response_recipes_inner::is_id_Set() const{
    return m_id_isSet;
}

bool OAISearchRecipes_200_response_recipes_inner::is_id_Valid() const{
    return m_id_isValid;
}

QString OAISearchRecipes_200_response_recipes_inner::getTitle() const {
    return m_title;
}
void OAISearchRecipes_200_response_recipes_inner::setTitle(const QString &title) {
    m_title = title;
    m_title_isSet = true;
}

bool OAISearchRecipes_200_response_recipes_inner::is_title_Set() const{
    return m_title_isSet;
}

bool OAISearchRecipes_200_response_recipes_inner::is_title_Valid() const{
    return m_title_isValid;
}

bool OAISearchRecipes_200_response_recipes_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_images.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_nutrition.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_title_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchRecipes_200_response_recipes_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
