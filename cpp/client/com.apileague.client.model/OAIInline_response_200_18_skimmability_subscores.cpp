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

#include "OAIInline_response_200_18_skimmability_subscores.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIInline_response_200_18_skimmability_subscores::OAIInline_response_200_18_skimmability_subscores(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIInline_response_200_18_skimmability_subscores::OAIInline_response_200_18_skimmability_subscores() {
    this->initializeModel();
}

OAIInline_response_200_18_skimmability_subscores::~OAIInline_response_200_18_skimmability_subscores() {}

void OAIInline_response_200_18_skimmability_subscores::initializeModel() {

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

void OAIInline_response_200_18_skimmability_subscores::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIInline_response_200_18_skimmability_subscores::fromJsonObject(QJsonObject json) {

    m_bullet_point_ratio_score_isValid = ::OpenAPI::fromJsonValue(bullet_point_ratio_score, json[QString("bullet_point_ratio_score")]);
    m_bullet_point_ratio_score_isSet = !json[QString("bullet_point_ratio_score")].isNull() && m_bullet_point_ratio_score_isValid;

    m_image_score_isValid = ::OpenAPI::fromJsonValue(image_score, json[QString("image_score")]);
    m_image_score_isSet = !json[QString("image_score")].isNull() && m_image_score_isValid;

    m_highlighted_word_ratio_score_isValid = ::OpenAPI::fromJsonValue(highlighted_word_ratio_score, json[QString("highlighted_word_ratio_score")]);
    m_highlighted_word_ratio_score_isSet = !json[QString("highlighted_word_ratio_score")].isNull() && m_highlighted_word_ratio_score_isValid;

    m_video_score_isValid = ::OpenAPI::fromJsonValue(video_score, json[QString("video_score")]);
    m_video_score_isSet = !json[QString("video_score")].isNull() && m_video_score_isValid;

    m_paragraph_score_isValid = ::OpenAPI::fromJsonValue(paragraph_score, json[QString("paragraph_score")]);
    m_paragraph_score_isSet = !json[QString("paragraph_score")].isNull() && m_paragraph_score_isValid;

    m_paragraph_headline_ratio_score_isValid = ::OpenAPI::fromJsonValue(paragraph_headline_ratio_score, json[QString("paragraph_headline_ratio_score")]);
    m_paragraph_headline_ratio_score_isSet = !json[QString("paragraph_headline_ratio_score")].isNull() && m_paragraph_headline_ratio_score_isValid;
}

QString OAIInline_response_200_18_skimmability_subscores::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIInline_response_200_18_skimmability_subscores::asJsonObject() const {
    QJsonObject obj;
    if (bullet_point_ratio_score.size() > 0) {
        obj.insert(QString("bullet_point_ratio_score"), ::OpenAPI::toJsonValue(bullet_point_ratio_score));
    }
    if (image_score.size() > 0) {
        obj.insert(QString("image_score"), ::OpenAPI::toJsonValue(image_score));
    }
    if (highlighted_word_ratio_score.size() > 0) {
        obj.insert(QString("highlighted_word_ratio_score"), ::OpenAPI::toJsonValue(highlighted_word_ratio_score));
    }
    if (video_score.size() > 0) {
        obj.insert(QString("video_score"), ::OpenAPI::toJsonValue(video_score));
    }
    if (paragraph_score.size() > 0) {
        obj.insert(QString("paragraph_score"), ::OpenAPI::toJsonValue(paragraph_score));
    }
    if (paragraph_headline_ratio_score.size() > 0) {
        obj.insert(QString("paragraph_headline_ratio_score"), ::OpenAPI::toJsonValue(paragraph_headline_ratio_score));
    }
    return obj;
}

QList<qint32> OAIInline_response_200_18_skimmability_subscores::getBulletPointRatioScore() const {
    return bullet_point_ratio_score;
}
void OAIInline_response_200_18_skimmability_subscores::setBulletPointRatioScore(const QList<qint32> &bullet_point_ratio_score) {
    this->bullet_point_ratio_score = bullet_point_ratio_score;
    this->m_bullet_point_ratio_score_isSet = true;
}

bool OAIInline_response_200_18_skimmability_subscores::is_bullet_point_ratio_score_Set() const{
    return m_bullet_point_ratio_score_isSet;
}

bool OAIInline_response_200_18_skimmability_subscores::is_bullet_point_ratio_score_Valid() const{
    return m_bullet_point_ratio_score_isValid;
}

QList<qint32> OAIInline_response_200_18_skimmability_subscores::getImageScore() const {
    return image_score;
}
void OAIInline_response_200_18_skimmability_subscores::setImageScore(const QList<qint32> &image_score) {
    this->image_score = image_score;
    this->m_image_score_isSet = true;
}

bool OAIInline_response_200_18_skimmability_subscores::is_image_score_Set() const{
    return m_image_score_isSet;
}

bool OAIInline_response_200_18_skimmability_subscores::is_image_score_Valid() const{
    return m_image_score_isValid;
}

QList<qint32> OAIInline_response_200_18_skimmability_subscores::getHighlightedWordRatioScore() const {
    return highlighted_word_ratio_score;
}
void OAIInline_response_200_18_skimmability_subscores::setHighlightedWordRatioScore(const QList<qint32> &highlighted_word_ratio_score) {
    this->highlighted_word_ratio_score = highlighted_word_ratio_score;
    this->m_highlighted_word_ratio_score_isSet = true;
}

bool OAIInline_response_200_18_skimmability_subscores::is_highlighted_word_ratio_score_Set() const{
    return m_highlighted_word_ratio_score_isSet;
}

bool OAIInline_response_200_18_skimmability_subscores::is_highlighted_word_ratio_score_Valid() const{
    return m_highlighted_word_ratio_score_isValid;
}

QList<qint32> OAIInline_response_200_18_skimmability_subscores::getVideoScore() const {
    return video_score;
}
void OAIInline_response_200_18_skimmability_subscores::setVideoScore(const QList<qint32> &video_score) {
    this->video_score = video_score;
    this->m_video_score_isSet = true;
}

bool OAIInline_response_200_18_skimmability_subscores::is_video_score_Set() const{
    return m_video_score_isSet;
}

bool OAIInline_response_200_18_skimmability_subscores::is_video_score_Valid() const{
    return m_video_score_isValid;
}

QList<qint32> OAIInline_response_200_18_skimmability_subscores::getParagraphScore() const {
    return paragraph_score;
}
void OAIInline_response_200_18_skimmability_subscores::setParagraphScore(const QList<qint32> &paragraph_score) {
    this->paragraph_score = paragraph_score;
    this->m_paragraph_score_isSet = true;
}

bool OAIInline_response_200_18_skimmability_subscores::is_paragraph_score_Set() const{
    return m_paragraph_score_isSet;
}

bool OAIInline_response_200_18_skimmability_subscores::is_paragraph_score_Valid() const{
    return m_paragraph_score_isValid;
}

QList<qint32> OAIInline_response_200_18_skimmability_subscores::getParagraphHeadlineRatioScore() const {
    return paragraph_headline_ratio_score;
}
void OAIInline_response_200_18_skimmability_subscores::setParagraphHeadlineRatioScore(const QList<qint32> &paragraph_headline_ratio_score) {
    this->paragraph_headline_ratio_score = paragraph_headline_ratio_score;
    this->m_paragraph_headline_ratio_score_isSet = true;
}

bool OAIInline_response_200_18_skimmability_subscores::is_paragraph_headline_ratio_score_Set() const{
    return m_paragraph_headline_ratio_score_isSet;
}

bool OAIInline_response_200_18_skimmability_subscores::is_paragraph_headline_ratio_score_Valid() const{
    return m_paragraph_headline_ratio_score_isValid;
}

bool OAIInline_response_200_18_skimmability_subscores::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (bullet_point_ratio_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (image_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (highlighted_word_ratio_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (video_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (paragraph_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (paragraph_headline_ratio_score.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIInline_response_200_18_skimmability_subscores::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
