/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchMemes_200_response.h
 *
 * 
 */

#ifndef OAISearchMemes_200_response_H
#define OAISearchMemes_200_response_H

#include <QJsonObject>

#include "OAISearchMemes_200_response_memes_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchMemes_200_response_memes_inner;

class OAISearchMemes_200_response : public OAIObject {
public:
    OAISearchMemes_200_response();
    OAISearchMemes_200_response(QString json);
    ~OAISearchMemes_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAISearchMemes_200_response_memes_inner> getMemes() const;
    void setMemes(const QList<OAISearchMemes_200_response_memes_inner> &memes);
    bool is_memes_Set() const;
    bool is_memes_Valid() const;

    qint32 getAvailable() const;
    void setAvailable(const qint32 &available);
    bool is_available_Set() const;
    bool is_available_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAISearchMemes_200_response_memes_inner> m_memes;
    bool m_memes_isSet;
    bool m_memes_isValid;

    qint32 m_available;
    bool m_available_isSet;
    bool m_available_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchMemes_200_response)

#endif // OAISearchMemes_200_response_H
