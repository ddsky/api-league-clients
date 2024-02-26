/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIInline_response_200_10.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIInline_response_200_10::OAIInline_response_200_10(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIInline_response_200_10::OAIInline_response_200_10() {
    this->initializeModel();
}

OAIInline_response_200_10::~OAIInline_response_200_10() {}

void OAIInline_response_200_10::initializeModel() {

    m_author_isSet = false;
    m_author_isValid = false;

    m_quote_isSet = false;
    m_quote_isValid = false;
}

void OAIInline_response_200_10::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIInline_response_200_10::fromJsonObject(QJsonObject json) {

    m_author_isValid = ::OpenAPI::fromJsonValue(author, json[QString("author")]);
    m_author_isSet = !json[QString("author")].isNull() && m_author_isValid;

    m_quote_isValid = ::OpenAPI::fromJsonValue(quote, json[QString("quote")]);
    m_quote_isSet = !json[QString("quote")].isNull() && m_quote_isValid;
}

QString OAIInline_response_200_10::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIInline_response_200_10::asJsonObject() const {
    QJsonObject obj;
    if (m_author_isSet) {
        obj.insert(QString("author"), ::OpenAPI::toJsonValue(author));
    }
    if (m_quote_isSet) {
        obj.insert(QString("quote"), ::OpenAPI::toJsonValue(quote));
    }
    return obj;
}

QString OAIInline_response_200_10::getAuthor() const {
    return author;
}
void OAIInline_response_200_10::setAuthor(const QString &author) {
    this->author = author;
    this->m_author_isSet = true;
}

bool OAIInline_response_200_10::is_author_Set() const{
    return m_author_isSet;
}

bool OAIInline_response_200_10::is_author_Valid() const{
    return m_author_isValid;
}

QString OAIInline_response_200_10::getQuote() const {
    return quote;
}
void OAIInline_response_200_10::setQuote(const QString &quote) {
    this->quote = quote;
    this->m_quote_isSet = true;
}

bool OAIInline_response_200_10::is_quote_Set() const{
    return m_quote_isSet;
}

bool OAIInline_response_200_10::is_quote_Valid() const{
    return m_quote_isValid;
}

bool OAIInline_response_200_10::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_author_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_quote_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIInline_response_200_10::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
