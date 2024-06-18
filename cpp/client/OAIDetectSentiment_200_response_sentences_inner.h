/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIDetectSentiment_200_response_sentences_inner.h
 *
 * 
 */

#ifndef OAIDetectSentiment_200_response_sentences_inner_H
#define OAIDetectSentiment_200_response_sentences_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIDetectSentiment_200_response_sentences_inner : public OAIObject {
public:
    OAIDetectSentiment_200_response_sentences_inner();
    OAIDetectSentiment_200_response_sentences_inner(QString json);
    ~OAIDetectSentiment_200_response_sentences_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getLength() const;
    void setLength(const qint32 &length);
    bool is_length_Set() const;
    bool is_length_Valid() const;

    QString getSentiment() const;
    void setSentiment(const QString &sentiment);
    bool is_sentiment_Set() const;
    bool is_sentiment_Valid() const;

    qint32 getOffset() const;
    void setOffset(const qint32 &offset);
    bool is_offset_Set() const;
    bool is_offset_Valid() const;

    qint32 getConfidence() const;
    void setConfidence(const qint32 &confidence);
    bool is_confidence_Set() const;
    bool is_confidence_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_length;
    bool m_length_isSet;
    bool m_length_isValid;

    QString m_sentiment;
    bool m_sentiment_isSet;
    bool m_sentiment_isValid;

    qint32 m_offset;
    bool m_offset_isSet;
    bool m_offset_isValid;

    qint32 m_confidence;
    bool m_confidence_isSet;
    bool m_confidence_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIDetectSentiment_200_response_sentences_inner)

#endif // OAIDetectSentiment_200_response_sentences_inner_H
