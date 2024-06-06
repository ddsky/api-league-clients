/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIDetectMainImageColor_200_response_inner.h
 *
 * 
 */

#ifndef OAIDetectMainImageColor_200_response_inner_H
#define OAIDetectMainImageColor_200_response_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIDetectMainImageColor_200_response_inner : public OAIObject {
public:
    OAIDetectMainImageColor_200_response_inner();
    OAIDetectMainImageColor_200_response_inner(QString json);
    ~OAIDetectMainImageColor_200_response_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getSpecificColor() const;
    void setSpecificColor(const QString &specific_color);
    bool is_specific_color_Set() const;
    bool is_specific_color_Valid() const;

    QString getMainColor() const;
    void setMainColor(const QString &main_color);
    bool is_main_color_Set() const;
    bool is_main_color_Valid() const;

    QString getHexCode() const;
    void setHexCode(const QString &hex_code);
    bool is_hex_code_Set() const;
    bool is_hex_code_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_specific_color;
    bool m_specific_color_isSet;
    bool m_specific_color_isValid;

    QString m_main_color;
    bool m_main_color_isSet;
    bool m_main_color_isValid;

    QString m_hex_code;
    bool m_hex_code_isSet;
    bool m_hex_code_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIDetectMainImageColor_200_response_inner)

#endif // OAIDetectMainImageColor_200_response_inner_H
