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

#include "OAIInline_response_200_17_document.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIInline_response_200_17_document::OAIInline_response_200_17_document(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIInline_response_200_17_document::OAIInline_response_200_17_document() {
    this->initializeModel();
}

OAIInline_response_200_17_document::~OAIInline_response_200_17_document() {}

void OAIInline_response_200_17_document::initializeModel() {

    m_sentiment_isSet = false;
    m_sentiment_isValid = false;

    m_confidence_isSet = false;
    m_confidence_isValid = false;

    m_average_confidence_isSet = false;
    m_average_confidence_isValid = false;
}

void OAIInline_response_200_17_document::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIInline_response_200_17_document::fromJsonObject(QJsonObject json) {

    m_sentiment_isValid = ::OpenAPI::fromJsonValue(sentiment, json[QString("sentiment")]);
    m_sentiment_isSet = !json[QString("sentiment")].isNull() && m_sentiment_isValid;

    m_confidence_isValid = ::OpenAPI::fromJsonValue(confidence, json[QString("confidence")]);
    m_confidence_isSet = !json[QString("confidence")].isNull() && m_confidence_isValid;

    m_average_confidence_isValid = ::OpenAPI::fromJsonValue(average_confidence, json[QString("average_confidence")]);
    m_average_confidence_isSet = !json[QString("average_confidence")].isNull() && m_average_confidence_isValid;
}

QString OAIInline_response_200_17_document::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIInline_response_200_17_document::asJsonObject() const {
    QJsonObject obj;
    if (m_sentiment_isSet) {
        obj.insert(QString("sentiment"), ::OpenAPI::toJsonValue(sentiment));
    }
    if (m_confidence_isSet) {
        obj.insert(QString("confidence"), ::OpenAPI::toJsonValue(confidence));
    }
    if (m_average_confidence_isSet) {
        obj.insert(QString("average_confidence"), ::OpenAPI::toJsonValue(average_confidence));
    }
    return obj;
}

QString OAIInline_response_200_17_document::getSentiment() const {
    return sentiment;
}
void OAIInline_response_200_17_document::setSentiment(const QString &sentiment) {
    this->sentiment = sentiment;
    this->m_sentiment_isSet = true;
}

bool OAIInline_response_200_17_document::is_sentiment_Set() const{
    return m_sentiment_isSet;
}

bool OAIInline_response_200_17_document::is_sentiment_Valid() const{
    return m_sentiment_isValid;
}

qint32 OAIInline_response_200_17_document::getConfidence() const {
    return confidence;
}
void OAIInline_response_200_17_document::setConfidence(const qint32 &confidence) {
    this->confidence = confidence;
    this->m_confidence_isSet = true;
}

bool OAIInline_response_200_17_document::is_confidence_Set() const{
    return m_confidence_isSet;
}

bool OAIInline_response_200_17_document::is_confidence_Valid() const{
    return m_confidence_isValid;
}

qint32 OAIInline_response_200_17_document::getAverageConfidence() const {
    return average_confidence;
}
void OAIInline_response_200_17_document::setAverageConfidence(const qint32 &average_confidence) {
    this->average_confidence = average_confidence;
    this->m_average_confidence_isSet = true;
}

bool OAIInline_response_200_17_document::is_average_confidence_Set() const{
    return m_average_confidence_isSet;
}

bool OAIInline_response_200_17_document::is_average_confidence_Valid() const{
    return m_average_confidence_isValid;
}

bool OAIInline_response_200_17_document::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_sentiment_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_confidence_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_average_confidence_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIInline_response_200_17_document::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
