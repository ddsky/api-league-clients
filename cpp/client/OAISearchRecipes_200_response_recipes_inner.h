/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchRecipes_200_response_recipes_inner.h
 *
 * 
 */

#ifndef OAISearchRecipes_200_response_recipes_inner_H
#define OAISearchRecipes_200_response_recipes_inner_H

#include <QJsonObject>

#include "OAISearchRecipes_200_response_recipes_inner_nutrition.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchRecipes_200_response_recipes_inner_nutrition;

class OAISearchRecipes_200_response_recipes_inner : public OAIObject {
public:
    OAISearchRecipes_200_response_recipes_inner();
    OAISearchRecipes_200_response_recipes_inner(QString json);
    ~OAISearchRecipes_200_response_recipes_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<QString> getImages() const;
    void setImages(const QList<QString> &images);
    bool is_images_Set() const;
    bool is_images_Valid() const;

    OAISearchRecipes_200_response_recipes_inner_nutrition getNutrition() const;
    void setNutrition(const OAISearchRecipes_200_response_recipes_inner_nutrition &nutrition);
    bool is_nutrition_Set() const;
    bool is_nutrition_Valid() const;

    qint32 getId() const;
    void setId(const qint32 &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QString getTitle() const;
    void setTitle(const QString &title);
    bool is_title_Set() const;
    bool is_title_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<QString> m_images;
    bool m_images_isSet;
    bool m_images_isValid;

    OAISearchRecipes_200_response_recipes_inner_nutrition m_nutrition;
    bool m_nutrition_isSet;
    bool m_nutrition_isValid;

    qint32 m_id;
    bool m_id_isSet;
    bool m_id_isValid;

    QString m_title;
    bool m_title_isSet;
    bool m_title_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchRecipes_200_response_recipes_inner)

#endif // OAISearchRecipes_200_response_recipes_inner_H
