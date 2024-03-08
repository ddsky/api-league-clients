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

#include "OAIExtractAuthors_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIExtractAuthors_200_response::OAIExtractAuthors_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIExtractAuthors_200_response::OAIExtractAuthors_200_response() {
    this->initializeModel();
}

OAIExtractAuthors_200_response::~OAIExtractAuthors_200_response() {}

void OAIExtractAuthors_200_response::initializeModel() {

    m_authors_isSet = false;
    m_authors_isValid = false;
}

void OAIExtractAuthors_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIExtractAuthors_200_response::fromJsonObject(QJsonObject json) {

    m_authors_isValid = ::OpenAPI::fromJsonValue(m_authors, json[QString("authors")]);
    m_authors_isSet = !json[QString("authors")].isNull() && m_authors_isValid;
}

QString OAIExtractAuthors_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIExtractAuthors_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_authors.size() > 0) {
        obj.insert(QString("authors"), ::OpenAPI::toJsonValue(m_authors));
    }
    return obj;
}

QList<OAIExtractAuthors_200_response_authors_inner> OAIExtractAuthors_200_response::getAuthors() const {
    return m_authors;
}
void OAIExtractAuthors_200_response::setAuthors(const QList<OAIExtractAuthors_200_response_authors_inner> &authors) {
    m_authors = authors;
    m_authors_isSet = true;
}

bool OAIExtractAuthors_200_response::is_authors_Set() const{
    return m_authors_isSet;
}

bool OAIExtractAuthors_200_response::is_authors_Valid() const{
    return m_authors_isValid;
}

bool OAIExtractAuthors_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_authors.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIExtractAuthors_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
