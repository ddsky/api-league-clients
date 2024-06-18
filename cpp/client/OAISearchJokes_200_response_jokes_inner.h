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
 * OAISearchJokes_200_response_jokes_inner.h
 *
 * 
 */

#ifndef OAISearchJokes_200_response_jokes_inner_H
#define OAISearchJokes_200_response_jokes_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISearchJokes_200_response_jokes_inner : public OAIObject {
public:
    OAISearchJokes_200_response_jokes_inner();
    OAISearchJokes_200_response_jokes_inner(QString json);
    ~OAISearchJokes_200_response_jokes_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getJoke() const;
    void setJoke(const QString &joke);
    bool is_joke_Set() const;
    bool is_joke_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_joke;
    bool m_joke_isSet;
    bool m_joke_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchJokes_200_response_jokes_inner)

#endif // OAISearchJokes_200_response_jokes_inner_H
