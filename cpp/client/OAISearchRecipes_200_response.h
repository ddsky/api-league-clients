/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchRecipes_200_response.h
 *
 * 
 */

#ifndef OAISearchRecipes_200_response_H
#define OAISearchRecipes_200_response_H

#include <QJsonObject>

#include "OAISearchRecipes_200_response_recipes_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchRecipes_200_response_recipes_inner;

class OAISearchRecipes_200_response : public OAIObject {
public:
    OAISearchRecipes_200_response();
    OAISearchRecipes_200_response(QString json);
    ~OAISearchRecipes_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getOffset() const;
    void setOffset(const qint32 &offset);
    bool is_offset_Set() const;
    bool is_offset_Valid() const;

    qint32 getNumber() const;
    void setNumber(const qint32 &number);
    bool is_number_Set() const;
    bool is_number_Valid() const;

    QList<OAISearchRecipes_200_response_recipes_inner> getRecipes() const;
    void setRecipes(const QList<OAISearchRecipes_200_response_recipes_inner> &recipes);
    bool is_recipes_Set() const;
    bool is_recipes_Valid() const;

    qint32 getTotalResults() const;
    void setTotalResults(const qint32 &total_results);
    bool is_total_results_Set() const;
    bool is_total_results_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_offset;
    bool m_offset_isSet;
    bool m_offset_isValid;

    qint32 m_number;
    bool m_number_isSet;
    bool m_number_isValid;

    QList<OAISearchRecipes_200_response_recipes_inner> m_recipes;
    bool m_recipes_isSet;
    bool m_recipes_isValid;

    qint32 m_total_results;
    bool m_total_results_isSet;
    bool m_total_results_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchRecipes_200_response)

#endif // OAISearchRecipes_200_response_H
