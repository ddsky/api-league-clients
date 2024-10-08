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
 * OAICorrectSpelling_200_response.h
 *
 * 
 */

#ifndef OAICorrectSpelling_200_response_H
#define OAICorrectSpelling_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAICorrectSpelling_200_response : public OAIObject {
public:
    OAICorrectSpelling_200_response();
    OAICorrectSpelling_200_response(QString json);
    ~OAICorrectSpelling_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getCorrectedText() const;
    void setCorrectedText(const QString &corrected_text);
    bool is_corrected_text_Set() const;
    bool is_corrected_text_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_corrected_text;
    bool m_corrected_text_isSet;
    bool m_corrected_text_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAICorrectSpelling_200_response)

#endif // OAICorrectSpelling_200_response_H
