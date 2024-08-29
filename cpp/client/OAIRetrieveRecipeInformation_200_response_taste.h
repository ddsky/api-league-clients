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
 * OAIRetrieveRecipeInformation_200_response_taste.h
 *
 * 
 */

#ifndef OAIRetrieveRecipeInformation_200_response_taste_H
#define OAIRetrieveRecipeInformation_200_response_taste_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRetrieveRecipeInformation_200_response_taste : public OAIObject {
public:
    OAIRetrieveRecipeInformation_200_response_taste();
    OAIRetrieveRecipeInformation_200_response_taste(QString json);
    ~OAIRetrieveRecipeInformation_200_response_taste() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    double getFattiness() const;
    void setFattiness(const double &fattiness);
    bool is_fattiness_Set() const;
    bool is_fattiness_Valid() const;

    qint32 getSpiciness() const;
    void setSpiciness(const qint32 &spiciness);
    bool is_spiciness_Set() const;
    bool is_spiciness_Valid() const;

    qint32 getSaltiness() const;
    void setSaltiness(const qint32 &saltiness);
    bool is_saltiness_Set() const;
    bool is_saltiness_Valid() const;

    double getBitterness() const;
    void setBitterness(const double &bitterness);
    bool is_bitterness_Set() const;
    bool is_bitterness_Valid() const;

    double getSavoriness() const;
    void setSavoriness(const double &savoriness);
    bool is_savoriness_Set() const;
    bool is_savoriness_Valid() const;

    double getSweetness() const;
    void setSweetness(const double &sweetness);
    bool is_sweetness_Set() const;
    bool is_sweetness_Valid() const;

    double getSourness() const;
    void setSourness(const double &sourness);
    bool is_sourness_Set() const;
    bool is_sourness_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    double m_fattiness;
    bool m_fattiness_isSet;
    bool m_fattiness_isValid;

    qint32 m_spiciness;
    bool m_spiciness_isSet;
    bool m_spiciness_isValid;

    qint32 m_saltiness;
    bool m_saltiness_isSet;
    bool m_saltiness_isValid;

    double m_bitterness;
    bool m_bitterness_isSet;
    bool m_bitterness_isValid;

    double m_savoriness;
    bool m_savoriness_isSet;
    bool m_savoriness_isValid;

    double m_sweetness;
    bool m_sweetness_isSet;
    bool m_sweetness_isValid;

    double m_sourness;
    bool m_sourness_isSet;
    bool m_sourness_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRetrieveRecipeInformation_200_response_taste)

#endif // OAIRetrieveRecipeInformation_200_response_taste_H
