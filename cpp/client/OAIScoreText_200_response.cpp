/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIScoreText_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIScoreText_200_response::OAIScoreText_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIScoreText_200_response::OAIScoreText_200_response() {
    this->initializeModel();
}

OAIScoreText_200_response::~OAIScoreText_200_response() {}

void OAIScoreText_200_response::initializeModel() {

    m_number_of_words_isSet = false;
    m_number_of_words_isValid = false;

    m_number_of_sentences_isSet = false;
    m_number_of_sentences_isValid = false;

    m_readability_isSet = false;
    m_readability_isValid = false;

    m_skimmability_isSet = false;
    m_skimmability_isValid = false;

    m_interestingness_isSet = false;
    m_interestingness_isValid = false;

    m_style_isSet = false;
    m_style_isValid = false;

    m_total_score_isSet = false;
    m_total_score_isValid = false;
}

void OAIScoreText_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIScoreText_200_response::fromJsonObject(QJsonObject json) {

    m_number_of_words_isValid = ::OpenAPI::fromJsonValue(m_number_of_words, json[QString("number_of_words")]);
    m_number_of_words_isSet = !json[QString("number_of_words")].isNull() && m_number_of_words_isValid;

    m_number_of_sentences_isValid = ::OpenAPI::fromJsonValue(m_number_of_sentences, json[QString("number_of_sentences")]);
    m_number_of_sentences_isSet = !json[QString("number_of_sentences")].isNull() && m_number_of_sentences_isValid;

    m_readability_isValid = ::OpenAPI::fromJsonValue(m_readability, json[QString("readability")]);
    m_readability_isSet = !json[QString("readability")].isNull() && m_readability_isValid;

    m_skimmability_isValid = ::OpenAPI::fromJsonValue(m_skimmability, json[QString("skimmability")]);
    m_skimmability_isSet = !json[QString("skimmability")].isNull() && m_skimmability_isValid;

    m_interestingness_isValid = ::OpenAPI::fromJsonValue(m_interestingness, json[QString("interestingness")]);
    m_interestingness_isSet = !json[QString("interestingness")].isNull() && m_interestingness_isValid;

    m_style_isValid = ::OpenAPI::fromJsonValue(m_style, json[QString("style")]);
    m_style_isSet = !json[QString("style")].isNull() && m_style_isValid;

    m_total_score_isValid = ::OpenAPI::fromJsonValue(m_total_score, json[QString("total_score")]);
    m_total_score_isSet = !json[QString("total_score")].isNull() && m_total_score_isValid;
}

QString OAIScoreText_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIScoreText_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_number_of_words_isSet) {
        obj.insert(QString("number_of_words"), ::OpenAPI::toJsonValue(m_number_of_words));
    }
    if (m_number_of_sentences_isSet) {
        obj.insert(QString("number_of_sentences"), ::OpenAPI::toJsonValue(m_number_of_sentences));
    }
    if (m_readability.isSet()) {
        obj.insert(QString("readability"), ::OpenAPI::toJsonValue(m_readability));
    }
    if (m_skimmability.isSet()) {
        obj.insert(QString("skimmability"), ::OpenAPI::toJsonValue(m_skimmability));
    }
    if (m_interestingness.isSet()) {
        obj.insert(QString("interestingness"), ::OpenAPI::toJsonValue(m_interestingness));
    }
    if (m_style.isSet()) {
        obj.insert(QString("style"), ::OpenAPI::toJsonValue(m_style));
    }
    if (m_total_score_isSet) {
        obj.insert(QString("total_score"), ::OpenAPI::toJsonValue(m_total_score));
    }
    return obj;
}

qint32 OAIScoreText_200_response::getNumberOfWords() const {
    return m_number_of_words;
}
void OAIScoreText_200_response::setNumberOfWords(const qint32 &number_of_words) {
    m_number_of_words = number_of_words;
    m_number_of_words_isSet = true;
}

bool OAIScoreText_200_response::is_number_of_words_Set() const{
    return m_number_of_words_isSet;
}

bool OAIScoreText_200_response::is_number_of_words_Valid() const{
    return m_number_of_words_isValid;
}

qint32 OAIScoreText_200_response::getNumberOfSentences() const {
    return m_number_of_sentences;
}
void OAIScoreText_200_response::setNumberOfSentences(const qint32 &number_of_sentences) {
    m_number_of_sentences = number_of_sentences;
    m_number_of_sentences_isSet = true;
}

bool OAIScoreText_200_response::is_number_of_sentences_Set() const{
    return m_number_of_sentences_isSet;
}

bool OAIScoreText_200_response::is_number_of_sentences_Valid() const{
    return m_number_of_sentences_isValid;
}

OAIScoreText_200_response_readability OAIScoreText_200_response::getReadability() const {
    return m_readability;
}
void OAIScoreText_200_response::setReadability(const OAIScoreText_200_response_readability &readability) {
    m_readability = readability;
    m_readability_isSet = true;
}

bool OAIScoreText_200_response::is_readability_Set() const{
    return m_readability_isSet;
}

bool OAIScoreText_200_response::is_readability_Valid() const{
    return m_readability_isValid;
}

OAIScoreText_200_response_skimmability OAIScoreText_200_response::getSkimmability() const {
    return m_skimmability;
}
void OAIScoreText_200_response::setSkimmability(const OAIScoreText_200_response_skimmability &skimmability) {
    m_skimmability = skimmability;
    m_skimmability_isSet = true;
}

bool OAIScoreText_200_response::is_skimmability_Set() const{
    return m_skimmability_isSet;
}

bool OAIScoreText_200_response::is_skimmability_Valid() const{
    return m_skimmability_isValid;
}

OAIScoreText_200_response_interestingness OAIScoreText_200_response::getInterestingness() const {
    return m_interestingness;
}
void OAIScoreText_200_response::setInterestingness(const OAIScoreText_200_response_interestingness &interestingness) {
    m_interestingness = interestingness;
    m_interestingness_isSet = true;
}

bool OAIScoreText_200_response::is_interestingness_Set() const{
    return m_interestingness_isSet;
}

bool OAIScoreText_200_response::is_interestingness_Valid() const{
    return m_interestingness_isValid;
}

OAIScoreText_200_response_style OAIScoreText_200_response::getStyle() const {
    return m_style;
}
void OAIScoreText_200_response::setStyle(const OAIScoreText_200_response_style &style) {
    m_style = style;
    m_style_isSet = true;
}

bool OAIScoreText_200_response::is_style_Set() const{
    return m_style_isSet;
}

bool OAIScoreText_200_response::is_style_Valid() const{
    return m_style_isValid;
}

double OAIScoreText_200_response::getTotalScore() const {
    return m_total_score;
}
void OAIScoreText_200_response::setTotalScore(const double &total_score) {
    m_total_score = total_score;
    m_total_score_isSet = true;
}

bool OAIScoreText_200_response::is_total_score_Set() const{
    return m_total_score_isSet;
}

bool OAIScoreText_200_response::is_total_score_Valid() const{
    return m_total_score_isValid;
}

bool OAIScoreText_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_number_of_words_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_number_of_sentences_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_readability.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_skimmability.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_interestingness.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_style.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_total_score_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIScoreText_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
