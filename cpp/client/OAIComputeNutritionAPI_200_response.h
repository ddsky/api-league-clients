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
 * OAIComputeNutritionAPI_200_response.h
 *
 * 
 */

#ifndef OAIComputeNutritionAPI_200_response_H
#define OAIComputeNutritionAPI_200_response_H

#include <QJsonObject>

#include "OAIComputeNutritionAPI_200_response_ingredient_breakdown_inner.h"
#include "OAISearchDrinksAPI_200_response_drinks_inner_nutrition_caloric_breakdown.h"
#include "OAISearchDrinksAPI_200_response_drinks_inner_nutrition_flavonoids_inner.h"
#include "OAISearchDrinksAPI_200_response_drinks_inner_nutrition_nutrients_inner.h"
#include "OAISearchDrinksAPI_200_response_drinks_inner_nutrition_weight_per_serving.h"
#include "OAISearchRecipesAPI_200_response_recipes_inner_nutrition_nutrients_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchDrinksAPI_200_response_drinks_inner_nutrition_nutrients_inner;
class OAISearchDrinksAPI_200_response_drinks_inner_nutrition_flavonoids_inner;
class OAISearchRecipesAPI_200_response_recipes_inner_nutrition_nutrients_inner;
class OAIComputeNutritionAPI_200_response_ingredient_breakdown_inner;
class OAISearchDrinksAPI_200_response_drinks_inner_nutrition_caloric_breakdown;
class OAISearchDrinksAPI_200_response_drinks_inner_nutrition_weight_per_serving;

class OAIComputeNutritionAPI_200_response : public OAIObject {
public:
    OAIComputeNutritionAPI_200_response();
    OAIComputeNutritionAPI_200_response(QString json);
    ~OAIComputeNutritionAPI_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAISearchDrinksAPI_200_response_drinks_inner_nutrition_nutrients_inner> getNutrients() const;
    void setNutrients(const QList<OAISearchDrinksAPI_200_response_drinks_inner_nutrition_nutrients_inner> &nutrients);
    bool is_nutrients_Set() const;
    bool is_nutrients_Valid() const;

    QList<OAISearchDrinksAPI_200_response_drinks_inner_nutrition_flavonoids_inner> getProperties() const;
    void setProperties(const QList<OAISearchDrinksAPI_200_response_drinks_inner_nutrition_flavonoids_inner> &properties);
    bool is_properties_Set() const;
    bool is_properties_Valid() const;

    QList<OAISearchRecipesAPI_200_response_recipes_inner_nutrition_nutrients_inner> getFlavonoids() const;
    void setFlavonoids(const QList<OAISearchRecipesAPI_200_response_recipes_inner_nutrition_nutrients_inner> &flavonoids);
    bool is_flavonoids_Set() const;
    bool is_flavonoids_Valid() const;

    QList<OAIComputeNutritionAPI_200_response_ingredient_breakdown_inner> getIngredientBreakdown() const;
    void setIngredientBreakdown(const QList<OAIComputeNutritionAPI_200_response_ingredient_breakdown_inner> &ingredient_breakdown);
    bool is_ingredient_breakdown_Set() const;
    bool is_ingredient_breakdown_Valid() const;

    OAISearchDrinksAPI_200_response_drinks_inner_nutrition_caloric_breakdown getCaloricBreakdown() const;
    void setCaloricBreakdown(const OAISearchDrinksAPI_200_response_drinks_inner_nutrition_caloric_breakdown &caloric_breakdown);
    bool is_caloric_breakdown_Set() const;
    bool is_caloric_breakdown_Valid() const;

    OAISearchDrinksAPI_200_response_drinks_inner_nutrition_weight_per_serving getWeightPerServing() const;
    void setWeightPerServing(const OAISearchDrinksAPI_200_response_drinks_inner_nutrition_weight_per_serving &weight_per_serving);
    bool is_weight_per_serving_Set() const;
    bool is_weight_per_serving_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAISearchDrinksAPI_200_response_drinks_inner_nutrition_nutrients_inner> m_nutrients;
    bool m_nutrients_isSet;
    bool m_nutrients_isValid;

    QList<OAISearchDrinksAPI_200_response_drinks_inner_nutrition_flavonoids_inner> m_properties;
    bool m_properties_isSet;
    bool m_properties_isValid;

    QList<OAISearchRecipesAPI_200_response_recipes_inner_nutrition_nutrients_inner> m_flavonoids;
    bool m_flavonoids_isSet;
    bool m_flavonoids_isValid;

    QList<OAIComputeNutritionAPI_200_response_ingredient_breakdown_inner> m_ingredient_breakdown;
    bool m_ingredient_breakdown_isSet;
    bool m_ingredient_breakdown_isValid;

    OAISearchDrinksAPI_200_response_drinks_inner_nutrition_caloric_breakdown m_caloric_breakdown;
    bool m_caloric_breakdown_isSet;
    bool m_caloric_breakdown_isValid;

    OAISearchDrinksAPI_200_response_drinks_inner_nutrition_weight_per_serving m_weight_per_serving;
    bool m_weight_per_serving_isSet;
    bool m_weight_per_serving_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIComputeNutritionAPI_200_response)

#endif // OAIComputeNutritionAPI_200_response_H
