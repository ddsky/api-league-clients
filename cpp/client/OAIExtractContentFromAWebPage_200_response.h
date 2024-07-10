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
 * OAIExtractContentFromAWebPage_200_response.h
 *
 * 
 */

#ifndef OAIExtractContentFromAWebPage_200_response_H
#define OAIExtractContentFromAWebPage_200_response_H

#include <QJsonObject>

#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIExtractContentFromAWebPage_200_response : public OAIObject {
public:
    OAIExtractContentFromAWebPage_200_response();
    OAIExtractContentFromAWebPage_200_response(QString json);
    ~OAIExtractContentFromAWebPage_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getTitle() const;
    void setTitle(const QString &title);
    bool is_title_Set() const;
    bool is_title_Valid() const;

    QString getMainText() const;
    void setMainText(const QString &main_text);
    bool is_main_text_Set() const;
    bool is_main_text_Valid() const;

    QString getMainHtml() const;
    void setMainHtml(const QString &main_html);
    bool is_main_html_Set() const;
    bool is_main_html_Valid() const;

    QList<QString> getImages() const;
    void setImages(const QList<QString> &images);
    bool is_images_Set() const;
    bool is_images_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_title;
    bool m_title_isSet;
    bool m_title_isValid;

    QString m_main_text;
    bool m_main_text_isSet;
    bool m_main_text_isValid;

    QString m_main_html;
    bool m_main_html_isSet;
    bool m_main_html_isValid;

    QList<QString> m_images;
    bool m_images_isSet;
    bool m_images_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIExtractContentFromAWebPage_200_response)

#endif // OAIExtractContentFromAWebPage_200_response_H
