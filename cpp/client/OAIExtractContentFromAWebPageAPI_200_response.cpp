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

#include "OAIExtractContentFromAWebPageAPI_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIExtractContentFromAWebPageAPI_200_response::OAIExtractContentFromAWebPageAPI_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIExtractContentFromAWebPageAPI_200_response::OAIExtractContentFromAWebPageAPI_200_response() {
    this->initializeModel();
}

OAIExtractContentFromAWebPageAPI_200_response::~OAIExtractContentFromAWebPageAPI_200_response() {}

void OAIExtractContentFromAWebPageAPI_200_response::initializeModel() {

    m_title_isSet = false;
    m_title_isValid = false;

    m_main_text_isSet = false;
    m_main_text_isValid = false;

    m_main_html_isSet = false;
    m_main_html_isValid = false;

    m_images_isSet = false;
    m_images_isValid = false;
}

void OAIExtractContentFromAWebPageAPI_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIExtractContentFromAWebPageAPI_200_response::fromJsonObject(QJsonObject json) {

    m_title_isValid = ::OpenAPI::fromJsonValue(m_title, json[QString("title")]);
    m_title_isSet = !json[QString("title")].isNull() && m_title_isValid;

    m_main_text_isValid = ::OpenAPI::fromJsonValue(m_main_text, json[QString("main_text")]);
    m_main_text_isSet = !json[QString("main_text")].isNull() && m_main_text_isValid;

    m_main_html_isValid = ::OpenAPI::fromJsonValue(m_main_html, json[QString("main_html")]);
    m_main_html_isSet = !json[QString("main_html")].isNull() && m_main_html_isValid;

    m_images_isValid = ::OpenAPI::fromJsonValue(m_images, json[QString("images")]);
    m_images_isSet = !json[QString("images")].isNull() && m_images_isValid;
}

QString OAIExtractContentFromAWebPageAPI_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIExtractContentFromAWebPageAPI_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_title_isSet) {
        obj.insert(QString("title"), ::OpenAPI::toJsonValue(m_title));
    }
    if (m_main_text_isSet) {
        obj.insert(QString("main_text"), ::OpenAPI::toJsonValue(m_main_text));
    }
    if (m_main_html_isSet) {
        obj.insert(QString("main_html"), ::OpenAPI::toJsonValue(m_main_html));
    }
    if (m_images.size() > 0) {
        obj.insert(QString("images"), ::OpenAPI::toJsonValue(m_images));
    }
    return obj;
}

QString OAIExtractContentFromAWebPageAPI_200_response::getTitle() const {
    return m_title;
}
void OAIExtractContentFromAWebPageAPI_200_response::setTitle(const QString &title) {
    m_title = title;
    m_title_isSet = true;
}

bool OAIExtractContentFromAWebPageAPI_200_response::is_title_Set() const{
    return m_title_isSet;
}

bool OAIExtractContentFromAWebPageAPI_200_response::is_title_Valid() const{
    return m_title_isValid;
}

QString OAIExtractContentFromAWebPageAPI_200_response::getMainText() const {
    return m_main_text;
}
void OAIExtractContentFromAWebPageAPI_200_response::setMainText(const QString &main_text) {
    m_main_text = main_text;
    m_main_text_isSet = true;
}

bool OAIExtractContentFromAWebPageAPI_200_response::is_main_text_Set() const{
    return m_main_text_isSet;
}

bool OAIExtractContentFromAWebPageAPI_200_response::is_main_text_Valid() const{
    return m_main_text_isValid;
}

QString OAIExtractContentFromAWebPageAPI_200_response::getMainHtml() const {
    return m_main_html;
}
void OAIExtractContentFromAWebPageAPI_200_response::setMainHtml(const QString &main_html) {
    m_main_html = main_html;
    m_main_html_isSet = true;
}

bool OAIExtractContentFromAWebPageAPI_200_response::is_main_html_Set() const{
    return m_main_html_isSet;
}

bool OAIExtractContentFromAWebPageAPI_200_response::is_main_html_Valid() const{
    return m_main_html_isValid;
}

QList<QString> OAIExtractContentFromAWebPageAPI_200_response::getImages() const {
    return m_images;
}
void OAIExtractContentFromAWebPageAPI_200_response::setImages(const QList<QString> &images) {
    m_images = images;
    m_images_isSet = true;
}

bool OAIExtractContentFromAWebPageAPI_200_response::is_images_Set() const{
    return m_images_isSet;
}

bool OAIExtractContentFromAWebPageAPI_200_response::is_images_Valid() const{
    return m_images_isValid;
}

bool OAIExtractContentFromAWebPageAPI_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_title_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_main_text_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_main_html_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_images.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIExtractContentFromAWebPageAPI_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
