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

#include "OAITagPartOfSpeechAPI_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAITagPartOfSpeechAPI_200_response::OAITagPartOfSpeechAPI_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAITagPartOfSpeechAPI_200_response::OAITagPartOfSpeechAPI_200_response() {
    this->initializeModel();
}

OAITagPartOfSpeechAPI_200_response::~OAITagPartOfSpeechAPI_200_response() {}

void OAITagPartOfSpeechAPI_200_response::initializeModel() {

    m_tagged_text_isSet = false;
    m_tagged_text_isValid = false;
}

void OAITagPartOfSpeechAPI_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAITagPartOfSpeechAPI_200_response::fromJsonObject(QJsonObject json) {

    m_tagged_text_isValid = ::OpenAPI::fromJsonValue(m_tagged_text, json[QString("tagged_text")]);
    m_tagged_text_isSet = !json[QString("tagged_text")].isNull() && m_tagged_text_isValid;
}

QString OAITagPartOfSpeechAPI_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAITagPartOfSpeechAPI_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_tagged_text_isSet) {
        obj.insert(QString("tagged_text"), ::OpenAPI::toJsonValue(m_tagged_text));
    }
    return obj;
}

QString OAITagPartOfSpeechAPI_200_response::getTaggedText() const {
    return m_tagged_text;
}
void OAITagPartOfSpeechAPI_200_response::setTaggedText(const QString &tagged_text) {
    m_tagged_text = tagged_text;
    m_tagged_text_isSet = true;
}

bool OAITagPartOfSpeechAPI_200_response::is_tagged_text_Set() const{
    return m_tagged_text_isSet;
}

bool OAITagPartOfSpeechAPI_200_response::is_tagged_text_Valid() const{
    return m_tagged_text_isValid;
}

bool OAITagPartOfSpeechAPI_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_tagged_text_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAITagPartOfSpeechAPI_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
