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
 * OAIExtractEntitiesAPI_200_response.h
 *
 * 
 */

#ifndef OAIExtractEntitiesAPI_200_response_H
#define OAIExtractEntitiesAPI_200_response_H

#include <QJsonObject>

#include "OAIExtractEntitiesAPI_200_response_entities_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIExtractEntitiesAPI_200_response_entities_inner;

class OAIExtractEntitiesAPI_200_response : public OAIObject {
public:
    OAIExtractEntitiesAPI_200_response();
    OAIExtractEntitiesAPI_200_response(QString json);
    ~OAIExtractEntitiesAPI_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAIExtractEntitiesAPI_200_response_entities_inner> getEntities() const;
    void setEntities(const QList<OAIExtractEntitiesAPI_200_response_entities_inner> &entities);
    bool is_entities_Set() const;
    bool is_entities_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAIExtractEntitiesAPI_200_response_entities_inner> m_entities;
    bool m_entities_isSet;
    bool m_entities_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIExtractEntitiesAPI_200_response)

#endif // OAIExtractEntitiesAPI_200_response_H
