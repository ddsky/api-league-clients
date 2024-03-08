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
 * OAISearchBooks_200_response_books_inner.h
 *
 * 
 */

#ifndef OAISearchBooks_200_response_books_inner_H
#define OAISearchBooks_200_response_books_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISearchBooks_200_response_books_inner : public OAIObject {
public:
    OAISearchBooks_200_response_books_inner();
    OAISearchBooks_200_response_books_inner(QString json);
    ~OAISearchBooks_200_response_books_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getTitle() const;
    void setTitle(const QString &title);
    bool is_title_Set() const;
    bool is_title_Valid() const;

    QString getImage() const;
    void setImage(const QString &image);
    bool is_image_Set() const;
    bool is_image_Valid() const;

    qint32 getId() const;
    void setId(const qint32 &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_title;
    bool m_title_isSet;
    bool m_title_isValid;

    QString m_image;
    bool m_image_isSet;
    bool m_image_isValid;

    qint32 m_id;
    bool m_id_isSet;
    bool m_id_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchBooks_200_response_books_inner)

#endif // OAISearchBooks_200_response_books_inner_H
