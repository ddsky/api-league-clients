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

#include "OAIGenerateNonsenseWord_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIGenerateNonsenseWord_200_response::OAIGenerateNonsenseWord_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIGenerateNonsenseWord_200_response::OAIGenerateNonsenseWord_200_response() {
    this->initializeModel();
}

OAIGenerateNonsenseWord_200_response::~OAIGenerateNonsenseWord_200_response() {}

void OAIGenerateNonsenseWord_200_response::initializeModel() {

    m_word_isSet = false;
    m_word_isValid = false;

    m_rating_isSet = false;
    m_rating_isValid = false;
}

void OAIGenerateNonsenseWord_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIGenerateNonsenseWord_200_response::fromJsonObject(QJsonObject json) {

    m_word_isValid = ::OpenAPI::fromJsonValue(m_word, json[QString("word")]);
    m_word_isSet = !json[QString("word")].isNull() && m_word_isValid;

    m_rating_isValid = ::OpenAPI::fromJsonValue(m_rating, json[QString("rating")]);
    m_rating_isSet = !json[QString("rating")].isNull() && m_rating_isValid;
}

QString OAIGenerateNonsenseWord_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIGenerateNonsenseWord_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_word_isSet) {
        obj.insert(QString("word"), ::OpenAPI::toJsonValue(m_word));
    }
    if (m_rating_isSet) {
        obj.insert(QString("rating"), ::OpenAPI::toJsonValue(m_rating));
    }
    return obj;
}

QString OAIGenerateNonsenseWord_200_response::getWord() const {
    return m_word;
}
void OAIGenerateNonsenseWord_200_response::setWord(const QString &word) {
    m_word = word;
    m_word_isSet = true;
}

bool OAIGenerateNonsenseWord_200_response::is_word_Set() const{
    return m_word_isSet;
}

bool OAIGenerateNonsenseWord_200_response::is_word_Valid() const{
    return m_word_isValid;
}

double OAIGenerateNonsenseWord_200_response::getRating() const {
    return m_rating;
}
void OAIGenerateNonsenseWord_200_response::setRating(const double &rating) {
    m_rating = rating;
    m_rating_isSet = true;
}

bool OAIGenerateNonsenseWord_200_response::is_rating_Set() const{
    return m_rating_isSet;
}

bool OAIGenerateNonsenseWord_200_response::is_rating_Valid() const{
    return m_rating_isValid;
}

bool OAIGenerateNonsenseWord_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_word_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_rating_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIGenerateNonsenseWord_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
