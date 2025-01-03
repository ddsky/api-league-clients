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

#include "OAISearchBooksAPI_200_response_books_inner_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchBooksAPI_200_response_books_inner_inner::OAISearchBooksAPI_200_response_books_inner_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchBooksAPI_200_response_books_inner_inner::OAISearchBooksAPI_200_response_books_inner_inner() {
    this->initializeModel();
}

OAISearchBooksAPI_200_response_books_inner_inner::~OAISearchBooksAPI_200_response_books_inner_inner() {}

void OAISearchBooksAPI_200_response_books_inner_inner::initializeModel() {

    m_title_isSet = false;
    m_title_isValid = false;

    m_image_isSet = false;
    m_image_isValid = false;

    m_id_isSet = false;
    m_id_isValid = false;
}

void OAISearchBooksAPI_200_response_books_inner_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchBooksAPI_200_response_books_inner_inner::fromJsonObject(QJsonObject json) {

    m_title_isValid = ::OpenAPI::fromJsonValue(m_title, json[QString("title")]);
    m_title_isSet = !json[QString("title")].isNull() && m_title_isValid;

    m_image_isValid = ::OpenAPI::fromJsonValue(m_image, json[QString("image")]);
    m_image_isSet = !json[QString("image")].isNull() && m_image_isValid;

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;
}

QString OAISearchBooksAPI_200_response_books_inner_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchBooksAPI_200_response_books_inner_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_title_isSet) {
        obj.insert(QString("title"), ::OpenAPI::toJsonValue(m_title));
    }
    if (m_image_isSet) {
        obj.insert(QString("image"), ::OpenAPI::toJsonValue(m_image));
    }
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    return obj;
}

QString OAISearchBooksAPI_200_response_books_inner_inner::getTitle() const {
    return m_title;
}
void OAISearchBooksAPI_200_response_books_inner_inner::setTitle(const QString &title) {
    m_title = title;
    m_title_isSet = true;
}

bool OAISearchBooksAPI_200_response_books_inner_inner::is_title_Set() const{
    return m_title_isSet;
}

bool OAISearchBooksAPI_200_response_books_inner_inner::is_title_Valid() const{
    return m_title_isValid;
}

QString OAISearchBooksAPI_200_response_books_inner_inner::getImage() const {
    return m_image;
}
void OAISearchBooksAPI_200_response_books_inner_inner::setImage(const QString &image) {
    m_image = image;
    m_image_isSet = true;
}

bool OAISearchBooksAPI_200_response_books_inner_inner::is_image_Set() const{
    return m_image_isSet;
}

bool OAISearchBooksAPI_200_response_books_inner_inner::is_image_Valid() const{
    return m_image_isValid;
}

qint32 OAISearchBooksAPI_200_response_books_inner_inner::getId() const {
    return m_id;
}
void OAISearchBooksAPI_200_response_books_inner_inner::setId(const qint32 &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAISearchBooksAPI_200_response_books_inner_inner::is_id_Set() const{
    return m_id_isSet;
}

bool OAISearchBooksAPI_200_response_books_inner_inner::is_id_Valid() const{
    return m_id_isValid;
}

bool OAISearchBooksAPI_200_response_books_inner_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_title_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_image_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchBooksAPI_200_response_books_inner_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
