/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIDetectSentiment_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIDetectSentiment_200_response::OAIDetectSentiment_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIDetectSentiment_200_response::OAIDetectSentiment_200_response() {
    this->initializeModel();
}

OAIDetectSentiment_200_response::~OAIDetectSentiment_200_response() {}

void OAIDetectSentiment_200_response::initializeModel() {

    m_document_isSet = false;
    m_document_isValid = false;

    m_sentences_isSet = false;
    m_sentences_isValid = false;
}

void OAIDetectSentiment_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIDetectSentiment_200_response::fromJsonObject(QJsonObject json) {

    m_document_isValid = ::OpenAPI::fromJsonValue(m_document, json[QString("document")]);
    m_document_isSet = !json[QString("document")].isNull() && m_document_isValid;

    m_sentences_isValid = ::OpenAPI::fromJsonValue(m_sentences, json[QString("sentences")]);
    m_sentences_isSet = !json[QString("sentences")].isNull() && m_sentences_isValid;
}

QString OAIDetectSentiment_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIDetectSentiment_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_document.isSet()) {
        obj.insert(QString("document"), ::OpenAPI::toJsonValue(m_document));
    }
    if (m_sentences.size() > 0) {
        obj.insert(QString("sentences"), ::OpenAPI::toJsonValue(m_sentences));
    }
    return obj;
}

OAIDetectSentiment_200_response_document OAIDetectSentiment_200_response::getDocument() const {
    return m_document;
}
void OAIDetectSentiment_200_response::setDocument(const OAIDetectSentiment_200_response_document &document) {
    m_document = document;
    m_document_isSet = true;
}

bool OAIDetectSentiment_200_response::is_document_Set() const{
    return m_document_isSet;
}

bool OAIDetectSentiment_200_response::is_document_Valid() const{
    return m_document_isValid;
}

QList<OAIDetectSentiment_200_response_sentences_inner> OAIDetectSentiment_200_response::getSentences() const {
    return m_sentences;
}
void OAIDetectSentiment_200_response::setSentences(const QList<OAIDetectSentiment_200_response_sentences_inner> &sentences) {
    m_sentences = sentences;
    m_sentences_isSet = true;
}

bool OAIDetectSentiment_200_response::is_sentences_Set() const{
    return m_sentences_isSet;
}

bool OAIDetectSentiment_200_response::is_sentences_Valid() const{
    return m_sentences_isValid;
}

bool OAIDetectSentiment_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_document.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_sentences.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIDetectSentiment_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
