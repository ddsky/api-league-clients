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
 * OAIRetrieveRecipeInformationAPI_200_response_times.h
 *
 * 
 */

#ifndef OAIRetrieveRecipeInformationAPI_200_response_times_H
#define OAIRetrieveRecipeInformationAPI_200_response_times_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRetrieveRecipeInformationAPI_200_response_times : public OAIObject {
public:
    OAIRetrieveRecipeInformationAPI_200_response_times();
    OAIRetrieveRecipeInformationAPI_200_response_times(QString json);
    ~OAIRetrieveRecipeInformationAPI_200_response_times() override;

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

Q_DECLARE_METATYPE(OpenAPI::OAIRetrieveRecipeInformationAPI_200_response_times)

#endif // OAIRetrieveRecipeInformationAPI_200_response_times_H