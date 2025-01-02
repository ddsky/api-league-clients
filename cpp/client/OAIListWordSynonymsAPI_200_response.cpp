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

#include "OAIListWordSynonymsAPI_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIListWordSynonymsAPI_200_response::OAIListWordSynonymsAPI_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIListWordSynonymsAPI_200_response::OAIListWordSynonymsAPI_200_response() {
    this->initializeModel();
}

OAIListWordSynonymsAPI_200_response::~OAIListWordSynonymsAPI_200_response() {}

void OAIListWordSynonymsAPI_200_response::initializeModel() {

    m_synonyms_isSet = false;
    m_synonyms_isValid = false;
}

void OAIListWordSynonymsAPI_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIListWordSynonymsAPI_200_response::fromJsonObject(QJsonObject json) {

    m_synonyms_isValid = ::OpenAPI::fromJsonValue(m_synonyms, json[QString("synonyms")]);
    m_synonyms_isSet = !json[QString("synonyms")].isNull() && m_synonyms_isValid;
}

QString OAIListWordSynonymsAPI_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIListWordSynonymsAPI_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_synonyms.size() > 0) {
        obj.insert(QString("synonyms"), ::OpenAPI::toJsonValue(m_synonyms));
    }
    return obj;
}

QList<QString> OAIListWordSynonymsAPI_200_response::getSynonyms() const {
    return m_synonyms;
}
void OAIListWordSynonymsAPI_200_response::setSynonyms(const QList<QString> &synonyms) {
    m_synonyms = synonyms;
    m_synonyms_isSet = true;
}

bool OAIListWordSynonymsAPI_200_response::is_synonyms_Set() const{
    return m_synonyms_isSet;
}

bool OAIListWordSynonymsAPI_200_response::is_synonyms_Valid() const{
    return m_synonyms_isValid;
}

bool OAIListWordSynonymsAPI_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_synonyms.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIListWordSynonymsAPI_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI