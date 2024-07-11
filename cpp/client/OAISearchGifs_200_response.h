/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchGifs_200_response.h
 *
 * 
 */

#ifndef OAISearchGifs_200_response_H
#define OAISearchGifs_200_response_H

#include <QJsonObject>

#include "OAISearchGifs_200_response_images_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchGifs_200_response_images_inner;

class OAISearchGifs_200_response : public OAIObject {
public:
    OAISearchGifs_200_response();
    OAISearchGifs_200_response(QString json);
    ~OAISearchGifs_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAISearchGifs_200_response_images_inner> getImages() const;
    void setImages(const QList<OAISearchGifs_200_response_images_inner> &images);
    bool is_images_Set() const;
    bool is_images_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAISearchGifs_200_response_images_inner> m_images;
    bool m_images_isSet;
    bool m_images_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchGifs_200_response)

#endif // OAISearchGifs_200_response_H
