/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISingularizeWord_200_response.h
 *
 * 
 */

#ifndef OAISingularizeWord_200_response_H
#define OAISingularizeWord_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISingularizeWord_200_response : public OAIObject {
public:
    OAISingularizeWord_200_response();
    OAISingularizeWord_200_response(QString json);
    ~OAISingularizeWord_200_response() override;

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

Q_DECLARE_METATYPE(OpenAPI::OAISingularizeWord_200_response)

#endif // OAISingularizeWord_200_response_H