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
 * OAISearchDrinks_200_response.h
 *
 * 
 */

#ifndef OAISearchDrinks_200_response_H
#define OAISearchDrinks_200_response_H

#include <QJsonObject>

#include "OAISearchDrinks_200_response_drinks_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchDrinks_200_response_drinks_inner;

class OAISearchDrinks_200_response : public OAIObject {
public:
    OAISearchDrinks_200_response();
    OAISearchDrinks_200_response(QString json);
    ~OAISearchDrinks_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getOffset() const;
    void setOffset(const qint32 &offset);
    bool is_offset_Set() const;
    bool is_offset_Valid() const;

    qint32 getNumber() const;
    void setNumber(const qint32 &number);
    bool is_number_Set() const;
    bool is_number_Valid() const;

    QList<OAISearchDrinks_200_response_drinks_inner> getDrinks() const;
    void setDrinks(const QList<OAISearchDrinks_200_response_drinks_inner> &drinks);
    bool is_drinks_Set() const;
    bool is_drinks_Valid() const;

    qint32 getTotalResults() const;
    void setTotalResults(const qint32 &total_results);
    bool is_total_results_Set() const;
    bool is_total_results_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_offset;
    bool m_offset_isSet;
    bool m_offset_isValid;

    qint32 m_number;
    bool m_number_isSet;
    bool m_number_isValid;

    QList<OAISearchDrinks_200_response_drinks_inner> m_drinks;
    bool m_drinks_isSet;
    bool m_drinks_isValid;

    qint32 m_total_results;
    bool m_total_results_isSet;
    bool m_total_results_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchDrinks_200_response)

#endif // OAISearchDrinks_200_response_H
