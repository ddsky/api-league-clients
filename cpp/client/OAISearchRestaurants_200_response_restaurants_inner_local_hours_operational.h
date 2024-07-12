/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational.h
 *
 * 
 */

#ifndef OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational_H
#define OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational : public OAIObject {
public:
    OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational();
    OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational(QString json);
    ~OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getSunday() const;
    void setSunday(const QString &sunday);
    bool is_sunday_Set() const;
    bool is_sunday_Valid() const;

    QString getSaturday() const;
    void setSaturday(const QString &saturday);
    bool is_saturday_Set() const;
    bool is_saturday_Valid() const;

    QString getTuesday() const;
    void setTuesday(const QString &tuesday);
    bool is_tuesday_Set() const;
    bool is_tuesday_Valid() const;

    QString getThursday() const;
    void setThursday(const QString &thursday);
    bool is_thursday_Set() const;
    bool is_thursday_Valid() const;

    QString getFriday() const;
    void setFriday(const QString &friday);
    bool is_friday_Set() const;
    bool is_friday_Valid() const;

    QString getWednesday() const;
    void setWednesday(const QString &wednesday);
    bool is_wednesday_Set() const;
    bool is_wednesday_Valid() const;

    QString getMonday() const;
    void setMonday(const QString &monday);
    bool is_monday_Set() const;
    bool is_monday_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_sunday;
    bool m_sunday_isSet;
    bool m_sunday_isValid;

    QString m_saturday;
    bool m_saturday_isSet;
    bool m_saturday_isValid;

    QString m_tuesday;
    bool m_tuesday_isSet;
    bool m_tuesday_isValid;

    QString m_thursday;
    bool m_thursday_isSet;
    bool m_thursday_isValid;

    QString m_friday;
    bool m_friday_isSet;
    bool m_friday_isValid;

    QString m_wednesday;
    bool m_wednesday_isSet;
    bool m_wednesday_isValid;

    QString m_monday;
    bool m_monday_isSet;
    bool m_monday_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational)

#endif // OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational_H
