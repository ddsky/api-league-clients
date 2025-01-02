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
 * OAIVectorSearchAPI_200_response_vectors_inner.h
 *
 * 
 */

#ifndef OAIVectorSearchAPI_200_response_vectors_inner_H
#define OAIVectorSearchAPI_200_response_vectors_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIVectorSearchAPI_200_response_vectors_inner : public OAIObject {
public:
    OAIVectorSearchAPI_200_response_vectors_inner();
    OAIVectorSearchAPI_200_response_vectors_inner(QString json);
    ~OAIVectorSearchAPI_200_response_vectors_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getLicense() const;
    void setLicense(const QString &license);
    bool is_license_Set() const;
    bool is_license_Valid() const;

    QString getTitle() const;
    void setTitle(const QString &title);
    bool is_title_Set() const;
    bool is_title_Valid() const;

    QString getAuthor() const;
    void setAuthor(const QString &author);
    bool is_author_Set() const;
    bool is_author_Valid() const;

    QString getImageUrl() const;
    void setImageUrl(const QString &image_url);
    bool is_image_url_Set() const;
    bool is_image_url_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_license;
    bool m_license_isSet;
    bool m_license_isValid;

    QString m_title;
    bool m_title_isSet;
    bool m_title_isValid;

    QString m_author;
    bool m_author_isSet;
    bool m_author_isValid;

    QString m_image_url;
    bool m_image_url_isSet;
    bool m_image_url_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIVectorSearchAPI_200_response_vectors_inner)

#endif // OAIVectorSearchAPI_200_response_vectors_inner_H
