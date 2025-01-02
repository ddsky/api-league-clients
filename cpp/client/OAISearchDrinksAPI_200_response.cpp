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

#include "OAISearchDrinksAPI_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchDrinksAPI_200_response::OAISearchDrinksAPI_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchDrinksAPI_200_response::OAISearchDrinksAPI_200_response() {
    this->initializeModel();
}

OAISearchDrinksAPI_200_response::~OAISearchDrinksAPI_200_response() {}

void OAISearchDrinksAPI_200_response::initializeModel() {

    m_offset_isSet = false;
    m_offset_isValid = false;

    m_number_isSet = false;
    m_number_isValid = false;

    m_drinks_isSet = false;
    m_drinks_isValid = false;

    m_total_results_isSet = false;
    m_total_results_isValid = false;
}

void OAISearchDrinksAPI_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchDrinksAPI_200_response::fromJsonObject(QJsonObject json) {

    m_offset_isValid = ::OpenAPI::fromJsonValue(m_offset, json[QString("offset")]);
    m_offset_isSet = !json[QString("offset")].isNull() && m_offset_isValid;

    m_number_isValid = ::OpenAPI::fromJsonValue(m_number, json[QString("number")]);
    m_number_isSet = !json[QString("number")].isNull() && m_number_isValid;

    m_drinks_isValid = ::OpenAPI::fromJsonValue(m_drinks, json[QString("drinks")]);
    m_drinks_isSet = !json[QString("drinks")].isNull() && m_drinks_isValid;

    m_total_results_isValid = ::OpenAPI::fromJsonValue(m_total_results, json[QString("total_results")]);
    m_total_results_isSet = !json[QString("total_results")].isNull() && m_total_results_isValid;
}

QString OAISearchDrinksAPI_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchDrinksAPI_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_offset_isSet) {
        obj.insert(QString("offset"), ::OpenAPI::toJsonValue(m_offset));
    }
    if (m_number_isSet) {
        obj.insert(QString("number"), ::OpenAPI::toJsonValue(m_number));
    }
    if (m_drinks.size() > 0) {
        obj.insert(QString("drinks"), ::OpenAPI::toJsonValue(m_drinks));
    }
    if (m_total_results_isSet) {
        obj.insert(QString("total_results"), ::OpenAPI::toJsonValue(m_total_results));
    }
    return obj;
}

qint32 OAISearchDrinksAPI_200_response::getOffset() const {
    return m_offset;
}
void OAISearchDrinksAPI_200_response::setOffset(const qint32 &offset) {
    m_offset = offset;
    m_offset_isSet = true;
}

bool OAISearchDrinksAPI_200_response::is_offset_Set() const{
    return m_offset_isSet;
}

bool OAISearchDrinksAPI_200_response::is_offset_Valid() const{
    return m_offset_isValid;
}

qint32 OAISearchDrinksAPI_200_response::getNumber() const {
    return m_number;
}
void OAISearchDrinksAPI_200_response::setNumber(const qint32 &number) {
    m_number = number;
    m_number_isSet = true;
}

bool OAISearchDrinksAPI_200_response::is_number_Set() const{
    return m_number_isSet;
}

bool OAISearchDrinksAPI_200_response::is_number_Valid() const{
    return m_number_isValid;
}

QList<OAISearchDrinksAPI_200_response_drinks_inner> OAISearchDrinksAPI_200_response::getDrinks() const {
    return m_drinks;
}
void OAISearchDrinksAPI_200_response::setDrinks(const QList<OAISearchDrinksAPI_200_response_drinks_inner> &drinks) {
    m_drinks = drinks;
    m_drinks_isSet = true;
}

bool OAISearchDrinksAPI_200_response::is_drinks_Set() const{
    return m_drinks_isSet;
}

bool OAISearchDrinksAPI_200_response::is_drinks_Valid() const{
    return m_drinks_isValid;
}

qint32 OAISearchDrinksAPI_200_response::getTotalResults() const {
    return m_total_results;
}
void OAISearchDrinksAPI_200_response::setTotalResults(const qint32 &total_results) {
    m_total_results = total_results;
    m_total_results_isSet = true;
}

bool OAISearchDrinksAPI_200_response::is_total_results_Set() const{
    return m_total_results_isSet;
}

bool OAISearchDrinksAPI_200_response::is_total_results_Valid() const{
    return m_total_results_isValid;
}

bool OAISearchDrinksAPI_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_offset_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_number_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_drinks.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_total_results_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchDrinksAPI_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI