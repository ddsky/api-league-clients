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
 * OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner.h
 *
 * 
 */

#ifndef OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner_H
#define OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner : public OAIObject {
public:
    OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner();
    OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner(QString json);
    ~OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getName() const;
    void setName(const QString &name);
    bool is_name_Set() const;
    bool is_name_Valid() const;

    QString getImage() const;
    void setImage(const QString &image);
    bool is_image_Set() const;
    bool is_image_Valid() const;

    qint32 getId() const;
    void setId(const qint32 &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_name;
    bool m_name_isSet;
    bool m_name_isValid;

    QString m_image;
    bool m_image_isSet;
    bool m_image_isValid;

    qint32 m_id;
    bool m_id_isSet;
    bool m_id_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner)

#endif // OAISearchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner_H
