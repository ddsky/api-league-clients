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
 * OAIRetrieveRecipeInformation_200_response_dietary_properties.h
 *
 * 
 */

#ifndef OAIRetrieveRecipeInformation_200_response_dietary_properties_H
#define OAIRetrieveRecipeInformation_200_response_dietary_properties_H

#include <QJsonObject>

#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRetrieveRecipeInformation_200_response_dietary_properties : public OAIObject {
public:
    OAIRetrieveRecipeInformation_200_response_dietary_properties();
    OAIRetrieveRecipeInformation_200_response_dietary_properties(QString json);
    ~OAIRetrieveRecipeInformation_200_response_dietary_properties() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    bool isLowFodmap() const;
    void setLowFodmap(const bool &low_fodmap);
    bool is_low_fodmap_Set() const;
    bool is_low_fodmap_Valid() const;

    bool isVegetarian() const;
    void setVegetarian(const bool &vegetarian);
    bool is_vegetarian_Set() const;
    bool is_vegetarian_Valid() const;

    bool isVegan() const;
    void setVegan(const bool &vegan);
    bool is_vegan_Set() const;
    bool is_vegan_Valid() const;

    bool isGlutenFree() const;
    void setGlutenFree(const bool &gluten_free);
    bool is_gluten_free_Set() const;
    bool is_gluten_free_Valid() const;

    bool isDairyFree() const;
    void setDairyFree(const bool &dairy_free);
    bool is_dairy_free_Set() const;
    bool is_dairy_free_Valid() const;

    QString getGaps() const;
    void setGaps(const QString &gaps);
    bool is_gaps_Set() const;
    bool is_gaps_Valid() const;

    QList<QString> getDiets() const;
    void setDiets(const QList<QString> &diets);
    bool is_diets_Set() const;
    bool is_diets_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    bool m_low_fodmap;
    bool m_low_fodmap_isSet;
    bool m_low_fodmap_isValid;

    bool m_vegetarian;
    bool m_vegetarian_isSet;
    bool m_vegetarian_isValid;

    bool m_vegan;
    bool m_vegan_isSet;
    bool m_vegan_isValid;

    bool m_gluten_free;
    bool m_gluten_free_isSet;
    bool m_gluten_free_isValid;

    bool m_dairy_free;
    bool m_dairy_free_isSet;
    bool m_dairy_free_isValid;

    QString m_gaps;
    bool m_gaps_isSet;
    bool m_gaps_isValid;

    QList<QString> m_diets;
    bool m_diets_isSet;
    bool m_diets_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRetrieveRecipeInformation_200_response_dietary_properties)

#endif // OAIRetrieveRecipeInformation_200_response_dietary_properties_H
