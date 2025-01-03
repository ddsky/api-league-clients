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

#include "OAIScoreTextAPI_200_response_style_subscores.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIScoreTextAPI_200_response_style_subscores::OAIScoreTextAPI_200_response_style_subscores(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIScoreTextAPI_200_response_style_subscores::OAIScoreTextAPI_200_response_style_subscores() {
    this->initializeModel();
}

OAIScoreTextAPI_200_response_style_subscores::~OAIScoreTextAPI_200_response_style_subscores() {}

void OAIScoreTextAPI_200_response_style_subscores::initializeModel() {

    m_abbreviation_score_isSet = false;
    m_abbreviation_score_isValid = false;

    m_style_score_isSet = false;
    m_style_score_isValid = false;

    m_spelling_score_isSet = false;
    m_spelling_score_isValid = false;
}

void OAIScoreTextAPI_200_response_style_subscores::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIScoreTextAPI_200_response_style_subscores::fromJsonObject(QJsonObject json) {

    m_abbreviation_score_isValid = ::OpenAPI::fromJsonValue(m_abbreviation_score, json[QString("abbreviation_score")]);
    m_abbreviation_score_isSet = !json[QString("abbreviation_score")].isNull() && m_abbreviation_score_isValid;

    m_style_score_isValid = ::OpenAPI::fromJsonValue(m_style_score, json[QString("style_score")]);
    m_style_score_isSet = !json[QString("style_score")].isNull() && m_style_score_isValid;

    m_spelling_score_isValid = ::OpenAPI::fromJsonValue(m_spelling_score, json[QString("spelling_score")]);
    m_spelling_score_isSet = !json[QString("spelling_score")].isNull() && m_spelling_score_isValid;
}

QString OAIScoreTextAPI_200_response_style_subscores::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIScoreTextAPI_200_response_style_subscores::asJsonObject() const {
    QJsonObject obj;
    if (m_abbreviation_score.size() > 0) {
        obj.insert(QString("abbreviation_score"), ::OpenAPI::toJsonValue(m_abbreviation_score));
    }
    if (m_style_score.size() > 0) {
        obj.insert(QString("style_score"), ::OpenAPI::toJsonValue(m_style_score));
    }
    if (m_spelling_score.size() > 0) {
        obj.insert(QString("spelling_score"), ::OpenAPI::toJsonValue(m_spelling_score));
    }
    return obj;
}

QList<qint32> OAIScoreTextAPI_200_response_style_subscores::getAbbreviationScore() const {
    return m_abbreviation_score;
}
void OAIScoreTextAPI_200_response_style_subscores::setAbbreviationScore(const QList<qint32> &abbreviation_score) {
    m_abbreviation_score = abbreviation_score;
    m_abbreviation_score_isSet = true;
}

bool OAIScoreTextAPI_200_response_style_subscores::is_abbreviation_score_Set() const{
    return m_abbreviation_score_isSet;
}

bool OAIScoreTextAPI_200_response_style_subscores::is_abbreviation_score_Valid() const{
    return m_abbreviation_score_isValid;
}

QList<qint32> OAIScoreTextAPI_200_response_style_subscores::getStyleScore() const {
    return m_style_score;
}
void OAIScoreTextAPI_200_response_style_subscores::setStyleScore(const QList<qint32> &style_score) {
    m_style_score = style_score;
    m_style_score_isSet = true;
}

bool OAIScoreTextAPI_200_response_style_subscores::is_style_score_Set() const{
    return m_style_score_isSet;
}

bool OAIScoreTextAPI_200_response_style_subscores::is_style_score_Valid() const{
    return m_style_score_isValid;
}

QList<qint32> OAIScoreTextAPI_200_response_style_subscores::getSpellingScore() const {
    return m_spelling_score;
}
void OAIScoreTextAPI_200_response_style_subscores::setSpellingScore(const QList<qint32> &spelling_score) {
    m_spelling_score = spelling_score;
    m_spelling_score_isSet = true;
}

bool OAIScoreTextAPI_200_response_style_subscores::is_spelling_score_Set() const{
    return m_spelling_score_isSet;
}

bool OAIScoreTextAPI_200_response_style_subscores::is_spelling_score_Valid() const{
    return m_spelling_score_isValid;
}

bool OAIScoreTextAPI_200_response_style_subscores::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_abbreviation_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_style_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_spelling_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIScoreTextAPI_200_response_style_subscores::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
