/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIRandomMeme_200_response.h
 *
 * 
 */

#ifndef OAIRandomMeme_200_response_H
#define OAIRandomMeme_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRandomMeme_200_response : public OAIObject {
public:
    OAIRandomMeme_200_response();
    OAIRandomMeme_200_response(QString json);
    ~OAIRandomMeme_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getDescription() const;
    void setDescription(const QString &description);
    bool is_description_Set() const;
    bool is_description_Valid() const;

    QString getUrl() const;
    void setUrl(const QString &url);
    bool is_url_Set() const;
    bool is_url_Valid() const;

    QString getType() const;
    void setType(const QString &type);
    bool is_type_Set() const;
    bool is_type_Valid() const;

    qint32 getWidth() const;
    void setWidth(const qint32 &width);
    bool is_width_Set() const;
    bool is_width_Valid() const;

    qint32 getHeight() const;
    void setHeight(const qint32 &height);
    bool is_height_Set() const;
    bool is_height_Valid() const;

    double getRatio() const;
    void setRatio(const double &ratio);
    bool is_ratio_Set() const;
    bool is_ratio_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_description;
    bool m_description_isSet;
    bool m_description_isValid;

    QString m_url;
    bool m_url_isSet;
    bool m_url_isValid;

    QString m_type;
    bool m_type_isSet;
    bool m_type_isValid;

    qint32 m_width;
    bool m_width_isSet;
    bool m_width_isValid;

    qint32 m_height;
    bool m_height_isSet;
    bool m_height_isValid;

    double m_ratio;
    bool m_ratio_isSet;
    bool m_ratio_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRandomMeme_200_response)

#endif // OAIRandomMeme_200_response_H
