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
 * OAIScoreTextAPI_200_response_skimmability_subscores.h
 *
 * 
 */

#ifndef OAIScoreTextAPI_200_response_skimmability_subscores_H
#define OAIScoreTextAPI_200_response_skimmability_subscores_H

#include <QJsonObject>

#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIScoreTextAPI_200_response_skimmability_subscores : public OAIObject {
public:
    OAIScoreTextAPI_200_response_skimmability_subscores();
    OAIScoreTextAPI_200_response_skimmability_subscores(QString json);
    ~OAIScoreTextAPI_200_response_skimmability_subscores() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<qint32> getBulletPointRatioScore() const;
    void setBulletPointRatioScore(const QList<qint32> &bullet_point_ratio_score);
    bool is_bullet_point_ratio_score_Set() const;
    bool is_bullet_point_ratio_score_Valid() const;

    QList<qint32> getImageScore() const;
    void setImageScore(const QList<qint32> &image_score);
    bool is_image_score_Set() const;
    bool is_image_score_Valid() const;

    QList<qint32> getHighlightedWordRatioScore() const;
    void setHighlightedWordRatioScore(const QList<qint32> &highlighted_word_ratio_score);
    bool is_highlighted_word_ratio_score_Set() const;
    bool is_highlighted_word_ratio_score_Valid() const;

    QList<qint32> getVideoScore() const;
    void setVideoScore(const QList<qint32> &video_score);
    bool is_video_score_Set() const;
    bool is_video_score_Valid() const;

    QList<qint32> getParagraphScore() const;
    void setParagraphScore(const QList<qint32> &paragraph_score);
    bool is_paragraph_score_Set() const;
    bool is_paragraph_score_Valid() const;

    QList<qint32> getParagraphHeadlineRatioScore() const;
    void setParagraphHeadlineRatioScore(const QList<qint32> &paragraph_headline_ratio_score);
    bool is_paragraph_headline_ratio_score_Set() const;
    bool is_paragraph_headline_ratio_score_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<qint32> m_bullet_point_ratio_score;
    bool m_bullet_point_ratio_score_isSet;
    bool m_bullet_point_ratio_score_isValid;

    QList<qint32> m_image_score;
    bool m_image_score_isSet;
    bool m_image_score_isValid;

    QList<qint32> m_highlighted_word_ratio_score;
    bool m_highlighted_word_ratio_score_isSet;
    bool m_highlighted_word_ratio_score_isValid;

    QList<qint32> m_video_score;
    bool m_video_score_isSet;
    bool m_video_score_isValid;

    QList<qint32> m_paragraph_score;
    bool m_paragraph_score_isSet;
    bool m_paragraph_score_isValid;

    QList<qint32> m_paragraph_headline_ratio_score;
    bool m_paragraph_headline_ratio_score_isSet;
    bool m_paragraph_headline_ratio_score_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIScoreTextAPI_200_response_skimmability_subscores)

#endif // OAIScoreTextAPI_200_response_skimmability_subscores_H
