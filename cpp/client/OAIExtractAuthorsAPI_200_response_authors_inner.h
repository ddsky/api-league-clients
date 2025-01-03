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
 * OAIExtractAuthorsAPI_200_response_authors_inner.h
 *
 * 
 */

#ifndef OAIExtractAuthorsAPI_200_response_authors_inner_H
#define OAIExtractAuthorsAPI_200_response_authors_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIExtractAuthorsAPI_200_response_authors_inner : public OAIObject {
public:
    OAIExtractAuthorsAPI_200_response_authors_inner();
    OAIExtractAuthorsAPI_200_response_authors_inner(QString json);
    ~OAIExtractAuthorsAPI_200_response_authors_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getLink() const;
    void setLink(const QString &link);
    bool is_link_Set() const;
    bool is_link_Valid() const;

    QString getName() const;
    void setName(const QString &name);
    bool is_name_Set() const;
    bool is_name_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_link;
    bool m_link_isSet;
    bool m_link_isValid;

    QString m_name;
    bool m_name_isSet;
    bool m_name_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIExtractAuthorsAPI_200_response_authors_inner)

#endif // OAIExtractAuthorsAPI_200_response_authors_inner_H
