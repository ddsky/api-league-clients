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
 * OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown.h
 *
 * 
 */

#ifndef OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown_H
#define OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown : public OAIObject {
public:
    OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown();
    OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown(QString json);
    ~OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    double getPercentFat() const;
    void setPercentFat(const double &percent_fat);
    bool is_percent_fat_Set() const;
    bool is_percent_fat_Valid() const;

    double getPercentCarbs() const;
    void setPercentCarbs(const double &percent_carbs);
    bool is_percent_carbs_Set() const;
    bool is_percent_carbs_Valid() const;

    double getPercentProtein() const;
    void setPercentProtein(const double &percent_protein);
    bool is_percent_protein_Set() const;
    bool is_percent_protein_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    double m_percent_fat;
    bool m_percent_fat_isSet;
    bool m_percent_fat_isValid;

    double m_percent_carbs;
    bool m_percent_carbs_isSet;
    bool m_percent_carbs_isValid;

    double m_percent_protein;
    bool m_percent_protein_isSet;
    bool m_percent_protein_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown)

#endif // OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown_H
