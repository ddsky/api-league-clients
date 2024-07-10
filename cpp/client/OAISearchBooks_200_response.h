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
 * OAISearchBooks_200_response.h
 *
 * 
 */

#ifndef OAISearchBooks_200_response_H
#define OAISearchBooks_200_response_H

#include <QJsonObject>

#include "OAISearchBooks_200_response_books_inner_inner.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchBooks_200_response_books_inner_inner;

class OAISearchBooks_200_response : public OAIObject {
public:
    OAISearchBooks_200_response();
    OAISearchBooks_200_response(QString json);
    ~OAISearchBooks_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getAvailable() const;
    void setAvailable(const qint32 &available);
    bool is_available_Set() const;
    bool is_available_Valid() const;

    qint32 getNumber() const;
    void setNumber(const qint32 &number);
    bool is_number_Set() const;
    bool is_number_Valid() const;

    qint32 getOffset() const;
    void setOffset(const qint32 &offset);
    bool is_offset_Set() const;
    bool is_offset_Valid() const;

    QList<QList<OAISearchBooks_200_response_books_inner_inner>> getBooks() const;
    void setBooks(const QList<QList<OAISearchBooks_200_response_books_inner_inner>> &books);
    bool is_books_Set() const;
    bool is_books_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_available;
    bool m_available_isSet;
    bool m_available_isValid;

    qint32 m_number;
    bool m_number_isSet;
    bool m_number_isValid;

    qint32 m_offset;
    bool m_offset_isSet;
    bool m_offset_isValid;

    QList<QList<OAISearchBooks_200_response_books_inner_inner>> m_books;
    bool m_books_isSet;
    bool m_books_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchBooks_200_response)

#endif // OAISearchBooks_200_response_H
