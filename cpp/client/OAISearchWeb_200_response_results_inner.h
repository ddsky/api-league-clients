/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchWeb_200_response_results_inner.h
 *
 * 
 */

#ifndef OAISearchWeb_200_response_results_inner_H
#define OAISearchWeb_200_response_results_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISearchWeb_200_response_results_inner : public OAIObject {
public:
    OAISearchWeb_200_response_results_inner();
    OAISearchWeb_200_response_results_inner(QString json);
    ~OAISearchWeb_200_response_results_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getTitle() const;
    void setTitle(const QString &title);
    bool is_title_Set() const;
    bool is_title_Valid() const;

    QString getSummary() const;
    void setSummary(const QString &summary);
    bool is_summary_Set() const;
    bool is_summary_Valid() const;

    QString getUrl() const;
    void setUrl(const QString &url);
    bool is_url_Set() const;
    bool is_url_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_title;
    bool m_title_isSet;
    bool m_title_isValid;

    QString m_summary;
    bool m_summary_isSet;
    bool m_summary_isValid;

    QString m_url;
    bool m_url_isSet;
    bool m_url_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchWeb_200_response_results_inner)

#endif // OAISearchWeb_200_response_results_inner_H
