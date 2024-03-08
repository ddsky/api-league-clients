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
 * OAIConvertUnits_200_response.h
 *
 * 
 */

#ifndef OAIConvertUnits_200_response_H
#define OAIConvertUnits_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIConvertUnits_200_response : public OAIObject {
public:
    OAIConvertUnits_200_response();
    OAIConvertUnits_200_response(QString json);
    ~OAIConvertUnits_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    double getTargetAmount() const;
    void setTargetAmount(const double &target_amount);
    bool is_target_amount_Set() const;
    bool is_target_amount_Valid() const;

    QString getTargetUnit() const;
    void setTargetUnit(const QString &target_unit);
    bool is_target_unit_Set() const;
    bool is_target_unit_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    double m_target_amount;
    bool m_target_amount_isSet;
    bool m_target_amount_isValid;

    QString m_target_unit;
    bool m_target_unit_isSet;
    bool m_target_unit_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIConvertUnits_200_response)

#endif // OAIConvertUnits_200_response_H