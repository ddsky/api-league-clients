/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIScoreText_200_response_skimmability_subscores.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIScoreText_200_response_skimmability_subscores::OAIScoreText_200_response_skimmability_subscores(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIScoreText_200_response_skimmability_subscores::OAIScoreText_200_response_skimmability_subscores() {
    this->initializeModel();
}

OAIScoreText_200_response_skimmability_subscores::~OAIScoreText_200_response_skimmability_subscores() {}

void OAIScoreText_200_response_skimmability_subscores::initializeModel() {

    m_bullet_point_ratio_score_isSet = false;
    m_bullet_point_ratio_score_isValid = false;

    m_image_score_isSet = false;
    m_image_score_isValid = false;

    m_highlighted_word_ratio_score_isSet = false;
    m_highlighted_word_ratio_score_isValid = false;

    m_video_score_isSet = false;
    m_video_score_isValid = false;

    m_paragraph_score_isSet = false;
    m_paragraph_score_isValid = false;

    m_paragraph_headline_ratio_score_isSet = false;
    m_paragraph_headline_ratio_score_isValid = false;
}

void OAIScoreText_200_response_skimmability_subscores::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIScoreText_200_response_skimmability_subscores::fromJsonObject(QJsonObject json) {

    m_bullet_point_ratio_score_isValid = ::OpenAPI::fromJsonValue(m_bullet_point_ratio_score, json[QString("bullet_point_ratio_score")]);
    m_bullet_point_ratio_score_isSet = !json[QString("bullet_point_ratio_score")].isNull() && m_bullet_point_ratio_score_isValid;

    m_image_score_isValid = ::OpenAPI::fromJsonValue(m_image_score, json[QString("image_score")]);
    m_image_score_isSet = !json[QString("image_score")].isNull() && m_image_score_isValid;

    m_highlighted_word_ratio_score_isValid = ::OpenAPI::fromJsonValue(m_highlighted_word_ratio_score, json[QString("highlighted_word_ratio_score")]);
    m_highlighted_word_ratio_score_isSet = !json[QString("highlighted_word_ratio_score")].isNull() && m_highlighted_word_ratio_score_isValid;

    m_video_score_isValid = ::OpenAPI::fromJsonValue(m_video_score, json[QString("video_score")]);
    m_video_score_isSet = !json[QString("video_score")].isNull() && m_video_score_isValid;

    m_paragraph_score_isValid = ::OpenAPI::fromJsonValue(m_paragraph_score, json[QString("paragraph_score")]);
    m_paragraph_score_isSet = !json[QString("paragraph_score")].isNull() && m_paragraph_score_isValid;

    m_paragraph_headline_ratio_score_isValid = ::OpenAPI::fromJsonValue(m_paragraph_headline_ratio_score, json[QString("paragraph_headline_ratio_score")]);
    m_paragraph_headline_ratio_score_isSet = !json[QString("paragraph_headline_ratio_score")].isNull() && m_paragraph_headline_ratio_score_isValid;
}

QString OAIScoreText_200_response_skimmability_subscores::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIScoreText_200_response_skimmability_subscores::asJsonObject() const {
    QJsonObject obj;
    if (m_bullet_point_ratio_score.size() > 0) {
        obj.insert(QString("bullet_point_ratio_score"), ::OpenAPI::toJsonValue(m_bullet_point_ratio_score));
    }
    if (m_image_score.size() > 0) {
        obj.insert(QString("image_score"), ::OpenAPI::toJsonValue(m_image_score));
    }
    if (m_highlighted_word_ratio_score.size() > 0) {
        obj.insert(QString("highlighted_word_ratio_score"), ::OpenAPI::toJsonValue(m_highlighted_word_ratio_score));
    }
    if (m_video_score.size() > 0) {
        obj.insert(QString("video_score"), ::OpenAPI::toJsonValue(m_video_score));
    }
    if (m_paragraph_score.size() > 0) {
        obj.insert(QString("paragraph_score"), ::OpenAPI::toJsonValue(m_paragraph_score));
    }
    if (m_paragraph_headline_ratio_score.size() > 0) {
        obj.insert(QString("paragraph_headline_ratio_score"), ::OpenAPI::toJsonValue(m_paragraph_headline_ratio_score));
    }
    return obj;
}

QList<qint32> OAIScoreText_200_response_skimmability_subscores::getBulletPointRatioScore() const {
    return m_bullet_point_ratio_score;
}
void OAIScoreText_200_response_skimmability_subscores::setBulletPointRatioScore(const QList<qint32> &bullet_point_ratio_score) {
    m_bullet_point_ratio_score = bullet_point_ratio_score;
    m_bullet_point_ratio_score_isSet = true;
}

bool OAIScoreText_200_response_skimmability_subscores::is_bullet_point_ratio_score_Set() const{
    return m_bullet_point_ratio_score_isSet;
}

bool OAIScoreText_200_response_skimmability_subscores::is_bullet_point_ratio_score_Valid() const{
    return m_bullet_point_ratio_score_isValid;
}

QList<qint32> OAIScoreText_200_response_skimmability_subscores::getImageScore() const {
    return m_image_score;
}
void OAIScoreText_200_response_skimmability_subscores::setImageScore(const QList<qint32> &image_score) {
    m_image_score = image_score;
    m_image_score_isSet = true;
}

bool OAIScoreText_200_response_skimmability_subscores::is_image_score_Set() const{
    return m_image_score_isSet;
}

bool OAIScoreText_200_response_skimmability_subscores::is_image_score_Valid() const{
    return m_image_score_isValid;
}

QList<qint32> OAIScoreText_200_response_skimmability_subscores::getHighlightedWordRatioScore() const {
    return m_highlighted_word_ratio_score;
}
void OAIScoreText_200_response_skimmability_subscores::setHighlightedWordRatioScore(const QList<qint32> &highlighted_word_ratio_score) {
    m_highlighted_word_ratio_score = highlighted_word_ratio_score;
    m_highlighted_word_ratio_score_isSet = true;
}

bool OAIScoreText_200_response_skimmability_subscores::is_highlighted_word_ratio_score_Set() const{
    return m_highlighted_word_ratio_score_isSet;
}

bool OAIScoreText_200_response_skimmability_subscores::is_highlighted_word_ratio_score_Valid() const{
    return m_highlighted_word_ratio_score_isValid;
}

QList<qint32> OAIScoreText_200_response_skimmability_subscores::getVideoScore() const {
    return m_video_score;
}
void OAIScoreText_200_response_skimmability_subscores::setVideoScore(const QList<qint32> &video_score) {
    m_video_score = video_score;
    m_video_score_isSet = true;
}

bool OAIScoreText_200_response_skimmability_subscores::is_video_score_Set() const{
    return m_video_score_isSet;
}

bool OAIScoreText_200_response_skimmability_subscores::is_video_score_Valid() const{
    return m_video_score_isValid;
}

QList<qint32> OAIScoreText_200_response_skimmability_subscores::getParagraphScore() const {
    return m_paragraph_score;
}
void OAIScoreText_200_response_skimmability_subscores::setParagraphScore(const QList<qint32> &paragraph_score) {
    m_paragraph_score = paragraph_score;
    m_paragraph_score_isSet = true;
}

bool OAIScoreText_200_response_skimmability_subscores::is_paragraph_score_Set() const{
    return m_paragraph_score_isSet;
}

bool OAIScoreText_200_response_skimmability_subscores::is_paragraph_score_Valid() const{
    return m_paragraph_score_isValid;
}

QList<qint32> OAIScoreText_200_response_skimmability_subscores::getParagraphHeadlineRatioScore() const {
    return m_paragraph_headline_ratio_score;
}
void OAIScoreText_200_response_skimmability_subscores::setParagraphHeadlineRatioScore(const QList<qint32> &paragraph_headline_ratio_score) {
    m_paragraph_headline_ratio_score = paragraph_headline_ratio_score;
    m_paragraph_headline_ratio_score_isSet = true;
}

bool OAIScoreText_200_response_skimmability_subscores::is_paragraph_headline_ratio_score_Set() const{
    return m_paragraph_headline_ratio_score_isSet;
}

bool OAIScoreText_200_response_skimmability_subscores::is_paragraph_headline_ratio_score_Valid() const{
    return m_paragraph_headline_ratio_score_isValid;
}

bool OAIScoreText_200_response_skimmability_subscores::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_bullet_point_ratio_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_image_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_highlighted_word_ratio_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_video_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_paragraph_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_paragraph_headline_ratio_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIScoreText_200_response_skimmability_subscores::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
