/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchDrinks_200_response_drinks_inner_ingredients_inner.h
 *
 * 
 */

#ifndef OAISearchDrinks_200_response_drinks_inner_ingredients_inner_H
#define OAISearchDrinks_200_response_drinks_inner_ingredients_inner_H

#include <QJsonObject>

#include "OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures;

class OAISearchDrinks_200_response_drinks_inner_ingredients_inner : public OAIObject {
public:
    OAISearchDrinks_200_response_drinks_inner_ingredients_inner();
    OAISearchDrinks_200_response_drinks_inner_ingredients_inner(QString json);
    ~OAISearchDrinks_200_response_drinks_inner_ingredients_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getImage() const;
    void setImage(const QString &image);
    bool is_image_Set() const;
    bool is_image_Valid() const;

    QString getNameClean() const;
    void setNameClean(const QString &name_clean);
    bool is_name_clean_Set() const;
    bool is_name_clean_Valid() const;

    qint32 getAmount() const;
    void setAmount(const qint32 &amount);
    bool is_amount_Set() const;
    bool is_amount_Valid() const;

    QString getUnit() const;
    void setUnit(const QString &unit);
    bool is_unit_Set() const;
    bool is_unit_Valid() const;

    OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures getMeasures() const;
    void setMeasures(const OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures &measures);
    bool is_measures_Set() const;
    bool is_measures_Valid() const;

    QString getOriginal() const;
    void setOriginal(const QString &original);
    bool is_original_Set() const;
    bool is_original_Valid() const;

    QList<QString> getMeta() const;
    void setMeta(const QList<QString> &meta);
    bool is_meta_Set() const;
    bool is_meta_Valid() const;

    QString getOriginalName() const;
    void setOriginalName(const QString &original_name);
    bool is_original_name_Set() const;
    bool is_original_name_Valid() const;

    QString getName() const;
    void setName(const QString &name);
    bool is_name_Set() const;
    bool is_name_Valid() const;

    qint32 getId() const;
    void setId(const qint32 &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QString getAisle() const;
    void setAisle(const QString &aisle);
    bool is_aisle_Set() const;
    bool is_aisle_Valid() const;

    QString getConsistency() const;
    void setConsistency(const QString &consistency);
    bool is_consistency_Set() const;
    bool is_consistency_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_image;
    bool m_image_isSet;
    bool m_image_isValid;

    QString m_name_clean;
    bool m_name_clean_isSet;
    bool m_name_clean_isValid;

    qint32 m_amount;
    bool m_amount_isSet;
    bool m_amount_isValid;

    QString m_unit;
    bool m_unit_isSet;
    bool m_unit_isValid;

    OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures m_measures;
    bool m_measures_isSet;
    bool m_measures_isValid;

    QString m_original;
    bool m_original_isSet;
    bool m_original_isValid;

    QList<QString> m_meta;
    bool m_meta_isSet;
    bool m_meta_isValid;

    QString m_original_name;
    bool m_original_name_isSet;
    bool m_original_name_isValid;

    QString m_name;
    bool m_name_isSet;
    bool m_name_isValid;

    qint32 m_id;
    bool m_id_isSet;
    bool m_id_isValid;

    QString m_aisle;
    bool m_aisle_isSet;
    bool m_aisle_isValid;

    QString m_consistency;
    bool m_consistency_isSet;
    bool m_consistency_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchDrinks_200_response_drinks_inner_ingredients_inner)

#endif // OAISearchDrinks_200_response_drinks_inner_ingredients_inner_H