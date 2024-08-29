/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIScoreText_200_response.h
 *
 * 
 */

#ifndef OAIScoreText_200_response_H
#define OAIScoreText_200_response_H

#include <QJsonObject>

#include "OAIScoreText_200_response_interestingness.h"
#include "OAIScoreText_200_response_readability.h"
#include "OAIScoreText_200_response_skimmability.h"
#include "OAIScoreText_200_response_style.h"

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIScoreText_200_response_readability;
class OAIScoreText_200_response_skimmability;
class OAIScoreText_200_response_interestingness;
class OAIScoreText_200_response_style;

class OAIScoreText_200_response : public OAIObject {
public:
    OAIScoreText_200_response();
    OAIScoreText_200_response(QString json);
    ~OAIScoreText_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getNumberOfWords() const;
    void setNumberOfWords(const qint32 &number_of_words);
    bool is_number_of_words_Set() const;
    bool is_number_of_words_Valid() const;

    qint32 getNumberOfSentences() const;
    void setNumberOfSentences(const qint32 &number_of_sentences);
    bool is_number_of_sentences_Set() const;
    bool is_number_of_sentences_Valid() const;

    OAIScoreText_200_response_readability getReadability() const;
    void setReadability(const OAIScoreText_200_response_readability &readability);
    bool is_readability_Set() const;
    bool is_readability_Valid() const;

    OAIScoreText_200_response_skimmability getSkimmability() const;
    void setSkimmability(const OAIScoreText_200_response_skimmability &skimmability);
    bool is_skimmability_Set() const;
    bool is_skimmability_Valid() const;

    OAIScoreText_200_response_interestingness getInterestingness() const;
    void setInterestingness(const OAIScoreText_200_response_interestingness &interestingness);
    bool is_interestingness_Set() const;
    bool is_interestingness_Valid() const;

    OAIScoreText_200_response_style getStyle() const;
    void setStyle(const OAIScoreText_200_response_style &style);
    bool is_style_Set() const;
    bool is_style_Valid() const;

    double getTotalScore() const;
    void setTotalScore(const double &total_score);
    bool is_total_score_Set() const;
    bool is_total_score_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_number_of_words;
    bool m_number_of_words_isSet;
    bool m_number_of_words_isValid;

    qint32 m_number_of_sentences;
    bool m_number_of_sentences_isSet;
    bool m_number_of_sentences_isValid;

    OAIScoreText_200_response_readability m_readability;
    bool m_readability_isSet;
    bool m_readability_isValid;

    OAIScoreText_200_response_skimmability m_skimmability;
    bool m_skimmability_isSet;
    bool m_skimmability_isValid;

    OAIScoreText_200_response_interestingness m_interestingness;
    bool m_interestingness_isSet;
    bool m_interestingness_isValid;

    OAIScoreText_200_response_style m_style;
    bool m_style_isSet;
    bool m_style_isValid;

    double m_total_score;
    bool m_total_score_isSet;
    bool m_total_score_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIScoreText_200_response)

#endif // OAIScoreText_200_response_H
