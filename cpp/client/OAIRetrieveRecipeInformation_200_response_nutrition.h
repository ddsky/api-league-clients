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
 * OAIRetrieveRecipeInformation_200_response_nutrition.h
 *
 * 
 */

#ifndef OAIRetrieveRecipeInformation_200_response_nutrition_H
#define OAIRetrieveRecipeInformation_200_response_nutrition_H

#include <QJsonObject>

#include "OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown.h"
#include "OAIRetrieveRecipeInformation_200_response_nutrition_flavonoids_inner.h"
#include "OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner.h"
#include "OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner_nutrients_inner.h"
#include "OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving.h"
#include "OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving;
class OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown;
class OAIRetrieveRecipeInformation_200_response_nutrition_flavonoids_inner;
class OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner;
class OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner;
class OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner_nutrients_inner;

class OAIRetrieveRecipeInformation_200_response_nutrition : public OAIObject {
public:
    OAIRetrieveRecipeInformation_200_response_nutrition();
    OAIRetrieveRecipeInformation_200_response_nutrition(QString json);
    ~OAIRetrieveRecipeInformation_200_response_nutrition() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving getWeightPerServing() const;
    void setWeightPerServing(const OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving &weight_per_serving);
    bool is_weight_per_serving_Set() const;
    bool is_weight_per_serving_Valid() const;

    OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown getCaloricBreakdown() const;
    void setCaloricBreakdown(const OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown &caloric_breakdown);
    bool is_caloric_breakdown_Set() const;
    bool is_caloric_breakdown_Valid() const;

    QList<OAIRetrieveRecipeInformation_200_response_nutrition_flavonoids_inner> getFlavonoids() const;
    void setFlavonoids(const QList<OAIRetrieveRecipeInformation_200_response_nutrition_flavonoids_inner> &flavonoids);
    bool is_flavonoids_Set() const;
    bool is_flavonoids_Valid() const;

    QList<OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner> getIngredientBreakdown() const;
    void setIngredientBreakdown(const QList<OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner> &ingredient_breakdown);
    bool is_ingredient_breakdown_Set() const;
    bool is_ingredient_breakdown_Valid() const;

    QList<OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner> getProperties() const;
    void setProperties(const QList<OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner> &properties);
    bool is_properties_Set() const;
    bool is_properties_Valid() const;

    QList<OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner_nutrients_inner> getNutrients() const;
    void setNutrients(const QList<OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner_nutrients_inner> &nutrients);
    bool is_nutrients_Set() const;
    bool is_nutrients_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAIRetrieveRecipeInformation_200_response_nutrition_weight_per_serving m_weight_per_serving;
    bool m_weight_per_serving_isSet;
    bool m_weight_per_serving_isValid;

    OAIRetrieveRecipeInformation_200_response_nutrition_caloric_breakdown m_caloric_breakdown;
    bool m_caloric_breakdown_isSet;
    bool m_caloric_breakdown_isValid;

    QList<OAIRetrieveRecipeInformation_200_response_nutrition_flavonoids_inner> m_flavonoids;
    bool m_flavonoids_isSet;
    bool m_flavonoids_isValid;

    QList<OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner> m_ingredient_breakdown;
    bool m_ingredient_breakdown_isSet;
    bool m_ingredient_breakdown_isValid;

    QList<OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner> m_properties;
    bool m_properties_isSet;
    bool m_properties_isValid;

    QList<OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner_nutrients_inner> m_nutrients;
    bool m_nutrients_isSet;
    bool m_nutrients_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRetrieveRecipeInformation_200_response_nutrition)

#endif // OAIRetrieveRecipeInformation_200_response_nutrition_H
