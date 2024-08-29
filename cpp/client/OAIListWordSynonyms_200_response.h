/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIListWordSynonyms_200_response.h
 *
 * 
 */

#ifndef OAIListWordSynonyms_200_response_H
#define OAIListWordSynonyms_200_response_H

#include <QJsonObject>

#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIListWordSynonyms_200_response : public OAIObject {
public:
    OAIListWordSynonyms_200_response();
    OAIListWordSynonyms_200_response(QString json);
    ~OAIListWordSynonyms_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<QString> getSynonyms() const;
    void setSynonyms(const QList<QString> &synonyms);
    bool is_synonyms_Set() const;
    bool is_synonyms_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<QString> m_synonyms;
    bool m_synonyms_isSet;
    bool m_synonyms_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIListWordSynonyms_200_response)

#endif // OAIListWordSynonyms_200_response_H
