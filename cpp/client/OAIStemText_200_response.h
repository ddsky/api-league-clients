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
 * OAIStemText_200_response.h
 *
 * 
 */

#ifndef OAIStemText_200_response_H
#define OAIStemText_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIStemText_200_response : public OAIObject {
public:
    OAIStemText_200_response();
    OAIStemText_200_response(QString json);
    ~OAIStemText_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getOriginal() const;
    void setOriginal(const QString &original);
    bool is_original_Set() const;
    bool is_original_Valid() const;

    QString getStemmed() const;
    void setStemmed(const QString &stemmed);
    bool is_stemmed_Set() const;
    bool is_stemmed_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_original;
    bool m_original_isSet;
    bool m_original_isValid;

    QString m_stemmed;
    bool m_stemmed_isSet;
    bool m_stemmed_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIStemText_200_response)

#endif // OAIStemText_200_response_H
