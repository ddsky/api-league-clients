/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAISearchRestaurants_200_response_restaurants_inner_address.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchRestaurants_200_response_restaurants_inner_address::OAISearchRestaurants_200_response_restaurants_inner_address(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchRestaurants_200_response_restaurants_inner_address::OAISearchRestaurants_200_response_restaurants_inner_address() {
    this->initializeModel();
}

OAISearchRestaurants_200_response_restaurants_inner_address::~OAISearchRestaurants_200_response_restaurants_inner_address() {}

void OAISearchRestaurants_200_response_restaurants_inner_address::initializeModel() {

    m_zipcode_isSet = false;
    m_zipcode_isValid = false;

    m_country_isSet = false;
    m_country_isValid = false;

    m_city_isSet = false;
    m_city_isValid = false;

    m_latitude_isSet = false;
    m_latitude_isValid = false;

    m_lon_isSet = false;
    m_lon_isValid = false;

    m_street_addr_2_isSet = false;
    m_street_addr_2_isValid = false;

    m_state_isSet = false;
    m_state_isValid = false;

    m_street_addr_isSet = false;
    m_street_addr_isValid = false;

    m_lat_isSet = false;
    m_lat_isValid = false;

    m_longitude_isSet = false;
    m_longitude_isValid = false;
}

void OAISearchRestaurants_200_response_restaurants_inner_address::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchRestaurants_200_response_restaurants_inner_address::fromJsonObject(QJsonObject json) {

    m_zipcode_isValid = ::OpenAPI::fromJsonValue(m_zipcode, json[QString("zipcode")]);
    m_zipcode_isSet = !json[QString("zipcode")].isNull() && m_zipcode_isValid;

    m_country_isValid = ::OpenAPI::fromJsonValue(m_country, json[QString("country")]);
    m_country_isSet = !json[QString("country")].isNull() && m_country_isValid;

    m_city_isValid = ::OpenAPI::fromJsonValue(m_city, json[QString("city")]);
    m_city_isSet = !json[QString("city")].isNull() && m_city_isValid;

    m_latitude_isValid = ::OpenAPI::fromJsonValue(m_latitude, json[QString("latitude")]);
    m_latitude_isSet = !json[QString("latitude")].isNull() && m_latitude_isValid;

    m_lon_isValid = ::OpenAPI::fromJsonValue(m_lon, json[QString("lon")]);
    m_lon_isSet = !json[QString("lon")].isNull() && m_lon_isValid;

    m_street_addr_2_isValid = ::OpenAPI::fromJsonValue(m_street_addr_2, json[QString("street_addr_2")]);
    m_street_addr_2_isSet = !json[QString("street_addr_2")].isNull() && m_street_addr_2_isValid;

    m_state_isValid = ::OpenAPI::fromJsonValue(m_state, json[QString("state")]);
    m_state_isSet = !json[QString("state")].isNull() && m_state_isValid;

    m_street_addr_isValid = ::OpenAPI::fromJsonValue(m_street_addr, json[QString("street_addr")]);
    m_street_addr_isSet = !json[QString("street_addr")].isNull() && m_street_addr_isValid;

    m_lat_isValid = ::OpenAPI::fromJsonValue(m_lat, json[QString("lat")]);
    m_lat_isSet = !json[QString("lat")].isNull() && m_lat_isValid;

    m_longitude_isValid = ::OpenAPI::fromJsonValue(m_longitude, json[QString("longitude")]);
    m_longitude_isSet = !json[QString("longitude")].isNull() && m_longitude_isValid;
}

QString OAISearchRestaurants_200_response_restaurants_inner_address::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchRestaurants_200_response_restaurants_inner_address::asJsonObject() const {
    QJsonObject obj;
    if (m_zipcode_isSet) {
        obj.insert(QString("zipcode"), ::OpenAPI::toJsonValue(m_zipcode));
    }
    if (m_country_isSet) {
        obj.insert(QString("country"), ::OpenAPI::toJsonValue(m_country));
    }
    if (m_city_isSet) {
        obj.insert(QString("city"), ::OpenAPI::toJsonValue(m_city));
    }
    if (m_latitude_isSet) {
        obj.insert(QString("latitude"), ::OpenAPI::toJsonValue(m_latitude));
    }
    if (m_lon_isSet) {
        obj.insert(QString("lon"), ::OpenAPI::toJsonValue(m_lon));
    }
    if (m_street_addr_2_isSet) {
        obj.insert(QString("street_addr_2"), ::OpenAPI::toJsonValue(m_street_addr_2));
    }
    if (m_state_isSet) {
        obj.insert(QString("state"), ::OpenAPI::toJsonValue(m_state));
    }
    if (m_street_addr_isSet) {
        obj.insert(QString("street_addr"), ::OpenAPI::toJsonValue(m_street_addr));
    }
    if (m_lat_isSet) {
        obj.insert(QString("lat"), ::OpenAPI::toJsonValue(m_lat));
    }
    if (m_longitude_isSet) {
        obj.insert(QString("longitude"), ::OpenAPI::toJsonValue(m_longitude));
    }
    return obj;
}

QString OAISearchRestaurants_200_response_restaurants_inner_address::getZipcode() const {
    return m_zipcode;
}
void OAISearchRestaurants_200_response_restaurants_inner_address::setZipcode(const QString &zipcode) {
    m_zipcode = zipcode;
    m_zipcode_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_zipcode_Set() const{
    return m_zipcode_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_zipcode_Valid() const{
    return m_zipcode_isValid;
}

QString OAISearchRestaurants_200_response_restaurants_inner_address::getCountry() const {
    return m_country;
}
void OAISearchRestaurants_200_response_restaurants_inner_address::setCountry(const QString &country) {
    m_country = country;
    m_country_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_country_Set() const{
    return m_country_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_country_Valid() const{
    return m_country_isValid;
}

QString OAISearchRestaurants_200_response_restaurants_inner_address::getCity() const {
    return m_city;
}
void OAISearchRestaurants_200_response_restaurants_inner_address::setCity(const QString &city) {
    m_city = city;
    m_city_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_city_Set() const{
    return m_city_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_city_Valid() const{
    return m_city_isValid;
}

double OAISearchRestaurants_200_response_restaurants_inner_address::getLatitude() const {
    return m_latitude;
}
void OAISearchRestaurants_200_response_restaurants_inner_address::setLatitude(const double &latitude) {
    m_latitude = latitude;
    m_latitude_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_latitude_Set() const{
    return m_latitude_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_latitude_Valid() const{
    return m_latitude_isValid;
}

double OAISearchRestaurants_200_response_restaurants_inner_address::getLon() const {
    return m_lon;
}
void OAISearchRestaurants_200_response_restaurants_inner_address::setLon(const double &lon) {
    m_lon = lon;
    m_lon_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_lon_Set() const{
    return m_lon_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_lon_Valid() const{
    return m_lon_isValid;
}

QString OAISearchRestaurants_200_response_restaurants_inner_address::getStreetAddr2() const {
    return m_street_addr_2;
}
void OAISearchRestaurants_200_response_restaurants_inner_address::setStreetAddr2(const QString &street_addr_2) {
    m_street_addr_2 = street_addr_2;
    m_street_addr_2_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_street_addr_2_Set() const{
    return m_street_addr_2_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_street_addr_2_Valid() const{
    return m_street_addr_2_isValid;
}

QString OAISearchRestaurants_200_response_restaurants_inner_address::getState() const {
    return m_state;
}
void OAISearchRestaurants_200_response_restaurants_inner_address::setState(const QString &state) {
    m_state = state;
    m_state_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_state_Set() const{
    return m_state_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_state_Valid() const{
    return m_state_isValid;
}

QString OAISearchRestaurants_200_response_restaurants_inner_address::getStreetAddr() const {
    return m_street_addr;
}
void OAISearchRestaurants_200_response_restaurants_inner_address::setStreetAddr(const QString &street_addr) {
    m_street_addr = street_addr;
    m_street_addr_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_street_addr_Set() const{
    return m_street_addr_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_street_addr_Valid() const{
    return m_street_addr_isValid;
}

double OAISearchRestaurants_200_response_restaurants_inner_address::getLat() const {
    return m_lat;
}
void OAISearchRestaurants_200_response_restaurants_inner_address::setLat(const double &lat) {
    m_lat = lat;
    m_lat_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_lat_Set() const{
    return m_lat_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_lat_Valid() const{
    return m_lat_isValid;
}

double OAISearchRestaurants_200_response_restaurants_inner_address::getLongitude() const {
    return m_longitude;
}
void OAISearchRestaurants_200_response_restaurants_inner_address::setLongitude(const double &longitude) {
    m_longitude = longitude;
    m_longitude_isSet = true;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_longitude_Set() const{
    return m_longitude_isSet;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::is_longitude_Valid() const{
    return m_longitude_isValid;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_zipcode_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_country_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_city_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_latitude_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_lon_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_street_addr_2_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_state_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_street_addr_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_lat_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_longitude_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchRestaurants_200_response_restaurants_inner_address::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
