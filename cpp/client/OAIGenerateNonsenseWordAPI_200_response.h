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
 * OAIGenerateNonsenseWordAPI_200_response.h
 *
 * 
 */

#ifndef OAIGenerateNonsenseWordAPI_200_response_H
#define OAIGenerateNonsenseWordAPI_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIGenerateNonsenseWordAPI_200_response : public OAIObject {
public:
    OAIGenerateNonsenseWordAPI_200_response();
    OAIGenerateNonsenseWordAPI_200_response(QString json);
    ~OAIGenerateNonsenseWordAPI_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getWord() const;
    void setWord(const QString &word);
    bool is_word_Set() const;
    bool is_word_Valid() const;

    double getRating() const;
    void setRating(const double &rating);
    bool is_rating_Set() const;
    bool is_rating_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_word;
    bool m_word_isSet;
    bool m_word_isValid;

    double m_rating;
    bool m_rating_isSet;
    bool m_rating_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIGenerateNonsenseWordAPI_200_response)

#endif // OAIGenerateNonsenseWordAPI_200_response_H
