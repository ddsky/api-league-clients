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

#include "OAIExtractPublishDateAPI_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIExtractPublishDateAPI_200_response::OAIExtractPublishDateAPI_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIExtractPublishDateAPI_200_response::OAIExtractPublishDateAPI_200_response() {
    this->initializeModel();
}

OAIExtractPublishDateAPI_200_response::~OAIExtractPublishDateAPI_200_response() {}

void OAIExtractPublishDateAPI_200_response::initializeModel() {

    m_publish_date_isSet = false;
    m_publish_date_isValid = false;
}

void OAIExtractPublishDateAPI_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIExtractPublishDateAPI_200_response::fromJsonObject(QJsonObject json) {

    m_publish_date_isValid = ::OpenAPI::fromJsonValue(m_publish_date, json[QString("publish_date")]);
    m_publish_date_isSet = !json[QString("publish_date")].isNull() && m_publish_date_isValid;
}

QString OAIExtractPublishDateAPI_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIExtractPublishDateAPI_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_publish_date_isSet) {
        obj.insert(QString("publish_date"), ::OpenAPI::toJsonValue(m_publish_date));
    }
    return obj;
}

QString OAIExtractPublishDateAPI_200_response::getPublishDate() const {
    return m_publish_date;
}
void OAIExtractPublishDateAPI_200_response::setPublishDate(const QString &publish_date) {
    m_publish_date = publish_date;
    m_publish_date_isSet = true;
}

bool OAIExtractPublishDateAPI_200_response::is_publish_date_Set() const{
    return m_publish_date_isSet;
}

bool OAIExtractPublishDateAPI_200_response::is_publish_date_Valid() const{
    return m_publish_date_isValid;
}

bool OAIExtractPublishDateAPI_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_publish_date_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIExtractPublishDateAPI_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
