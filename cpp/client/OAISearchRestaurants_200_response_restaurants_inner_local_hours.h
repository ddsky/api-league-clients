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
 * OAISearchRestaurants_200_response_restaurants_inner_local_hours.h
 *
 * 
 */

#ifndef OAISearchRestaurants_200_response_restaurants_inner_local_hours_H
#define OAISearchRestaurants_200_response_restaurants_inner_local_hours_H

#include <QJsonObject>

#include "OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational.h"

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational;

class OAISearchRestaurants_200_response_restaurants_inner_local_hours : public OAIObject {
public:
    OAISearchRestaurants_200_response_restaurants_inner_local_hours();
    OAISearchRestaurants_200_response_restaurants_inner_local_hours(QString json);
    ~OAISearchRestaurants_200_response_restaurants_inner_local_hours() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational getOperational() const;
    void setOperational(const OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational &operational);
    bool is_operational_Set() const;
    bool is_operational_Valid() const;

    OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational getDelivery() const;
    void setDelivery(const OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational &delivery);
    bool is_delivery_Set() const;
    bool is_delivery_Valid() const;

    OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational getPickup() const;
    void setPickup(const OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational &pickup);
    bool is_pickup_Set() const;
    bool is_pickup_Valid() const;

    OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational getDineIn() const;
    void setDineIn(const OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational &dine_in);
    bool is_dine_in_Set() const;
    bool is_dine_in_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational m_operational;
    bool m_operational_isSet;
    bool m_operational_isValid;

    OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational m_delivery;
    bool m_delivery_isSet;
    bool m_delivery_isValid;

    OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational m_pickup;
    bool m_pickup_isSet;
    bool m_pickup_isValid;

    OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational m_dine_in;
    bool m_dine_in_isSet;
    bool m_dine_in_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchRestaurants_200_response_restaurants_inner_local_hours)

#endif // OAISearchRestaurants_200_response_restaurants_inner_local_hours_H