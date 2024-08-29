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

#include "OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational() {
    this->initializeModel();
}

OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::~OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational() {}

void OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::initializeModel() {

    m_sunday_isSet = false;
    m_sunday_isValid = false;

    m_saturday_isSet = false;
    m_saturday_isValid = false;

    m_tuesday_isSet = false;
    m_tuesday_isValid = false;

    m_thursday_isSet = false;
    m_thursday_isValid = false;

    m_friday_isSet = false;
    m_friday_isValid = false;

    m_wednesday_isSet = false;
    m_wednesday_isValid = false;

    m_monday_isSet = false;
    m_monday_isValid = false;
}

void OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::fromJsonObject(QJsonObject json) {

    m_sunday_isValid = ::OpenAPI::fromJsonValue(m_sunday, json[QString("sunday")]);
    m_sunday_isSet = !json[QString("sunday")].isNull() && m_sunday_isValid;

    m_saturday_isValid = ::OpenAPI::fromJsonValue(m_saturday, json[QString("saturday")]);
    m_saturday_isSet = !json[QString("saturday")].isNull() && m_saturday_isValid;

    m_tuesday_isValid = ::OpenAPI::fromJsonValue(m_tuesday, json[QString("tuesday")]);
    m_tuesday_isSet = !json[QString("tuesday")].isNull() && m_tuesday_isValid;

    m_thursday_isValid = ::OpenAPI::fromJsonValue(m_thursday, json[QString("thursday")]);
    m_thursday_isSet = !json[QString("thursday")].isNull() && m_thursday_isValid;

    m_friday_isValid = ::OpenAPI::fromJsonValue(m_friday, json[QString("friday")]);
    m_friday_isSet = !json[QString("friday")].isNull() && m_friday_isValid;

    m_wednesday_isValid = ::OpenAPI::fromJsonValue(m_wednesday, json[QString("wednesday")]);
    m_wednesday_isSet = !json[QString("wednesday")].isNull() && m_wednesday_isValid;

    m_monday_isValid = ::OpenAPI::fromJsonValue(m_monday, json[QString("monday")]);
    m_monday_isSet = !json[QString("monday")].isNull() && m_monday_isValid;
}

QString OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::asJsonObject() const {
    QJsonObject obj;
    if (m_sunday_isSet) {
        obj.insert(QString("sunday"), ::OpenAPI::toJsonValue(m_sunday));
    }
    if (m_saturday_isSet) {
        obj.insert(QString("saturday"), ::OpenAPI::toJsonValue(m_saturday));
    }
    if (m_tuesday_isSet) {
        obj.insert(QString("tuesday"), ::OpenAPI::toJsonValue(m_tuesday));
    }
    if (m_thursday_isSet) {
        obj.insert(QString("thursday"), ::OpenAPI::toJsonValue(m_thursday));
    }
    if (m_friday_isSet) {
        obj.insert(QString("friday"), ::OpenAPI::toJsonValue(m_friday));
    }
    if (m_wednesday_isSet) {
        obj.insert(QString("wednesday"), ::OpenAPI::toJsonValue(m_wednesday));
    }
    if (m_monday_isSet) {
        obj.insert(QString("monday"), ::OpenAPI::toJsonValue(m_monday));
    }
    return obj;
}

QString OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::getSunday() const {
    return m_sunday;
}
void OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::setSunday(const QString &sunday) {
    m_sunday = sunday;
    m_sunday_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::is_sunday_Set() const{
    return m_sunday_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::is_sunday_Valid() const{
    return m_sunday_isValid;
}

QString OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::getSaturday() const {
    return m_saturday;
}
void OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::setSaturday(const QString &saturday) {
    m_saturday = saturday;
    m_saturday_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::is_saturday_Set() const{
    return m_saturday_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::is_saturday_Valid() const{
    return m_saturday_isValid;
}

QString OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::getTuesday() const {
    return m_tuesday;
}
void OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::setTuesday(const QString &tuesday) {
    m_tuesday = tuesday;
    m_tuesday_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::is_tuesday_Set() const{
    return m_tuesday_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::is_tuesday_Valid() const{
    return m_tuesday_isValid;
}

QString OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::getThursday() const {
    return m_thursday;
}
void OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::setThursday(const QString &thursday) {
    m_thursday = thursday;
    m_thursday_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::is_thursday_Set() const{
    return m_thursday_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::is_thursday_Valid() const{
    return m_thursday_isValid;
}

QString OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::getFriday() const {
    return m_friday;
}
void OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::setFriday(const QString &friday) {
    m_friday = friday;
    m_friday_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::is_friday_Set() const{
    return m_friday_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::is_friday_Valid() const{
    return m_friday_isValid;
}

QString OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::getWednesday() const {
    return m_wednesday;
}
void OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::setWednesday(const QString &wednesday) {
    m_wednesday = wednesday;
    m_wednesday_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::is_wednesday_Set() const{
    return m_wednesday_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::is_wednesday_Valid() const{
    return m_wednesday_isValid;
}

QString OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::getMonday() const {
    return m_monday;
}
void OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::setMonday(const QString &monday) {
    m_monday = monday;
    m_monday_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::is_monday_Set() const{
    return m_monday_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::is_monday_Valid() const{
    return m_monday_isValid;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_sunday_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_saturday_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_tuesday_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_thursday_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_friday_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_wednesday_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_monday_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
