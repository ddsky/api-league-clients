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
 * OAIScoreText_200_response_interestingness_subscores.h
 *
 * 
 */

#ifndef OAIScoreText_200_response_interestingness_subscores_H
#define OAIScoreText_200_response_interestingness_subscores_H

#include <QJsonObject>

#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIScoreText_200_response_interestingness_subscores : public OAIObject {
public:
    OAIScoreText_200_response_interestingness_subscores();
    OAIScoreText_200_response_interestingness_subscores(QString json);
    ~OAIScoreText_200_response_interestingness_subscores() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<qint32> getTitleRatingScore() const;
    void setTitleRatingScore(const QList<qint32> &title_rating_score);
    bool is_title_rating_score_Set() const;
    bool is_title_rating_score_Valid() const;

    QList<qint32> getQuoteScore() const;
    void setQuoteScore(const QList<qint32> &quote_score);
    bool is_quote_score_Set() const;
    bool is_quote_score_Valid() const;

    QList<qint32> getLengthScore() const;
    void setLengthScore(const QList<qint32> &length_score);
    bool is_length_score_Set() const;
    bool is_length_score_Valid() const;

    QList<qint32> getLinkScore() const;
    void setLinkScore(const QList<qint32> &link_score);
    bool is_link_score_Set() const;
    bool is_link_score_Valid() const;

    QList<qint32> getGoogleHitsScore() const;
    void setGoogleHitsScore(const QList<qint32> &google_hits_score);
    bool is_google_hits_score_Set() const;
    bool is_google_hits_score_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<qint32> m_title_rating_score;
    bool m_title_rating_score_isSet;
    bool m_title_rating_score_isValid;

    QList<qint32> m_quote_score;
    bool m_quote_score_isSet;
    bool m_quote_score_isValid;

    QList<qint32> m_length_score;
    bool m_length_score_isSet;
    bool m_length_score_isValid;

    QList<qint32> m_link_score;
    bool m_link_score_isSet;
    bool m_link_score_isValid;

    QList<qint32> m_google_hits_score;
    bool m_google_hits_score_isSet;
    bool m_google_hits_score_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIScoreText_200_response_interestingness_subscores)

#endif // OAIScoreText_200_response_interestingness_subscores_H
