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
 * OAIRandomRiddle_200_response.h
 *
 * 
 */

#ifndef OAIRandomRiddle_200_response_H
#define OAIRandomRiddle_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRandomRiddle_200_response : public OAIObject {
public:
    OAIRandomRiddle_200_response();
    OAIRandomRiddle_200_response(QString json);
    ~OAIRandomRiddle_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getRiddle() const;
    void setRiddle(const QString &riddle);
    bool is_riddle_Set() const;
    bool is_riddle_Valid() const;

    QString getAnswer() const;
    void setAnswer(const QString &answer);
    bool is_answer_Set() const;
    bool is_answer_Valid() const;

    QString getDifficulty() const;
    void setDifficulty(const QString &difficulty);
    bool is_difficulty_Set() const;
    bool is_difficulty_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_riddle;
    bool m_riddle_isSet;
    bool m_riddle_isValid;

    QString m_answer;
    bool m_answer_isSet;
    bool m_answer_isValid;

    QString m_difficulty;
    bool m_difficulty_isSet;
    bool m_difficulty_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRandomRiddle_200_response)

#endif // OAIRandomRiddle_200_response_H
