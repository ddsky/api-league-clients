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

#include "OAIInline_response_200_19.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIInline_response_200_19::OAIInline_response_200_19(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIInline_response_200_19::OAIInline_response_200_19() {
    this->initializeModel();
}

OAIInline_response_200_19::~OAIInline_response_200_19() {}

void OAIInline_response_200_19::initializeModel() {

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

void OAIInline_response_200_19::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIInline_response_200_19::fromJsonObject(QJsonObject json) {

    m_number_of_words_isValid = ::OpenAPI::fromJsonValue(number_of_words, json[QString("number_of_words")]);
    m_number_of_words_isSet = !json[QString("number_of_words")].isNull() && m_number_of_words_isValid;

    m_number_of_sentences_isValid = ::OpenAPI::fromJsonValue(number_of_sentences, json[QString("number_of_sentences")]);
    m_number_of_sentences_isSet = !json[QString("number_of_sentences")].isNull() && m_number_of_sentences_isValid;

    m_readability_isValid = ::OpenAPI::fromJsonValue(readability, json[QString("readability")]);
    m_readability_isSet = !json[QString("readability")].isNull() && m_readability_isValid;

    m_skimmability_isValid = ::OpenAPI::fromJsonValue(skimmability, json[QString("skimmability")]);
    m_skimmability_isSet = !json[QString("skimmability")].isNull() && m_skimmability_isValid;

    m_interestingness_isValid = ::OpenAPI::fromJsonValue(interestingness, json[QString("interestingness")]);
    m_interestingness_isSet = !json[QString("interestingness")].isNull() && m_interestingness_isValid;

    m_style_isValid = ::OpenAPI::fromJsonValue(style, json[QString("style")]);
    m_style_isSet = !json[QString("style")].isNull() && m_style_isValid;

    m_total_score_isValid = ::OpenAPI::fromJsonValue(total_score, json[QString("total_score")]);
    m_total_score_isSet = !json[QString("total_score")].isNull() && m_total_score_isValid;
}

QString OAIInline_response_200_19::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIInline_response_200_19::asJsonObject() const {
    QJsonObject obj;
    if (m_number_of_words_isSet) {
        obj.insert(QString("number_of_words"), ::OpenAPI::toJsonValue(number_of_words));
    }
    if (m_number_of_sentences_isSet) {
        obj.insert(QString("number_of_sentences"), ::OpenAPI::toJsonValue(number_of_sentences));
    }
    if (readability.isSet()) {
        obj.insert(QString("readability"), ::OpenAPI::toJsonValue(readability));
    }
    if (skimmability.isSet()) {
        obj.insert(QString("skimmability"), ::OpenAPI::toJsonValue(skimmability));
    }
    if (interestingness.isSet()) {
        obj.insert(QString("interestingness"), ::OpenAPI::toJsonValue(interestingness));
    }
    if (style.isSet()) {
        obj.insert(QString("style"), ::OpenAPI::toJsonValue(style));
    }
    if (m_total_score_isSet) {
        obj.insert(QString("total_score"), ::OpenAPI::toJsonValue(total_score));
    }
    return obj;
}

qint32 OAIInline_response_200_19::getNumberOfWords() const {
    return number_of_words;
}
void OAIInline_response_200_19::setNumberOfWords(const qint32 &number_of_words) {
    this->number_of_words = number_of_words;
    this->m_number_of_words_isSet = true;
}

bool OAIInline_response_200_19::is_number_of_words_Set() const{
    return m_number_of_words_isSet;
}

bool OAIInline_response_200_19::is_number_of_words_Valid() const{
    return m_number_of_words_isValid;
}

qint32 OAIInline_response_200_19::getNumberOfSentences() const {
    return number_of_sentences;
}
void OAIInline_response_200_19::setNumberOfSentences(const qint32 &number_of_sentences) {
    this->number_of_sentences = number_of_sentences;
    this->m_number_of_sentences_isSet = true;
}

bool OAIInline_response_200_19::is_number_of_sentences_Set() const{
    return m_number_of_sentences_isSet;
}

bool OAIInline_response_200_19::is_number_of_sentences_Valid() const{
    return m_number_of_sentences_isValid;
}

OAIInline_response_200_19_readability OAIInline_response_200_19::getReadability() const {
    return readability;
}
void OAIInline_response_200_19::setReadability(const OAIInline_response_200_19_readability &readability) {
    this->readability = readability;
    this->m_readability_isSet = true;
}

bool OAIInline_response_200_19::is_readability_Set() const{
    return m_readability_isSet;
}

bool OAIInline_response_200_19::is_readability_Valid() const{
    return m_readability_isValid;
}

OAIInline_response_200_19_skimmability OAIInline_response_200_19::getSkimmability() const {
    return skimmability;
}
void OAIInline_response_200_19::setSkimmability(const OAIInline_response_200_19_skimmability &skimmability) {
    this->skimmability = skimmability;
    this->m_skimmability_isSet = true;
}

bool OAIInline_response_200_19::is_skimmability_Set() const{
    return m_skimmability_isSet;
}

bool OAIInline_response_200_19::is_skimmability_Valid() const{
    return m_skimmability_isValid;
}

OAIInline_response_200_19_interestingness OAIInline_response_200_19::getInterestingness() const {
    return interestingness;
}
void OAIInline_response_200_19::setInterestingness(const OAIInline_response_200_19_interestingness &interestingness) {
    this->interestingness = interestingness;
    this->m_interestingness_isSet = true;
}

bool OAIInline_response_200_19::is_interestingness_Set() const{
    return m_interestingness_isSet;
}

bool OAIInline_response_200_19::is_interestingness_Valid() const{
    return m_interestingness_isValid;
}

OAIInline_response_200_19_style OAIInline_response_200_19::getStyle() const {
    return style;
}
void OAIInline_response_200_19::setStyle(const OAIInline_response_200_19_style &style) {
    this->style = style;
    this->m_style_isSet = true;
}

bool OAIInline_response_200_19::is_style_Set() const{
    return m_style_isSet;
}

bool OAIInline_response_200_19::is_style_Valid() const{
    return m_style_isValid;
}

double OAIInline_response_200_19::getTotalScore() const {
    return total_score;
}
void OAIInline_response_200_19::setTotalScore(const double &total_score) {
    this->total_score = total_score;
    this->m_total_score_isSet = true;
}

bool OAIInline_response_200_19::is_total_score_Set() const{
    return m_total_score_isSet;
}

bool OAIInline_response_200_19::is_total_score_Valid() const{
    return m_total_score_isValid;
}

bool OAIInline_response_200_19::isSet() const {
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

        if (readability.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (skimmability.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (interestingness.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (style.isSet()) {
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

bool OAIInline_response_200_19::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
