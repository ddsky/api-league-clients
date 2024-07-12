/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIScoreText_200_response_readability_subscores.h
 *
 * 
 */

#ifndef OAIScoreText_200_response_readability_subscores_H
#define OAIScoreText_200_response_readability_subscores_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIScoreText_200_response_readability_subscores : public OAIObject {
public:
    OAIScoreText_200_response_readability_subscores();
    OAIScoreText_200_response_readability_subscores(QString json);
    ~OAIScoreText_200_response_readability_subscores() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getReadingTimeSeconds() const;
    void setReadingTimeSeconds(const qint32 &reading_time_seconds);
    bool is_reading_time_seconds_Set() const;
    bool is_reading_time_seconds_Valid() const;

    double getForcast() const;
    void setForcast(const double &forcast);
    bool is_forcast_Set() const;
    bool is_forcast_Valid() const;

    double getFlesch() const;
    void setFlesch(const double &flesch);
    bool is_flesch_Set() const;
    bool is_flesch_Valid() const;

    double getSmog() const;
    void setSmog(const double &smog);
    bool is_smog_Set() const;
    bool is_smog_Valid() const;

    double getAri() const;
    void setAri(const double &ari);
    bool is_ari_Set() const;
    bool is_ari_Valid() const;

    double getLix() const;
    void setLix(const double &lix);
    bool is_lix_Set() const;
    bool is_lix_Valid() const;

    double getColemanLiau() const;
    void setColemanLiau(const double &coleman_liau);
    bool is_coleman_liau_Set() const;
    bool is_coleman_liau_Valid() const;

    double getKincaid() const;
    void setKincaid(const double &kincaid);
    bool is_kincaid_Set() const;
    bool is_kincaid_Valid() const;

    double getFog() const;
    void setFog(const double &fog);
    bool is_fog_Set() const;
    bool is_fog_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_reading_time_seconds;
    bool m_reading_time_seconds_isSet;
    bool m_reading_time_seconds_isValid;

    double m_forcast;
    bool m_forcast_isSet;
    bool m_forcast_isValid;

    double m_flesch;
    bool m_flesch_isSet;
    bool m_flesch_isValid;

    double m_smog;
    bool m_smog_isSet;
    bool m_smog_isValid;

    double m_ari;
    bool m_ari_isSet;
    bool m_ari_isValid;

    double m_lix;
    bool m_lix_isSet;
    bool m_lix_isValid;

    double m_coleman_liau;
    bool m_coleman_liau_isSet;
    bool m_coleman_liau_isValid;

    double m_kincaid;
    bool m_kincaid_isSet;
    bool m_kincaid_isValid;

    double m_fog;
    bool m_fog_isSet;
    bool m_fog_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIScoreText_200_response_readability_subscores)

#endif // OAIScoreText_200_response_readability_subscores_H
