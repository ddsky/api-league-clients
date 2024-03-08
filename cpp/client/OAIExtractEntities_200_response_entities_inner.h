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
 * OAIExtractEntities_200_response_entities_inner.h
 *
 * 
 */

#ifndef OAIExtractEntities_200_response_entities_inner_H
#define OAIExtractEntities_200_response_entities_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIExtractEntities_200_response_entities_inner : public OAIObject {
public:
    OAIExtractEntities_200_response_entities_inner();
    OAIExtractEntities_200_response_entities_inner(QString json);
    ~OAIExtractEntities_200_response_entities_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getStartPosition() const;
    void setStartPosition(const qint32 &start_position);
    bool is_start_position_Set() const;
    bool is_start_position_Valid() const;

    QString getImage() const;
    void setImage(const QString &image);
    bool is_image_Set() const;
    bool is_image_Valid() const;

    QString getType() const;
    void setType(const QString &type);
    bool is_type_Set() const;
    bool is_type_Valid() const;

    QString getValue() const;
    void setValue(const QString &value);
    bool is_value_Set() const;
    bool is_value_Valid() const;

    qint32 getEndPosition() const;
    void setEndPosition(const qint32 &end_position);
    bool is_end_position_Set() const;
    bool is_end_position_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_start_position;
    bool m_start_position_isSet;
    bool m_start_position_isValid;

    QString m_image;
    bool m_image_isSet;
    bool m_image_isValid;

    QString m_type;
    bool m_type_isSet;
    bool m_type_isValid;

    QString m_value;
    bool m_value_isSet;
    bool m_value_isValid;

    qint32 m_end_position;
    bool m_end_position_isSet;
    bool m_end_position_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIExtractEntities_200_response_entities_inner)

#endif // OAIExtractEntities_200_response_entities_inner_H