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

#include "OAIScoreText_200_response_interestingness_subscores.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIScoreText_200_response_interestingness_subscores::OAIScoreText_200_response_interestingness_subscores(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIScoreText_200_response_interestingness_subscores::OAIScoreText_200_response_interestingness_subscores() {
    this->initializeModel();
}

OAIScoreText_200_response_interestingness_subscores::~OAIScoreText_200_response_interestingness_subscores() {}

void OAIScoreText_200_response_interestingness_subscores::initializeModel() {

    m_title_rating_score_isSet = false;
    m_title_rating_score_isValid = false;

    m_quote_score_isSet = false;
    m_quote_score_isValid = false;

    m_length_score_isSet = false;
    m_length_score_isValid = false;

    m_link_score_isSet = false;
    m_link_score_isValid = false;

    m_google_hits_score_isSet = false;
    m_google_hits_score_isValid = false;
}

void OAIScoreText_200_response_interestingness_subscores::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIScoreText_200_response_interestingness_subscores::fromJsonObject(QJsonObject json) {

    m_title_rating_score_isValid = ::OpenAPI::fromJsonValue(m_title_rating_score, json[QString("title_rating_score")]);
    m_title_rating_score_isSet = !json[QString("title_rating_score")].isNull() && m_title_rating_score_isValid;

    m_quote_score_isValid = ::OpenAPI::fromJsonValue(m_quote_score, json[QString("quote_score")]);
    m_quote_score_isSet = !json[QString("quote_score")].isNull() && m_quote_score_isValid;

    m_length_score_isValid = ::OpenAPI::fromJsonValue(m_length_score, json[QString("length_score")]);
    m_length_score_isSet = !json[QString("length_score")].isNull() && m_length_score_isValid;

    m_link_score_isValid = ::OpenAPI::fromJsonValue(m_link_score, json[QString("link_score")]);
    m_link_score_isSet = !json[QString("link_score")].isNull() && m_link_score_isValid;

    m_google_hits_score_isValid = ::OpenAPI::fromJsonValue(m_google_hits_score, json[QString("google_hits_score")]);
    m_google_hits_score_isSet = !json[QString("google_hits_score")].isNull() && m_google_hits_score_isValid;
}

QString OAIScoreText_200_response_interestingness_subscores::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIScoreText_200_response_interestingness_subscores::asJsonObject() const {
    QJsonObject obj;
    if (m_title_rating_score.size() > 0) {
        obj.insert(QString("title_rating_score"), ::OpenAPI::toJsonValue(m_title_rating_score));
    }
    if (m_quote_score.size() > 0) {
        obj.insert(QString("quote_score"), ::OpenAPI::toJsonValue(m_quote_score));
    }
    if (m_length_score.size() > 0) {
        obj.insert(QString("length_score"), ::OpenAPI::toJsonValue(m_length_score));
    }
    if (m_link_score.size() > 0) {
        obj.insert(QString("link_score"), ::OpenAPI::toJsonValue(m_link_score));
    }
    if (m_google_hits_score.size() > 0) {
        obj.insert(QString("google_hits_score"), ::OpenAPI::toJsonValue(m_google_hits_score));
    }
    return obj;
}

QList<qint32> OAIScoreText_200_response_interestingness_subscores::getTitleRatingScore() const {
    return m_title_rating_score;
}
void OAIScoreText_200_response_interestingness_subscores::setTitleRatingScore(const QList<qint32> &title_rating_score) {
    m_title_rating_score = title_rating_score;
    m_title_rating_score_isSet = true;
}

bool OAIScoreText_200_response_interestingness_subscores::is_title_rating_score_Set() const{
    return m_title_rating_score_isSet;
}

bool OAIScoreText_200_response_interestingness_subscores::is_title_rating_score_Valid() const{
    return m_title_rating_score_isValid;
}

QList<qint32> OAIScoreText_200_response_interestingness_subscores::getQuoteScore() const {
    return m_quote_score;
}
void OAIScoreText_200_response_interestingness_subscores::setQuoteScore(const QList<qint32> &quote_score) {
    m_quote_score = quote_score;
    m_quote_score_isSet = true;
}

bool OAIScoreText_200_response_interestingness_subscores::is_quote_score_Set() const{
    return m_quote_score_isSet;
}

bool OAIScoreText_200_response_interestingness_subscores::is_quote_score_Valid() const{
    return m_quote_score_isValid;
}

QList<qint32> OAIScoreText_200_response_interestingness_subscores::getLengthScore() const {
    return m_length_score;
}
void OAIScoreText_200_response_interestingness_subscores::setLengthScore(const QList<qint32> &length_score) {
    m_length_score = length_score;
    m_length_score_isSet = true;
}

bool OAIScoreText_200_response_interestingness_subscores::is_length_score_Set() const{
    return m_length_score_isSet;
}

bool OAIScoreText_200_response_interestingness_subscores::is_length_score_Valid() const{
    return m_length_score_isValid;
}

QList<qint32> OAIScoreText_200_response_interestingness_subscores::getLinkScore() const {
    return m_link_score;
}
void OAIScoreText_200_response_interestingness_subscores::setLinkScore(const QList<qint32> &link_score) {
    m_link_score = link_score;
    m_link_score_isSet = true;
}

bool OAIScoreText_200_response_interestingness_subscores::is_link_score_Set() const{
    return m_link_score_isSet;
}

bool OAIScoreText_200_response_interestingness_subscores::is_link_score_Valid() const{
    return m_link_score_isValid;
}

QList<qint32> OAIScoreText_200_response_interestingness_subscores::getGoogleHitsScore() const {
    return m_google_hits_score;
}
void OAIScoreText_200_response_interestingness_subscores::setGoogleHitsScore(const QList<qint32> &google_hits_score) {
    m_google_hits_score = google_hits_score;
    m_google_hits_score_isSet = true;
}

bool OAIScoreText_200_response_interestingness_subscores::is_google_hits_score_Set() const{
    return m_google_hits_score_isSet;
}

bool OAIScoreText_200_response_interestingness_subscores::is_google_hits_score_Valid() const{
    return m_google_hits_score_isValid;
}

bool OAIScoreText_200_response_interestingness_subscores::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_title_rating_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_quote_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_length_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_link_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_google_hits_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIScoreText_200_response_interestingness_subscores::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
