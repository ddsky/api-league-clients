/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIExtractNews_200_response_images_inner.h
 *
 * 
 */

#ifndef OAIExtractNews_200_response_images_inner_H
#define OAIExtractNews_200_response_images_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIExtractNews_200_response_images_inner : public OAIObject {
public:
    OAIExtractNews_200_response_images_inner();
    OAIExtractNews_200_response_images_inner(QString json);
    ~OAIExtractNews_200_response_images_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getWidth() const;
    void setWidth(const qint32 &width);
    bool is_width_Set() const;
    bool is_width_Valid() const;

    QString getTitle() const;
    void setTitle(const QString &title);
    bool is_title_Set() const;
    bool is_title_Valid() const;

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

    QString m_title;
    bool m_title_isSet;
    bool m_title_isValid;

    QString m_url;
    bool m_url_isSet;
    bool m_url_isValid;

    qint32 m_height;
    bool m_height_isSet;
    bool m_height_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIExtractNews_200_response_images_inner)

#endif // OAIExtractNews_200_response_images_inner_H
