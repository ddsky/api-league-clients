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

#include "OAISearchRestaurantsAPI_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchRestaurantsAPI_200_response::OAISearchRestaurantsAPI_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchRestaurantsAPI_200_response::OAISearchRestaurantsAPI_200_response() {
    this->initializeModel();
}

OAISearchRestaurantsAPI_200_response::~OAISearchRestaurantsAPI_200_response() {}

void OAISearchRestaurantsAPI_200_response::initializeModel() {

    m_restaurants_isSet = false;
    m_restaurants_isValid = false;
}

void OAISearchRestaurantsAPI_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchRestaurantsAPI_200_response::fromJsonObject(QJsonObject json) {

    m_restaurants_isValid = ::OpenAPI::fromJsonValue(m_restaurants, json[QString("restaurants")]);
    m_restaurants_isSet = !json[QString("restaurants")].isNull() && m_restaurants_isValid;
}

QString OAISearchRestaurantsAPI_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchRestaurantsAPI_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_restaurants.size() > 0) {
        obj.insert(QString("restaurants"), ::OpenAPI::toJsonValue(m_restaurants));
    }
    return obj;
}

QList<OAISearchRestaurantsAPI_200_response_restaurants_inner> OAISearchRestaurantsAPI_200_response::getRestaurants() const {
    return m_restaurants;
}
void OAISearchRestaurantsAPI_200_response::setRestaurants(const QList<OAISearchRestaurantsAPI_200_response_restaurants_inner> &restaurants) {
    m_restaurants = restaurants;
    m_restaurants_isSet = true;
}

bool OAISearchRestaurantsAPI_200_response::is_restaurants_Set() const{
    return m_restaurants_isSet;
}

bool OAISearchRestaurantsAPI_200_response::is_restaurants_Valid() const{
    return m_restaurants_isValid;
}

bool OAISearchRestaurantsAPI_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_restaurants.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchRestaurantsAPI_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
