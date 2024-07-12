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
 * OAIRetrievePageRank_200_response.h
 *
 * 
 */

#ifndef OAIRetrievePageRank_200_response_H
#define OAIRetrievePageRank_200_response_H

#include <QJsonObject>


#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRetrievePageRank_200_response : public OAIObject {
public:
    OAIRetrievePageRank_200_response();
    OAIRetrievePageRank_200_response(QString json);
    ~OAIRetrievePageRank_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    double getPageRank() const;
    void setPageRank(const double &page_rank);
    bool is_page_rank_Set() const;
    bool is_page_rank_Valid() const;

    qint32 getPosition() const;
    void setPosition(const qint32 &position);
    bool is_position_Set() const;
    bool is_position_Valid() const;

    double getPercentile() const;
    void setPercentile(const double &percentile);
    bool is_percentile_Set() const;
    bool is_percentile_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    double m_page_rank;
    bool m_page_rank_isSet;
    bool m_page_rank_isValid;

    qint32 m_position;
    bool m_position_isSet;
    bool m_position_isValid;

    double m_percentile;
    bool m_percentile_isSet;
    bool m_percentile_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRetrievePageRank_200_response)

#endif // OAIRetrievePageRank_200_response_H
