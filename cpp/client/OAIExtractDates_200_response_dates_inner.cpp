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

#include "OAIExtractDates_200_response_dates_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIExtractDates_200_response_dates_inner::OAIExtractDates_200_response_dates_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIExtractDates_200_response_dates_inner::OAIExtractDates_200_response_dates_inner() {
    this->initializeModel();
}

OAIExtractDates_200_response_dates_inner::~OAIExtractDates_200_response_dates_inner() {}

void OAIExtractDates_200_response_dates_inner::initializeModel() {

    m_start_position_isSet = false;
    m_start_position_isValid = false;

    m_date_isSet = false;
    m_date_isValid = false;

    m_normalized_date_isSet = false;
    m_normalized_date_isValid = false;

    m_tag_isSet = false;
    m_tag_isValid = false;

    m_end_position_isSet = false;
    m_end_position_isValid = false;
}

void OAIExtractDates_200_response_dates_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIExtractDates_200_response_dates_inner::fromJsonObject(QJsonObject json) {

    m_start_position_isValid = ::OpenAPI::fromJsonValue(m_start_position, json[QString("start_position")]);
    m_start_position_isSet = !json[QString("start_position")].isNull() && m_start_position_isValid;

    m_date_isValid = ::OpenAPI::fromJsonValue(m_date, json[QString("date")]);
    m_date_isSet = !json[QString("date")].isNull() && m_date_isValid;

    m_normalized_date_isValid = ::OpenAPI::fromJsonValue(m_normalized_date, json[QString("normalized_date")]);
    m_normalized_date_isSet = !json[QString("normalized_date")].isNull() && m_normalized_date_isValid;

    m_tag_isValid = ::OpenAPI::fromJsonValue(m_tag, json[QString("tag")]);
    m_tag_isSet = !json[QString("tag")].isNull() && m_tag_isValid;

    m_end_position_isValid = ::OpenAPI::fromJsonValue(m_end_position, json[QString("end_position")]);
    m_end_position_isSet = !json[QString("end_position")].isNull() && m_end_position_isValid;
}

QString OAIExtractDates_200_response_dates_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIExtractDates_200_response_dates_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_start_position_isSet) {
        obj.insert(QString("start_position"), ::OpenAPI::toJsonValue(m_start_position));
    }
    if (m_date_isSet) {
        obj.insert(QString("date"), ::OpenAPI::toJsonValue(m_date));
    }
    if (m_normalized_date_isSet) {
        obj.insert(QString("normalized_date"), ::OpenAPI::toJsonValue(m_normalized_date));
    }
    if (m_tag_isSet) {
        obj.insert(QString("tag"), ::OpenAPI::toJsonValue(m_tag));
    }
    if (m_end_position_isSet) {
        obj.insert(QString("end_position"), ::OpenAPI::toJsonValue(m_end_position));
    }
    return obj;
}

qint32 OAIExtractDates_200_response_dates_inner::getStartPosition() const {
    return m_start_position;
}
void OAIExtractDates_200_response_dates_inner::setStartPosition(const qint32 &start_position) {
    m_start_position = start_position;
    m_start_position_isSet = true;
}

bool OAIExtractDates_200_response_dates_inner::is_start_position_Set() const{
    return m_start_position_isSet;
}

bool OAIExtractDates_200_response_dates_inner::is_start_position_Valid() const{
    return m_start_position_isValid;
}

QString OAIExtractDates_200_response_dates_inner::getDate() const {
    return m_date;
}
void OAIExtractDates_200_response_dates_inner::setDate(const QString &date) {
    m_date = date;
    m_date_isSet = true;
}

bool OAIExtractDates_200_response_dates_inner::is_date_Set() const{
    return m_date_isSet;
}

bool OAIExtractDates_200_response_dates_inner::is_date_Valid() const{
    return m_date_isValid;
}

double OAIExtractDates_200_response_dates_inner::getNormalizedDate() const {
    return m_normalized_date;
}
void OAIExtractDates_200_response_dates_inner::setNormalizedDate(const double &normalized_date) {
    m_normalized_date = normalized_date;
    m_normalized_date_isSet = true;
}

bool OAIExtractDates_200_response_dates_inner::is_normalized_date_Set() const{
    return m_normalized_date_isSet;
}

bool OAIExtractDates_200_response_dates_inner::is_normalized_date_Valid() const{
    return m_normalized_date_isValid;
}

QString OAIExtractDates_200_response_dates_inner::getTag() const {
    return m_tag;
}
void OAIExtractDates_200_response_dates_inner::setTag(const QString &tag) {
    m_tag = tag;
    m_tag_isSet = true;
}

bool OAIExtractDates_200_response_dates_inner::is_tag_Set() const{
    return m_tag_isSet;
}

bool OAIExtractDates_200_response_dates_inner::is_tag_Valid() const{
    return m_tag_isValid;
}

qint32 OAIExtractDates_200_response_dates_inner::getEndPosition() const {
    return m_end_position;
}
void OAIExtractDates_200_response_dates_inner::setEndPosition(const qint32 &end_position) {
    m_end_position = end_position;
    m_end_position_isSet = true;
}

bool OAIExtractDates_200_response_dates_inner::is_end_position_Set() const{
    return m_end_position_isSet;
}

bool OAIExtractDates_200_response_dates_inner::is_end_position_Valid() const{
    return m_end_position_isValid;
}

bool OAIExtractDates_200_response_dates_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_start_position_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_date_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_normalized_date_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_tag_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_end_position_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIExtractDates_200_response_dates_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
