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

#include "OAIInline_response_200_17_sentences.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIInline_response_200_17_sentences::OAIInline_response_200_17_sentences(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIInline_response_200_17_sentences::OAIInline_response_200_17_sentences() {
    this->initializeModel();
}

OAIInline_response_200_17_sentences::~OAIInline_response_200_17_sentences() {}

void OAIInline_response_200_17_sentences::initializeModel() {

    m_length_isSet = false;
    m_length_isValid = false;

    m_sentiment_isSet = false;
    m_sentiment_isValid = false;

    m_offset_isSet = false;
    m_offset_isValid = false;

    m_confidence_isSet = false;
    m_confidence_isValid = false;
}

void OAIInline_response_200_17_sentences::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIInline_response_200_17_sentences::fromJsonObject(QJsonObject json) {

    m_length_isValid = ::OpenAPI::fromJsonValue(length, json[QString("length")]);
    m_length_isSet = !json[QString("length")].isNull() && m_length_isValid;

    m_sentiment_isValid = ::OpenAPI::fromJsonValue(sentiment, json[QString("sentiment")]);
    m_sentiment_isSet = !json[QString("sentiment")].isNull() && m_sentiment_isValid;

    m_offset_isValid = ::OpenAPI::fromJsonValue(offset, json[QString("offset")]);
    m_offset_isSet = !json[QString("offset")].isNull() && m_offset_isValid;

    m_confidence_isValid = ::OpenAPI::fromJsonValue(confidence, json[QString("confidence")]);
    m_confidence_isSet = !json[QString("confidence")].isNull() && m_confidence_isValid;
}

QString OAIInline_response_200_17_sentences::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIInline_response_200_17_sentences::asJsonObject() const {
    QJsonObject obj;
    if (m_length_isSet) {
        obj.insert(QString("length"), ::OpenAPI::toJsonValue(length));
    }
    if (m_sentiment_isSet) {
        obj.insert(QString("sentiment"), ::OpenAPI::toJsonValue(sentiment));
    }
    if (m_offset_isSet) {
        obj.insert(QString("offset"), ::OpenAPI::toJsonValue(offset));
    }
    if (m_confidence_isSet) {
        obj.insert(QString("confidence"), ::OpenAPI::toJsonValue(confidence));
    }
    return obj;
}

qint32 OAIInline_response_200_17_sentences::getLength() const {
    return length;
}
void OAIInline_response_200_17_sentences::setLength(const qint32 &length) {
    this->length = length;
    this->m_length_isSet = true;
}

bool OAIInline_response_200_17_sentences::is_length_Set() const{
    return m_length_isSet;
}

bool OAIInline_response_200_17_sentences::is_length_Valid() const{
    return m_length_isValid;
}

QString OAIInline_response_200_17_sentences::getSentiment() const {
    return sentiment;
}
void OAIInline_response_200_17_sentences::setSentiment(const QString &sentiment) {
    this->sentiment = sentiment;
    this->m_sentiment_isSet = true;
}

bool OAIInline_response_200_17_sentences::is_sentiment_Set() const{
    return m_sentiment_isSet;
}

bool OAIInline_response_200_17_sentences::is_sentiment_Valid() const{
    return m_sentiment_isValid;
}

qint32 OAIInline_response_200_17_sentences::getOffset() const {
    return offset;
}
void OAIInline_response_200_17_sentences::setOffset(const qint32 &offset) {
    this->offset = offset;
    this->m_offset_isSet = true;
}

bool OAIInline_response_200_17_sentences::is_offset_Set() const{
    return m_offset_isSet;
}

bool OAIInline_response_200_17_sentences::is_offset_Valid() const{
    return m_offset_isValid;
}

qint32 OAIInline_response_200_17_sentences::getConfidence() const {
    return confidence;
}
void OAIInline_response_200_17_sentences::setConfidence(const qint32 &confidence) {
    this->confidence = confidence;
    this->m_confidence_isSet = true;
}

bool OAIInline_response_200_17_sentences::is_confidence_Set() const{
    return m_confidence_isSet;
}

bool OAIInline_response_200_17_sentences::is_confidence_Valid() const{
    return m_confidence_isValid;
}

bool OAIInline_response_200_17_sentences::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_length_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_sentiment_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_offset_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_confidence_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIInline_response_200_17_sentences::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
