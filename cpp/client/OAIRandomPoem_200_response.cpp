/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIRandomPoem_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRandomPoem_200_response::OAIRandomPoem_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRandomPoem_200_response::OAIRandomPoem_200_response() {
    this->initializeModel();
}

OAIRandomPoem_200_response::~OAIRandomPoem_200_response() {}

void OAIRandomPoem_200_response::initializeModel() {

    m_title_isSet = false;
    m_title_isValid = false;

    m_author_isSet = false;
    m_author_isValid = false;

    m_poem_isSet = false;
    m_poem_isValid = false;
}

void OAIRandomPoem_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRandomPoem_200_response::fromJsonObject(QJsonObject json) {

    m_title_isValid = ::OpenAPI::fromJsonValue(m_title, json[QString("title")]);
    m_title_isSet = !json[QString("title")].isNull() && m_title_isValid;

    m_author_isValid = ::OpenAPI::fromJsonValue(m_author, json[QString("author")]);
    m_author_isSet = !json[QString("author")].isNull() && m_author_isValid;

    m_poem_isValid = ::OpenAPI::fromJsonValue(m_poem, json[QString("poem")]);
    m_poem_isSet = !json[QString("poem")].isNull() && m_poem_isValid;
}

QString OAIRandomPoem_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRandomPoem_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_title_isSet) {
        obj.insert(QString("title"), ::OpenAPI::toJsonValue(m_title));
    }
    if (m_author_isSet) {
        obj.insert(QString("author"), ::OpenAPI::toJsonValue(m_author));
    }
    if (m_poem_isSet) {
        obj.insert(QString("poem"), ::OpenAPI::toJsonValue(m_poem));
    }
    return obj;
}

QString OAIRandomPoem_200_response::getTitle() const {
    return m_title;
}
void OAIRandomPoem_200_response::setTitle(const QString &title) {
    m_title = title;
    m_title_isSet = true;
}

bool OAIRandomPoem_200_response::is_title_Set() const{
    return m_title_isSet;
}

bool OAIRandomPoem_200_response::is_title_Valid() const{
    return m_title_isValid;
}

QString OAIRandomPoem_200_response::getAuthor() const {
    return m_author;
}
void OAIRandomPoem_200_response::setAuthor(const QString &author) {
    m_author = author;
    m_author_isSet = true;
}

bool OAIRandomPoem_200_response::is_author_Set() const{
    return m_author_isSet;
}

bool OAIRandomPoem_200_response::is_author_Valid() const{
    return m_author_isValid;
}

QString OAIRandomPoem_200_response::getPoem() const {
    return m_poem;
}
void OAIRandomPoem_200_response::setPoem(const QString &poem) {
    m_poem = poem;
    m_poem_isSet = true;
}

bool OAIRandomPoem_200_response::is_poem_Set() const{
    return m_poem_isSet;
}

bool OAIRandomPoem_200_response::is_poem_Valid() const{
    return m_poem_isValid;
}

bool OAIRandomPoem_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_title_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_author_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_poem_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRandomPoem_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
