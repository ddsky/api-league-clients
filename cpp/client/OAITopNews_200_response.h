/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAITopNews_200_response.h
 *
 * 
 */

#ifndef OAITopNews_200_response_H
#define OAITopNews_200_response_H

#include <QJsonObject>

#include "OAITopNews_200_response_top_news_inner.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAITopNews_200_response_top_news_inner;

class OAITopNews_200_response : public OAIObject {
public:
    OAITopNews_200_response();
    OAITopNews_200_response(QString json);
    ~OAITopNews_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAITopNews_200_response_top_news_inner> getTopNews() const;
    void setTopNews(const QList<OAITopNews_200_response_top_news_inner> &top_news);
    bool is_top_news_Set() const;
    bool is_top_news_Valid() const;

    QString getLanguage() const;
    void setLanguage(const QString &language);
    bool is_language_Set() const;
    bool is_language_Valid() const;

    QString getCountry() const;
    void setCountry(const QString &country);
    bool is_country_Set() const;
    bool is_country_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAITopNews_200_response_top_news_inner> m_top_news;
    bool m_top_news_isSet;
    bool m_top_news_isValid;

    QString m_language;
    bool m_language_isSet;
    bool m_language_isValid;

    QString m_country;
    bool m_country_isSet;
    bool m_country_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAITopNews_200_response)

#endif // OAITopNews_200_response_H
