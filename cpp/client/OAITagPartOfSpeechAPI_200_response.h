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
 * OAITagPartOfSpeechAPI_200_response.h
 *
 * 
 */

#ifndef OAITagPartOfSpeechAPI_200_response_H
#define OAITagPartOfSpeechAPI_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAITagPartOfSpeechAPI_200_response : public OAIObject {
public:
    OAITagPartOfSpeechAPI_200_response();
    OAITagPartOfSpeechAPI_200_response(QString json);
    ~OAITagPartOfSpeechAPI_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getTaggedText() const;
    void setTaggedText(const QString &tagged_text);
    bool is_tagged_text_Set() const;
    bool is_tagged_text_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_tagged_text;
    bool m_tagged_text_isSet;
    bool m_tagged_text_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAITagPartOfSpeechAPI_200_response)

#endif // OAITagPartOfSpeechAPI_200_response_H