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
 * OAISearchRoyaltyFreeImages_200_response_images_inner_license.h
 *
 * 
 */

#ifndef OAISearchRoyaltyFreeImages_200_response_images_inner_license_H
#define OAISearchRoyaltyFreeImages_200_response_images_inner_license_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISearchRoyaltyFreeImages_200_response_images_inner_license : public OAIObject {
public:
    OAISearchRoyaltyFreeImages_200_response_images_inner_license();
    OAISearchRoyaltyFreeImages_200_response_images_inner_license(QString json);
    ~OAISearchRoyaltyFreeImages_200_response_images_inner_license() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getName() const;
    void setName(const QString &name);
    bool is_name_Set() const;
    bool is_name_Valid() const;

    QString getLink() const;
    void setLink(const QString &link);
    bool is_link_Set() const;
    bool is_link_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_name;
    bool m_name_isSet;
    bool m_name_isValid;

    QString m_link;
    bool m_link_isSet;
    bool m_link_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchRoyaltyFreeImages_200_response_images_inner_license)

#endif // OAISearchRoyaltyFreeImages_200_response_images_inner_license_H
