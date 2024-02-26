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
 * OAIInline_response_200_14.h
 *
 * 
 */

#ifndef OAIInline_response_200_14_H
#define OAIInline_response_200_14_H

#include <QJsonObject>

#include "com.apileague.client.model\OAIInline_response_200_14_authors.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIInline_response_200_14 : public OAIObject {
public:
    OAIInline_response_200_14();
    OAIInline_response_200_14(QString json);
    ~OAIInline_response_200_14() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAIInline_response_200_14_authors> getAuthors() const;
    void setAuthors(const QList<OAIInline_response_200_14_authors> &authors);
    bool is_authors_Set() const;
    bool is_authors_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAIInline_response_200_14_authors> authors;
    bool m_authors_isSet;
    bool m_authors_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIInline_response_200_14)

#endif // OAIInline_response_200_14_H
