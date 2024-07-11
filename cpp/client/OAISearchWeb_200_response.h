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
 * OAISearchWeb_200_response.h
 *
 * 
 */

#ifndef OAISearchWeb_200_response_H
#define OAISearchWeb_200_response_H

#include <QJsonObject>

#include "OAISearchWeb_200_response_results_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchWeb_200_response_results_inner;

class OAISearchWeb_200_response : public OAIObject {
public:
    OAISearchWeb_200_response();
    OAISearchWeb_200_response(QString json);
    ~OAISearchWeb_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAISearchWeb_200_response_results_inner> getResults() const;
    void setResults(const QList<OAISearchWeb_200_response_results_inner> &results);
    bool is_results_Set() const;
    bool is_results_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAISearchWeb_200_response_results_inner> m_results;
    bool m_results_isSet;
    bool m_results_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchWeb_200_response)

#endif // OAISearchWeb_200_response_H
