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

#include "OAIExtractDates_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIExtractDates_200_response::OAIExtractDates_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIExtractDates_200_response::OAIExtractDates_200_response() {
    this->initializeModel();
}

OAIExtractDates_200_response::~OAIExtractDates_200_response() {}

void OAIExtractDates_200_response::initializeModel() {

    m_dates_isSet = false;
    m_dates_isValid = false;
}

void OAIExtractDates_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIExtractDates_200_response::fromJsonObject(QJsonObject json) {

    m_dates_isValid = ::OpenAPI::fromJsonValue(m_dates, json[QString("dates")]);
    m_dates_isSet = !json[QString("dates")].isNull() && m_dates_isValid;
}

QString OAIExtractDates_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIExtractDates_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_dates.size() > 0) {
        obj.insert(QString("dates"), ::OpenAPI::toJsonValue(m_dates));
    }
    return obj;
}

QList<OAIExtractDates_200_response_dates_inner> OAIExtractDates_200_response::getDates() const {
    return m_dates;
}
void OAIExtractDates_200_response::setDates(const QList<OAIExtractDates_200_response_dates_inner> &dates) {
    m_dates = dates;
    m_dates_isSet = true;
}

bool OAIExtractDates_200_response::is_dates_Set() const{
    return m_dates_isSet;
}

bool OAIExtractDates_200_response::is_dates_Valid() const{
    return m_dates_isValid;
}

bool OAIExtractDates_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_dates.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIExtractDates_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
