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
 * OAIExtractPublishDateAPI_200_response.h
 *
 * 
 */

#ifndef OAIExtractPublishDateAPI_200_response_H
#define OAIExtractPublishDateAPI_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIExtractPublishDateAPI_200_response : public OAIObject {
public:
    OAIExtractPublishDateAPI_200_response();
    OAIExtractPublishDateAPI_200_response(QString json);
    ~OAIExtractPublishDateAPI_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getPublishDate() const;
    void setPublishDate(const QString &publish_date);
    bool is_publish_date_Set() const;
    bool is_publish_date_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_publish_date;
    bool m_publish_date_isSet;
    bool m_publish_date_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIExtractPublishDateAPI_200_response)

#endif // OAIExtractPublishDateAPI_200_response_H