/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIRetrieveRecipeInformation_200_response.h
 *
 * 
 */

#ifndef OAIRetrieveRecipeInformation_200_response_H
#define OAIRetrieveRecipeInformation_200_response_H

#include <QJsonObject>

#include "OAIRetrieveRecipeInformation_200_response_credits.h"
#include "OAIRetrieveRecipeInformation_200_response_dietary_properties.h"
#include "OAIRetrieveRecipeInformation_200_response_ingredients_inner.h"
#include "OAIRetrieveRecipeInformation_200_response_instructions_inner.h"
#include "OAIRetrieveRecipeInformation_200_response_nutrition.h"
#include "OAIRetrieveRecipeInformation_200_response_scores.h"
#include "OAIRetrieveRecipeInformation_200_response_taste.h"
#include "OAIRetrieveRecipeInformation_200_response_times.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIRetrieveRecipeInformation_200_response_dietary_properties;
class OAIRetrieveRecipeInformation_200_response_times;
class OAIRetrieveRecipeInformation_200_response_nutrition;
class OAIRetrieveRecipeInformation_200_response_taste;
class OAIRetrieveRecipeInformation_200_response_ingredients_inner;
class OAIRetrieveRecipeInformation_200_response_instructions_inner;
class OAIRetrieveRecipeInformation_200_response_credits;
class OAIRetrieveRecipeInformation_200_response_scores;

class OAIRetrieveRecipeInformation_200_response : public OAIObject {
public:
    OAIRetrieveRecipeInformation_200_response();
    OAIRetrieveRecipeInformation_200_response(QString json);
    ~OAIRetrieveRecipeInformation_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getId() const;
    void setId(const qint32 &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QString getTitle() const;
    void setTitle(const QString &title);
    bool is_title_Set() const;
    bool is_title_Valid() const;

    qint32 getServings() const;
    void setServings(const qint32 &servings);
    bool is_servings_Set() const;
    bool is_servings_Valid() const;

    QList<QString> getImages() const;
    void setImages(const QList<QString> &images);
    bool is_images_Set() const;
    bool is_images_Valid() const;

    OAIRetrieveRecipeInformation_200_response_dietary_properties getDietaryProperties() const;
    void setDietaryProperties(const OAIRetrieveRecipeInformation_200_response_dietary_properties &dietary_properties);
    bool is_dietary_properties_Set() const;
    bool is_dietary_properties_Valid() const;

    double getPricePerServing() const;
    void setPricePerServing(const double &price_per_serving);
    bool is_price_per_serving_Set() const;
    bool is_price_per_serving_Valid() const;

    OAIRetrieveRecipeInformation_200_response_times getTimes() const;
    void setTimes(const OAIRetrieveRecipeInformation_200_response_times &times);
    bool is_times_Set() const;
    bool is_times_Valid() const;

    OAIRetrieveRecipeInformation_200_response_nutrition getNutrition() const;
    void setNutrition(const OAIRetrieveRecipeInformation_200_response_nutrition &nutrition);
    bool is_nutrition_Set() const;
    bool is_nutrition_Valid() const;

    OAIRetrieveRecipeInformation_200_response_taste getTaste() const;
    void setTaste(const OAIRetrieveRecipeInformation_200_response_taste &taste);
    bool is_taste_Set() const;
    bool is_taste_Valid() const;

    QList<QString> getCuisines() const;
    void setCuisines(const QList<QString> &cuisines);
    bool is_cuisines_Set() const;
    bool is_cuisines_Valid() const;

    QList<QString> getMealTypes() const;
    void setMealTypes(const QList<QString> &meal_types);
    bool is_meal_types_Set() const;
    bool is_meal_types_Valid() const;

    QList<QString> getOccasions() const;
    void setOccasions(const QList<QString> &occasions);
    bool is_occasions_Set() const;
    bool is_occasions_Valid() const;

    QList<OAIRetrieveRecipeInformation_200_response_ingredients_inner> getIngredients() const;
    void setIngredients(const QList<OAIRetrieveRecipeInformation_200_response_ingredients_inner> &ingredients);
    bool is_ingredients_Set() const;
    bool is_ingredients_Valid() const;

    QList<OAIRetrieveRecipeInformation_200_response_instructions_inner> getInstructions() const;
    void setInstructions(const QList<OAIRetrieveRecipeInformation_200_response_instructions_inner> &instructions);
    bool is_instructions_Set() const;
    bool is_instructions_Valid() const;

    OAIRetrieveRecipeInformation_200_response_credits getCredits() const;
    void setCredits(const OAIRetrieveRecipeInformation_200_response_credits &credits);
    bool is_credits_Set() const;
    bool is_credits_Valid() const;

    OAIRetrieveRecipeInformation_200_response_scores getScores() const;
    void setScores(const OAIRetrieveRecipeInformation_200_response_scores &scores);
    bool is_scores_Set() const;
    bool is_scores_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_id;
    bool m_id_isSet;
    bool m_id_isValid;

    QString m_title;
    bool m_title_isSet;
    bool m_title_isValid;

    qint32 m_servings;
    bool m_servings_isSet;
    bool m_servings_isValid;

    QList<QString> m_images;
    bool m_images_isSet;
    bool m_images_isValid;

    OAIRetrieveRecipeInformation_200_response_dietary_properties m_dietary_properties;
    bool m_dietary_properties_isSet;
    bool m_dietary_properties_isValid;

    double m_price_per_serving;
    bool m_price_per_serving_isSet;
    bool m_price_per_serving_isValid;

    OAIRetrieveRecipeInformation_200_response_times m_times;
    bool m_times_isSet;
    bool m_times_isValid;

    OAIRetrieveRecipeInformation_200_response_nutrition m_nutrition;
    bool m_nutrition_isSet;
    bool m_nutrition_isValid;

    OAIRetrieveRecipeInformation_200_response_taste m_taste;
    bool m_taste_isSet;
    bool m_taste_isValid;

    QList<QString> m_cuisines;
    bool m_cuisines_isSet;
    bool m_cuisines_isValid;

    QList<QString> m_meal_types;
    bool m_meal_types_isSet;
    bool m_meal_types_isValid;

    QList<QString> m_occasions;
    bool m_occasions_isSet;
    bool m_occasions_isValid;

    QList<OAIRetrieveRecipeInformation_200_response_ingredients_inner> m_ingredients;
    bool m_ingredients_isSet;
    bool m_ingredients_isValid;

    QList<OAIRetrieveRecipeInformation_200_response_instructions_inner> m_instructions;
    bool m_instructions_isSet;
    bool m_instructions_isValid;

    OAIRetrieveRecipeInformation_200_response_credits m_credits;
    bool m_credits_isSet;
    bool m_credits_isValid;

    OAIRetrieveRecipeInformation_200_response_scores m_scores;
    bool m_scores_isSet;
    bool m_scores_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRetrieveRecipeInformation_200_response)

#endif // OAIRetrieveRecipeInformation_200_response_H
