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

#include "OAIDetectSentimentAPI_200_response_document.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIDetectSentimentAPI_200_response_document::OAIDetectSentimentAPI_200_response_document(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIDetectSentimentAPI_200_response_document::OAIDetectSentimentAPI_200_response_document() {
    this->initializeModel();
}

OAIDetectSentimentAPI_200_response_document::~OAIDetectSentimentAPI_200_response_document() {}

void OAIDetectSentimentAPI_200_response_document::initializeModel() {

    m_sentiment_isSet = false;
    m_sentiment_isValid = false;

    m_confidence_isSet = false;
    m_confidence_isValid = false;

    m_average_confidence_isSet = false;
    m_average_confidence_isValid = false;
}

void OAIDetectSentimentAPI_200_response_document::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIDetectSentimentAPI_200_response_document::fromJsonObject(QJsonObject json) {

    m_sentiment_isValid = ::OpenAPI::fromJsonValue(m_sentiment, json[QString("sentiment")]);
    m_sentiment_isSet = !json[QString("sentiment")].isNull() && m_sentiment_isValid;

    m_confidence_isValid = ::OpenAPI::fromJsonValue(m_confidence, json[QString("confidence")]);
    m_confidence_isSet = !json[QString("confidence")].isNull() && m_confidence_isValid;

    m_average_confidence_isValid = ::OpenAPI::fromJsonValue(m_average_confidence, json[QString("average_confidence")]);
    m_average_confidence_isSet = !json[QString("average_confidence")].isNull() && m_average_confidence_isValid;
}

QString OAIDetectSentimentAPI_200_response_document::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIDetectSentimentAPI_200_response_document::asJsonObject() const {
    QJsonObject obj;
    if (m_sentiment_isSet) {
        obj.insert(QString("sentiment"), ::OpenAPI::toJsonValue(m_sentiment));
    }
    if (m_confidence_isSet) {
        obj.insert(QString("confidence"), ::OpenAPI::toJsonValue(m_confidence));
    }
    if (m_average_confidence_isSet) {
        obj.insert(QString("average_confidence"), ::OpenAPI::toJsonValue(m_average_confidence));
    }
    return obj;
}

QString OAIDetectSentimentAPI_200_response_document::getSentiment() const {
    return m_sentiment;
}
void OAIDetectSentimentAPI_200_response_document::setSentiment(const QString &sentiment) {
    m_sentiment = sentiment;
    m_sentiment_isSet = true;
}

bool OAIDetectSentimentAPI_200_response_document::is_sentiment_Set() const{
    return m_sentiment_isSet;
}

bool OAIDetectSentimentAPI_200_response_document::is_sentiment_Valid() const{
    return m_sentiment_isValid;
}

qint32 OAIDetectSentimentAPI_200_response_document::getConfidence() const {
    return m_confidence;
}
void OAIDetectSentimentAPI_200_response_document::setConfidence(const qint32 &confidence) {
    m_confidence = confidence;
    m_confidence_isSet = true;
}

bool OAIDetectSentimentAPI_200_response_document::is_confidence_Set() const{
    return m_confidence_isSet;
}

bool OAIDetectSentimentAPI_200_response_document::is_confidence_Valid() const{
    return m_confidence_isValid;
}

qint32 OAIDetectSentimentAPI_200_response_document::getAverageConfidence() const {
    return m_average_confidence;
}
void OAIDetectSentimentAPI_200_response_document::setAverageConfidence(const qint32 &average_confidence) {
    m_average_confidence = average_confidence;
    m_average_confidence_isSet = true;
}

bool OAIDetectSentimentAPI_200_response_document::is_average_confidence_Set() const{
    return m_average_confidence_isSet;
}

bool OAIDetectSentimentAPI_200_response_document::is_average_confidence_Valid() const{
    return m_average_confidence_isValid;
}

bool OAIDetectSentimentAPI_200_response_document::isSet() const {
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

bool OAIDetectSentimentAPI_200_response_document::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
