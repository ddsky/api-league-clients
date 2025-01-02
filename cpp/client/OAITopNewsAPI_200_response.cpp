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

#include "OAITopNewsAPI_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAITopNewsAPI_200_response::OAITopNewsAPI_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAITopNewsAPI_200_response::OAITopNewsAPI_200_response() {
    this->initializeModel();
}

OAITopNewsAPI_200_response::~OAITopNewsAPI_200_response() {}

void OAITopNewsAPI_200_response::initializeModel() {

    m_top_news_isSet = false;
    m_top_news_isValid = false;

    m_language_isSet = false;
    m_language_isValid = false;

    m_country_isSet = false;
    m_country_isValid = false;
}

void OAITopNewsAPI_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAITopNewsAPI_200_response::fromJsonObject(QJsonObject json) {

    m_top_news_isValid = ::OpenAPI::fromJsonValue(m_top_news, json[QString("top_news")]);
    m_top_news_isSet = !json[QString("top_news")].isNull() && m_top_news_isValid;

    m_language_isValid = ::OpenAPI::fromJsonValue(m_language, json[QString("language")]);
    m_language_isSet = !json[QString("language")].isNull() && m_language_isValid;

    m_country_isValid = ::OpenAPI::fromJsonValue(m_country, json[QString("country")]);
    m_country_isSet = !json[QString("country")].isNull() && m_country_isValid;
}

QString OAITopNewsAPI_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAITopNewsAPI_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_top_news.size() > 0) {
        obj.insert(QString("top_news"), ::OpenAPI::toJsonValue(m_top_news));
    }
    if (m_language_isSet) {
        obj.insert(QString("language"), ::OpenAPI::toJsonValue(m_language));
    }
    if (m_country_isSet) {
        obj.insert(QString("country"), ::OpenAPI::toJsonValue(m_country));
    }
    return obj;
}

QList<OAITopNewsAPI_200_response_top_news_inner> OAITopNewsAPI_200_response::getTopNews() const {
    return m_top_news;
}
void OAITopNewsAPI_200_response::setTopNews(const QList<OAITopNewsAPI_200_response_top_news_inner> &top_news) {
    m_top_news = top_news;
    m_top_news_isSet = true;
}

bool OAITopNewsAPI_200_response::is_top_news_Set() const{
    return m_top_news_isSet;
}

bool OAITopNewsAPI_200_response::is_top_news_Valid() const{
    return m_top_news_isValid;
}

QString OAITopNewsAPI_200_response::getLanguage() const {
    return m_language;
}
void OAITopNewsAPI_200_response::setLanguage(const QString &language) {
    m_language = language;
    m_language_isSet = true;
}

bool OAITopNewsAPI_200_response::is_language_Set() const{
    return m_language_isSet;
}

bool OAITopNewsAPI_200_response::is_language_Valid() const{
    return m_language_isValid;
}

QString OAITopNewsAPI_200_response::getCountry() const {
    return m_country;
}
void OAITopNewsAPI_200_response::setCountry(const QString &country) {
    m_country = country;
    m_country_isSet = true;
}

bool OAITopNewsAPI_200_response::is_country_Set() const{
    return m_country_isSet;
}

bool OAITopNewsAPI_200_response::is_country_Valid() const{
    return m_country_isValid;
}

bool OAITopNewsAPI_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_top_news.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_language_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_country_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAITopNewsAPI_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
