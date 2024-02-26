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
 * OAIInline_response_200_18_readability_subscores.h
 *
 * 
 */

#ifndef OAIInline_response_200_18_readability_subscores_H
#define OAIInline_response_200_18_readability_subscores_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIInline_response_200_18_readability_subscores : public OAIObject {
public:
    OAIInline_response_200_18_readability_subscores();
    OAIInline_response_200_18_readability_subscores(QString json);
    ~OAIInline_response_200_18_readability_subscores() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getReadingTimeSeconds() const;
    void setReadingTimeSeconds(const qint32 &reading_time_seconds);
    bool is_reading_time_seconds_Set() const;
    bool is_reading_time_seconds_Valid() const;

    qint32 getForcast() const;
    void setForcast(const qint32 &forcast);
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

    qint32 getLix() const;
    void setLix(const qint32 &lix);
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

    qint32 reading_time_seconds;
    bool m_reading_time_seconds_isSet;
    bool m_reading_time_seconds_isValid;

    qint32 forcast;
    bool m_forcast_isSet;
    bool m_forcast_isValid;

    double flesch;
    bool m_flesch_isSet;
    bool m_flesch_isValid;

    double smog;
    bool m_smog_isSet;
    bool m_smog_isValid;

    double ari;
    bool m_ari_isSet;
    bool m_ari_isValid;

    qint32 lix;
    bool m_lix_isSet;
    bool m_lix_isValid;

    double coleman_liau;
    bool m_coleman_liau_isSet;
    bool m_coleman_liau_isValid;

    double kincaid;
    bool m_kincaid_isSet;
    bool m_kincaid_isValid;

    double fog;
    bool m_fog_isSet;
    bool m_fog_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIInline_response_200_18_readability_subscores)

#endif // OAIInline_response_200_18_readability_subscores_H
