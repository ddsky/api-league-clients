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
 * OAISearchRestaurants_200_response.h
 *
 * 
 */

#ifndef OAISearchRestaurants_200_response_H
#define OAISearchRestaurants_200_response_H

#include <QJsonObject>

#include "OAISearchRestaurants_200_response_restaurants_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchRestaurants_200_response_restaurants_inner;

class OAISearchRestaurants_200_response : public OAIObject {
public:
    OAISearchRestaurants_200_response();
    OAISearchRestaurants_200_response(QString json);
    ~OAISearchRestaurants_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAISearchRestaurants_200_response_restaurants_inner> getRestaurants() const;
    void setRestaurants(const QList<OAISearchRestaurants_200_response_restaurants_inner> &restaurants);
    bool is_restaurants_Set() const;
    bool is_restaurants_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAISearchRestaurants_200_response_restaurants_inner> m_restaurants;
    bool m_restaurants_isSet;
    bool m_restaurants_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchRestaurants_200_response)

#endif // OAISearchRestaurants_200_response_H
