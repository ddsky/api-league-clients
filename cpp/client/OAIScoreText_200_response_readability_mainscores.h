/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIScoreText_200_response_readability_mainscores.h
 *
 * 
 */

#ifndef OAIScoreText_200_response_readability_mainscores_H
#define OAIScoreText_200_response_readability_mainscores_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIScoreText_200_response_readability_mainscores : public OAIObject {
public:
    OAIScoreText_200_response_readability_mainscores();
    OAIScoreText_200_response_readability_mainscores(QString json);
    ~OAIScoreText_200_response_readability_mainscores() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getTotalPossible() const;
    void setTotalPossible(const qint32 &total_possible);
    bool is_total_possible_Set() const;
    bool is_total_possible_Valid() const;

    qint32 getTotal() const;
    void setTotal(const qint32 &total);
    bool is_total_Set() const;
    bool is_total_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_total_possible;
    bool m_total_possible_isSet;
    bool m_total_possible_isValid;

    qint32 m_total;
    bool m_total_isSet;
    bool m_total_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIScoreText_200_response_readability_mainscores)

#endif // OAIScoreText_200_response_readability_mainscores_H
