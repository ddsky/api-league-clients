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
 * OAISingularizeWordAPI_200_response.h
 *
 * 
 */

#ifndef OAISingularizeWordAPI_200_response_H
#define OAISingularizeWordAPI_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISingularizeWordAPI_200_response : public OAIObject {
public:
    OAISingularizeWordAPI_200_response();
    OAISingularizeWordAPI_200_response(QString json);
    ~OAISingularizeWordAPI_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getOriginal() const;
    void setOriginal(const QString &original);
    bool is_original_Set() const;
    bool is_original_Valid() const;

    QString getSingular() const;
    void setSingular(const QString &singular);
    bool is_singular_Set() const;
    bool is_singular_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_original;
    bool m_original_isSet;
    bool m_original_isValid;

    QString m_singular;
    bool m_singular_isSet;
    bool m_singular_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISingularizeWordAPI_200_response)

#endif // OAISingularizeWordAPI_200_response_H
