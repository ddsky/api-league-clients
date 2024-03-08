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
 * OAIExtractPublishDate_200_response.h
 *
 * 
 */

#ifndef OAIExtractPublishDate_200_response_H
#define OAIExtractPublishDate_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIExtractPublishDate_200_response : public OAIObject {
public:
    OAIExtractPublishDate_200_response();
    OAIExtractPublishDate_200_response(QString json);
    ~OAIExtractPublishDate_200_response() override;

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

Q_DECLARE_METATYPE(OpenAPI::OAIExtractPublishDate_200_response)

#endif // OAIExtractPublishDate_200_response_H
