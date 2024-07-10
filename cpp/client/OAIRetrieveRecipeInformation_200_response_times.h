/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIRetrieveRecipeInformation_200_response_times.h
 *
 * 
 */

#ifndef OAIRetrieveRecipeInformation_200_response_times_H
#define OAIRetrieveRecipeInformation_200_response_times_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRetrieveRecipeInformation_200_response_times : public OAIObject {
public:
    OAIRetrieveRecipeInformation_200_response_times();
    OAIRetrieveRecipeInformation_200_response_times(QString json);
    ~OAIRetrieveRecipeInformation_200_response_times() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getTotalMinutes() const;
    void setTotalMinutes(const qint32 &total_minutes);
    bool is_total_minutes_Set() const;
    bool is_total_minutes_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_total_minutes;
    bool m_total_minutes_isSet;
    bool m_total_minutes_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRetrieveRecipeInformation_200_response_times)

#endif // OAIRetrieveRecipeInformation_200_response_times_H
