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
 * OAITopNewsAPI_200_response_top_news_inner.h
 *
 * 
 */

#ifndef OAITopNewsAPI_200_response_top_news_inner_H
#define OAITopNewsAPI_200_response_top_news_inner_H

#include <QJsonObject>

#include "OAITopNewsAPI_200_response_top_news_inner_news_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAITopNewsAPI_200_response_top_news_inner_news_inner;

class OAITopNewsAPI_200_response_top_news_inner : public OAIObject {
public:
    OAITopNewsAPI_200_response_top_news_inner();
    OAITopNewsAPI_200_response_top_news_inner(QString json);
    ~OAITopNewsAPI_200_response_top_news_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAITopNewsAPI_200_response_top_news_inner_news_inner> getNews() const;
    void setNews(const QList<OAITopNewsAPI_200_response_top_news_inner_news_inner> &news);
    bool is_news_Set() const;
    bool is_news_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAITopNewsAPI_200_response_top_news_inner_news_inner> m_news;
    bool m_news_isSet;
    bool m_news_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAITopNewsAPI_200_response_top_news_inner)

#endif // OAITopNewsAPI_200_response_top_news_inner_H
