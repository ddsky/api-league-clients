/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIExtractPublishDate_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIExtractPublishDate_200_response::OAIExtractPublishDate_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIExtractPublishDate_200_response::OAIExtractPublishDate_200_response() {
    this->initializeModel();
}

OAIExtractPublishDate_200_response::~OAIExtractPublishDate_200_response() {}

void OAIExtractPublishDate_200_response::initializeModel() {

    m_publish_date_isSet = false;
    m_publish_date_isValid = false;
}

void OAIExtractPublishDate_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIExtractPublishDate_200_response::fromJsonObject(QJsonObject json) {

    m_publish_date_isValid = ::OpenAPI::fromJsonValue(m_publish_date, json[QString("publish_date")]);
    m_publish_date_isSet = !json[QString("publish_date")].isNull() && m_publish_date_isValid;
}

QString OAIExtractPublishDate_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIExtractPublishDate_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_publish_date_isSet) {
        obj.insert(QString("publish_date"), ::OpenAPI::toJsonValue(m_publish_date));
    }
    return obj;
}

QString OAIExtractPublishDate_200_response::getPublishDate() const {
    return m_publish_date;
}
void OAIExtractPublishDate_200_response::setPublishDate(const QString &publish_date) {
    m_publish_date = publish_date;
    m_publish_date_isSet = true;
}

bool OAIExtractPublishDate_200_response::is_publish_date_Set() const{
    return m_publish_date_isSet;
}

bool OAIExtractPublishDate_200_response::is_publish_date_Valid() const{
    return m_publish_date_isValid;
}

bool OAIExtractPublishDate_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_publish_date_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIExtractPublishDate_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
