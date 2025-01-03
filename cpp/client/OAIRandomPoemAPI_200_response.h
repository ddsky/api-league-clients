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
 * OAIRandomPoemAPI_200_response.h
 *
 * 
 */

#ifndef OAIRandomPoemAPI_200_response_H
#define OAIRandomPoemAPI_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRandomPoemAPI_200_response : public OAIObject {
public:
    OAIRandomPoemAPI_200_response();
    OAIRandomPoemAPI_200_response(QString json);
    ~OAIRandomPoemAPI_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getTitle() const;
    void setTitle(const QString &title);
    bool is_title_Set() const;
    bool is_title_Valid() const;

    QString getAuthor() const;
    void setAuthor(const QString &author);
    bool is_author_Set() const;
    bool is_author_Valid() const;

    QString getPoem() const;
    void setPoem(const QString &poem);
    bool is_poem_Set() const;
    bool is_poem_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_title;
    bool m_title_isSet;
    bool m_title_isValid;

    QString m_author;
    bool m_author_isSet;
    bool m_author_isValid;

    QString m_poem;
    bool m_poem_isSet;
    bool m_poem_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRandomPoemAPI_200_response)

#endif // OAIRandomPoemAPI_200_response_H
