/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIDetectLanguage_200_response_inner.h
 *
 * 
 */

#ifndef OAIDetectLanguage_200_response_inner_H
#define OAIDetectLanguage_200_response_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIDetectLanguage_200_response_inner : public OAIObject {
public:
    OAIDetectLanguage_200_response_inner();
    OAIDetectLanguage_200_response_inner(QString json);
    ~OAIDetectLanguage_200_response_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getLanguage() const;
    void setLanguage(const QString &language);
    bool is_language_Set() const;
    bool is_language_Valid() const;

    double getConfidence() const;
    void setConfidence(const double &confidence);
    bool is_confidence_Set() const;
    bool is_confidence_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_language;
    bool m_language_isSet;
    bool m_language_isValid;

    double m_confidence;
    bool m_confidence_isSet;
    bool m_confidence_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIDetectLanguage_200_response_inner)

#endif // OAIDetectLanguage_200_response_inner_H
