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

#include "OAISearchWebAPI_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchWebAPI_200_response::OAISearchWebAPI_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchWebAPI_200_response::OAISearchWebAPI_200_response() {
    this->initializeModel();
}

OAISearchWebAPI_200_response::~OAISearchWebAPI_200_response() {}

void OAISearchWebAPI_200_response::initializeModel() {

    m_results_isSet = false;
    m_results_isValid = false;
}

void OAISearchWebAPI_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchWebAPI_200_response::fromJsonObject(QJsonObject json) {

    m_results_isValid = ::OpenAPI::fromJsonValue(m_results, json[QString("results")]);
    m_results_isSet = !json[QString("results")].isNull() && m_results_isValid;
}

QString OAISearchWebAPI_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchWebAPI_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_results.size() > 0) {
        obj.insert(QString("results"), ::OpenAPI::toJsonValue(m_results));
    }
    return obj;
}

QList<OAISearchWebAPI_200_response_results_inner> OAISearchWebAPI_200_response::getResults() const {
    return m_results;
}
void OAISearchWebAPI_200_response::setResults(const QList<OAISearchWebAPI_200_response_results_inner> &results) {
    m_results = results;
    m_results_isSet = true;
}

bool OAISearchWebAPI_200_response::is_results_Set() const{
    return m_results_isSet;
}

bool OAISearchWebAPI_200_response::is_results_Valid() const{
    return m_results_isValid;
}

bool OAISearchWebAPI_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_results.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchWebAPI_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
