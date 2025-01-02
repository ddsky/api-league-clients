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

/*
 * OAIDetectSentimentAPI_200_response.h
 *
 * 
 */

#ifndef OAIDetectSentimentAPI_200_response_H
#define OAIDetectSentimentAPI_200_response_H

#include <QJsonObject>

#include "OAIDetectSentimentAPI_200_response_document.h"
#include "OAIDetectSentimentAPI_200_response_sentences_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIDetectSentimentAPI_200_response_document;
class OAIDetectSentimentAPI_200_response_sentences_inner;

class OAIDetectSentimentAPI_200_response : public OAIObject {
public:
    OAIDetectSentimentAPI_200_response();
    OAIDetectSentimentAPI_200_response(QString json);
    ~OAIDetectSentimentAPI_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAIDetectSentimentAPI_200_response_document getDocument() const;
    void setDocument(const OAIDetectSentimentAPI_200_response_document &document);
    bool is_document_Set() const;
    bool is_document_Valid() const;

    QList<OAIDetectSentimentAPI_200_response_sentences_inner> getSentences() const;
    void setSentences(const QList<OAIDetectSentimentAPI_200_response_sentences_inner> &sentences);
    bool is_sentences_Set() const;
    bool is_sentences_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAIDetectSentimentAPI_200_response_document m_document;
    bool m_document_isSet;
    bool m_document_isValid;

    QList<OAIDetectSentimentAPI_200_response_sentences_inner> m_sentences;
    bool m_sentences_isSet;
    bool m_sentences_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIDetectSentimentAPI_200_response)

#endif // OAIDetectSentimentAPI_200_response_H
