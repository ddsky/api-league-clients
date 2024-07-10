/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIRandomQuote_200_response.h
 *
 * 
 */

#ifndef OAIRandomQuote_200_response_H
#define OAIRandomQuote_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRandomQuote_200_response : public OAIObject {
public:
    OAIRandomQuote_200_response();
    OAIRandomQuote_200_response(QString json);
    ~OAIRandomQuote_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getAuthor() const;
    void setAuthor(const QString &author);
    bool is_author_Set() const;
    bool is_author_Valid() const;

    QString getQuote() const;
    void setQuote(const QString &quote);
    bool is_quote_Set() const;
    bool is_quote_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_author;
    bool m_author_isSet;
    bool m_author_isValid;

    QString m_quote;
    bool m_quote_isSet;
    bool m_quote_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRandomQuote_200_response)

#endif // OAIRandomQuote_200_response_H
