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

#include "OAISearchWeb_200_response_results_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchWeb_200_response_results_inner::OAISearchWeb_200_response_results_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchWeb_200_response_results_inner::OAISearchWeb_200_response_results_inner() {
    this->initializeModel();
}

OAISearchWeb_200_response_results_inner::~OAISearchWeb_200_response_results_inner() {}

void OAISearchWeb_200_response_results_inner::initializeModel() {

    m_title_isSet = false;
    m_title_isValid = false;

    m_summary_isSet = false;
    m_summary_isValid = false;

    m_url_isSet = false;
    m_url_isValid = false;
}

void OAISearchWeb_200_response_results_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchWeb_200_response_results_inner::fromJsonObject(QJsonObject json) {

    m_title_isValid = ::OpenAPI::fromJsonValue(m_title, json[QString("title")]);
    m_title_isSet = !json[QString("title")].isNull() && m_title_isValid;

    m_summary_isValid = ::OpenAPI::fromJsonValue(m_summary, json[QString("summary")]);
    m_summary_isSet = !json[QString("summary")].isNull() && m_summary_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(m_url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;
}

QString OAISearchWeb_200_response_results_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchWeb_200_response_results_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_title_isSet) {
        obj.insert(QString("title"), ::OpenAPI::toJsonValue(m_title));
    }
    if (m_summary_isSet) {
        obj.insert(QString("summary"), ::OpenAPI::toJsonValue(m_summary));
    }
    if (m_url_isSet) {
        obj.insert(QString("url"), ::OpenAPI::toJsonValue(m_url));
    }
    return obj;
}

QString OAISearchWeb_200_response_results_inner::getTitle() const {
    return m_title;
}
void OAISearchWeb_200_response_results_inner::setTitle(const QString &title) {
    m_title = title;
    m_title_isSet = true;
}

bool OAISearchWeb_200_response_results_inner::is_title_Set() const{
    return m_title_isSet;
}

bool OAISearchWeb_200_response_results_inner::is_title_Valid() const{
    return m_title_isValid;
}

QString OAISearchWeb_200_response_results_inner::getSummary() const {
    return m_summary;
}
void OAISearchWeb_200_response_results_inner::setSummary(const QString &summary) {
    m_summary = summary;
    m_summary_isSet = true;
}

bool OAISearchWeb_200_response_results_inner::is_summary_Set() const{
    return m_summary_isSet;
}

bool OAISearchWeb_200_response_results_inner::is_summary_Valid() const{
    return m_summary_isValid;
}

QString OAISearchWeb_200_response_results_inner::getUrl() const {
    return m_url;
}
void OAISearchWeb_200_response_results_inner::setUrl(const QString &url) {
    m_url = url;
    m_url_isSet = true;
}

bool OAISearchWeb_200_response_results_inner::is_url_Set() const{
    return m_url_isSet;
}

bool OAISearchWeb_200_response_results_inner::is_url_Valid() const{
    return m_url_isValid;
}

bool OAISearchWeb_200_response_results_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_title_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_summary_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_url_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchWeb_200_response_results_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
