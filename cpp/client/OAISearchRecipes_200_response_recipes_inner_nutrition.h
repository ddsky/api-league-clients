/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchRecipes_200_response_recipes_inner_nutrition.h
 *
 * 
 */

#ifndef OAISearchRecipes_200_response_recipes_inner_nutrition_H
#define OAISearchRecipes_200_response_recipes_inner_nutrition_H

#include <QJsonObject>

#include "OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner;

class OAISearchRecipes_200_response_recipes_inner_nutrition : public OAIObject {
public:
    OAISearchRecipes_200_response_recipes_inner_nutrition();
    OAISearchRecipes_200_response_recipes_inner_nutrition(QString json);
    ~OAISearchRecipes_200_response_recipes_inner_nutrition() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner> getNutrients() const;
    void setNutrients(const QList<OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner> &nutrients);
    bool is_nutrients_Set() const;
    bool is_nutrients_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner> m_nutrients;
    bool m_nutrients_isSet;
    bool m_nutrients_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchRecipes_200_response_recipes_inner_nutrition)

#endif // OAISearchRecipes_200_response_recipes_inner_nutrition_H
