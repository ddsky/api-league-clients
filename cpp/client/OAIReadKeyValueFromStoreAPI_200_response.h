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
 * OAIReadKeyValueFromStoreAPI_200_response.h
 *
 * 
 */

#ifndef OAIReadKeyValueFromStoreAPI_200_response_H
#define OAIReadKeyValueFromStoreAPI_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIReadKeyValueFromStoreAPI_200_response : public OAIObject {
public:
    OAIReadKeyValueFromStoreAPI_200_response();
    OAIReadKeyValueFromStoreAPI_200_response(QString json);
    ~OAIReadKeyValueFromStoreAPI_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getValue() const;
    void setValue(const QString &value);
    bool is_value_Set() const;
    bool is_value_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_value;
    bool m_value_isSet;
    bool m_value_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIReadKeyValueFromStoreAPI_200_response)

#endif // OAIReadKeyValueFromStoreAPI_200_response_H
