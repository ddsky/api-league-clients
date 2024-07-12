/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIExtractNews_200_response.h
 *
 * 
 */

#ifndef OAIExtractNews_200_response_H
#define OAIExtractNews_200_response_H

#include <QJsonObject>

#include "OAIExtractNews_200_response_images_inner.h"
#include "OAIExtractNews_200_response_videos_inner.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIExtractNews_200_response_images_inner;
class OAIExtractNews_200_response_videos_inner;

class OAIExtractNews_200_response : public OAIObject {
public:
    OAIExtractNews_200_response();
    OAIExtractNews_200_response(QString json);
    ~OAIExtractNews_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getTitle() const;
    void setTitle(const QString &title);
    bool is_title_Set() const;
    bool is_title_Valid() const;

    QString getText() const;
    void setText(const QString &text);
    bool is_text_Set() const;
    bool is_text_Valid() const;

    QString getUrl() const;
    void setUrl(const QString &url);
    bool is_url_Set() const;
    bool is_url_Valid() const;

    QList<OAIExtractNews_200_response_images_inner> getImages() const;
    void setImages(const QList<OAIExtractNews_200_response_images_inner> &images);
    bool is_images_Set() const;
    bool is_images_Valid() const;

    QList<OAIExtractNews_200_response_videos_inner> getVideos() const;
    void setVideos(const QList<OAIExtractNews_200_response_videos_inner> &videos);
    bool is_videos_Set() const;
    bool is_videos_Valid() const;

    QString getPublishDate() const;
    void setPublishDate(const QString &publish_date);
    bool is_publish_date_Set() const;
    bool is_publish_date_Valid() const;

    QList<QString> getAuthors() const;
    void setAuthors(const QList<QString> &authors);
    bool is_authors_Set() const;
    bool is_authors_Valid() const;

    QString getLanguage() const;
    void setLanguage(const QString &language);
    bool is_language_Set() const;
    bool is_language_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_title;
    bool m_title_isSet;
    bool m_title_isValid;

    QString m_text;
    bool m_text_isSet;
    bool m_text_isValid;

    QString m_url;
    bool m_url_isSet;
    bool m_url_isValid;

    QList<OAIExtractNews_200_response_images_inner> m_images;
    bool m_images_isSet;
    bool m_images_isValid;

    QList<OAIExtractNews_200_response_videos_inner> m_videos;
    bool m_videos_isSet;
    bool m_videos_isValid;

    QString m_publish_date;
    bool m_publish_date_isSet;
    bool m_publish_date_isValid;

    QList<QString> m_authors;
    bool m_authors_isSet;
    bool m_authors_isValid;

    QString m_language;
    bool m_language_isSet;
    bool m_language_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIExtractNews_200_response)

#endif // OAIExtractNews_200_response_H
