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

#include "OAIPartOfSpeechTagging_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIPartOfSpeechTagging_200_response::OAIPartOfSpeechTagging_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIPartOfSpeechTagging_200_response::OAIPartOfSpeechTagging_200_response() {
    this->initializeModel();
}

OAIPartOfSpeechTagging_200_response::~OAIPartOfSpeechTagging_200_response() {}

void OAIPartOfSpeechTagging_200_response::initializeModel() {

    m_tagged_text_isSet = false;
    m_tagged_text_isValid = false;
}

void OAIPartOfSpeechTagging_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIPartOfSpeechTagging_200_response::fromJsonObject(QJsonObject json) {

    m_tagged_text_isValid = ::OpenAPI::fromJsonValue(m_tagged_text, json[QString("tagged_text")]);
    m_tagged_text_isSet = !json[QString("tagged_text")].isNull() && m_tagged_text_isValid;
}

QString OAIPartOfSpeechTagging_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIPartOfSpeechTagging_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_tagged_text_isSet) {
        obj.insert(QString("tagged_text"), ::OpenAPI::toJsonValue(m_tagged_text));
    }
    return obj;
}

QString OAIPartOfSpeechTagging_200_response::getTaggedText() const {
    return m_tagged_text;
}
void OAIPartOfSpeechTagging_200_response::setTaggedText(const QString &tagged_text) {
    m_tagged_text = tagged_text;
    m_tagged_text_isSet = true;
}

bool OAIPartOfSpeechTagging_200_response::is_tagged_text_Set() const{
    return m_tagged_text_isSet;
}

bool OAIPartOfSpeechTagging_200_response::is_tagged_text_Valid() const{
    return m_tagged_text_isValid;
}

bool OAIPartOfSpeechTagging_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_tagged_text_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIPartOfSpeechTagging_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
