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

/*
 * OAIDetectSentiment_200_response.h
 *
 * 
 */

#ifndef OAIDetectSentiment_200_response_H
#define OAIDetectSentiment_200_response_H

#include <QJsonObject>

#include "OAIDetectSentiment_200_response_document.h"
#include "OAIDetectSentiment_200_response_sentences_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIDetectSentiment_200_response_document;
class OAIDetectSentiment_200_response_sentences_inner;

class OAIDetectSentiment_200_response : public OAIObject {
public:
    OAIDetectSentiment_200_response();
    OAIDetectSentiment_200_response(QString json);
    ~OAIDetectSentiment_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAIDetectSentiment_200_response_document getDocument() const;
    void setDocument(const OAIDetectSentiment_200_response_document &document);
    bool is_document_Set() const;
    bool is_document_Valid() const;

    QList<OAIDetectSentiment_200_response_sentences_inner> getSentences() const;
    void setSentences(const QList<OAIDetectSentiment_200_response_sentences_inner> &sentences);
    bool is_sentences_Set() const;
    bool is_sentences_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAIDetectSentiment_200_response_document m_document;
    bool m_document_isSet;
    bool m_document_isValid;

    QList<OAIDetectSentiment_200_response_sentences_inner> m_sentences;
    bool m_sentences_isSet;
    bool m_sentences_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIDetectSentiment_200_response)

#endif // OAIDetectSentiment_200_response_H