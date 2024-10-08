/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchRoyaltyFreeImages_200_response_images_inner.h
 *
 * 
 */

#ifndef OAISearchRoyaltyFreeImages_200_response_images_inner_H
#define OAISearchRoyaltyFreeImages_200_response_images_inner_H

#include <QJsonObject>

#include "OAISearchRoyaltyFreeImages_200_response_images_inner_license.h"
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchRoyaltyFreeImages_200_response_images_inner_license;

class OAISearchRoyaltyFreeImages_200_response_images_inner : public OAIObject {
public:
    OAISearchRoyaltyFreeImages_200_response_images_inner();
    OAISearchRoyaltyFreeImages_200_response_images_inner(QString json);
    ~OAISearchRoyaltyFreeImages_200_response_images_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getWidth() const;
    void setWidth(const qint32 &width);
    bool is_width_Set() const;
    bool is_width_Valid() const;

    OAISearchRoyaltyFreeImages_200_response_images_inner_license getLicense() const;
    void setLicense(const OAISearchRoyaltyFreeImages_200_response_images_inner_license &license);
    bool is_license_Set() const;
    bool is_license_Valid() const;

    QString getThumbnail() const;
    void setThumbnail(const QString &thumbnail);
    bool is_thumbnail_Set() const;
    bool is_thumbnail_Valid() const;

    QString getId() const;
    void setId(const QString &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QString getUrl() const;
    void setUrl(const QString &url);
    bool is_url_Set() const;
    bool is_url_Valid() const;

    qint32 getHeight() const;
    void setHeight(const qint32 &height);
    bool is_height_Set() const;
    bool is_height_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_width;
    bool m_width_isSet;
    bool m_width_isValid;

    OAISearchRoyaltyFreeImages_200_response_images_inner_license m_license;
    bool m_license_isSet;
    bool m_license_isValid;

    QString m_thumbnail;
    bool m_thumbnail_isSet;
    bool m_thumbnail_isValid;

    QString m_id;
    bool m_id_isSet;
    bool m_id_isValid;

    QString m_url;
    bool m_url_isSet;
    bool m_url_isValid;

    qint32 m_height;
    bool m_height_isSet;
    bool m_height_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchRoyaltyFreeImages_200_response_images_inner)

#endif // OAISearchRoyaltyFreeImages_200_response_images_inner_H
