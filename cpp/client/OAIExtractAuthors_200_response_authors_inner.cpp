/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIExtractAuthors_200_response_authors_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIExtractAuthors_200_response_authors_inner::OAIExtractAuthors_200_response_authors_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIExtractAuthors_200_response_authors_inner::OAIExtractAuthors_200_response_authors_inner() {
    this->initializeModel();
}

OAIExtractAuthors_200_response_authors_inner::~OAIExtractAuthors_200_response_authors_inner() {}

void OAIExtractAuthors_200_response_authors_inner::initializeModel() {

    m_link_isSet = false;
    m_link_isValid = false;

    m_name_isSet = false;
    m_name_isValid = false;
}

void OAIExtractAuthors_200_response_authors_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIExtractAuthors_200_response_authors_inner::fromJsonObject(QJsonObject json) {

    m_link_isValid = ::OpenAPI::fromJsonValue(m_link, json[QString("link")]);
    m_link_isSet = !json[QString("link")].isNull() && m_link_isValid;

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;
}

QString OAIExtractAuthors_200_response_authors_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIExtractAuthors_200_response_authors_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_link_isSet) {
        obj.insert(QString("link"), ::OpenAPI::toJsonValue(m_link));
    }
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    return obj;
}

QString OAIExtractAuthors_200_response_authors_inner::getLink() const {
    return m_link;
}
void OAIExtractAuthors_200_response_authors_inner::setLink(const QString &link) {
    m_link = link;
    m_link_isSet = true;
}

bool OAIExtractAuthors_200_response_authors_inner::is_link_Set() const{
    return m_link_isSet;
}

bool OAIExtractAuthors_200_response_authors_inner::is_link_Valid() const{
    return m_link_isValid;
}

QString OAIExtractAuthors_200_response_authors_inner::getName() const {
    return m_name;
}
void OAIExtractAuthors_200_response_authors_inner::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAIExtractAuthors_200_response_authors_inner::is_name_Set() const{
    return m_name_isSet;
}

bool OAIExtractAuthors_200_response_authors_inner::is_name_Valid() const{
    return m_name_isValid;
}

bool OAIExtractAuthors_200_response_authors_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_link_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIExtractAuthors_200_response_authors_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
