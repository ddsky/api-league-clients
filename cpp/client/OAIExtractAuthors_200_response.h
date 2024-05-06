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
 * OAIExtractAuthors_200_response.h
 *
 * 
 */

#ifndef OAIExtractAuthors_200_response_H
#define OAIExtractAuthors_200_response_H

#include <QJsonObject>

#include "OAIExtractAuthors_200_response_authors_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIExtractAuthors_200_response_authors_inner;

class OAIExtractAuthors_200_response : public OAIObject {
public:
    OAIExtractAuthors_200_response();
    OAIExtractAuthors_200_response(QString json);
    ~OAIExtractAuthors_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAIExtractAuthors_200_response_authors_inner> getAuthors() const;
    void setAuthors(const QList<OAIExtractAuthors_200_response_authors_inner> &authors);
    bool is_authors_Set() const;
    bool is_authors_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAIExtractAuthors_200_response_authors_inner> m_authors;
    bool m_authors_isSet;
    bool m_authors_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIExtractAuthors_200_response)

#endif // OAIExtractAuthors_200_response_H
