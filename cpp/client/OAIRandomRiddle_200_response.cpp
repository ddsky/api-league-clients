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

#include "OAIRandomRiddle_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRandomRiddle_200_response::OAIRandomRiddle_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRandomRiddle_200_response::OAIRandomRiddle_200_response() {
    this->initializeModel();
}

OAIRandomRiddle_200_response::~OAIRandomRiddle_200_response() {}

void OAIRandomRiddle_200_response::initializeModel() {

    m_riddle_isSet = false;
    m_riddle_isValid = false;

    m_answer_isSet = false;
    m_answer_isValid = false;

    m_difficulty_isSet = false;
    m_difficulty_isValid = false;
}

void OAIRandomRiddle_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRandomRiddle_200_response::fromJsonObject(QJsonObject json) {

    m_riddle_isValid = ::OpenAPI::fromJsonValue(m_riddle, json[QString("riddle")]);
    m_riddle_isSet = !json[QString("riddle")].isNull() && m_riddle_isValid;

    m_answer_isValid = ::OpenAPI::fromJsonValue(m_answer, json[QString("answer")]);
    m_answer_isSet = !json[QString("answer")].isNull() && m_answer_isValid;

    m_difficulty_isValid = ::OpenAPI::fromJsonValue(m_difficulty, json[QString("difficulty")]);
    m_difficulty_isSet = !json[QString("difficulty")].isNull() && m_difficulty_isValid;
}

QString OAIRandomRiddle_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRandomRiddle_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_riddle_isSet) {
        obj.insert(QString("riddle"), ::OpenAPI::toJsonValue(m_riddle));
    }
    if (m_answer_isSet) {
        obj.insert(QString("answer"), ::OpenAPI::toJsonValue(m_answer));
    }
    if (m_difficulty_isSet) {
        obj.insert(QString("difficulty"), ::OpenAPI::toJsonValue(m_difficulty));
    }
    return obj;
}

QString OAIRandomRiddle_200_response::getRiddle() const {
    return m_riddle;
}
void OAIRandomRiddle_200_response::setRiddle(const QString &riddle) {
    m_riddle = riddle;
    m_riddle_isSet = true;
}

bool OAIRandomRiddle_200_response::is_riddle_Set() const{
    return m_riddle_isSet;
}

bool OAIRandomRiddle_200_response::is_riddle_Valid() const{
    return m_riddle_isValid;
}

QString OAIRandomRiddle_200_response::getAnswer() const {
    return m_answer;
}
void OAIRandomRiddle_200_response::setAnswer(const QString &answer) {
    m_answer = answer;
    m_answer_isSet = true;
}

bool OAIRandomRiddle_200_response::is_answer_Set() const{
    return m_answer_isSet;
}

bool OAIRandomRiddle_200_response::is_answer_Valid() const{
    return m_answer_isValid;
}

QString OAIRandomRiddle_200_response::getDifficulty() const {
    return m_difficulty;
}
void OAIRandomRiddle_200_response::setDifficulty(const QString &difficulty) {
    m_difficulty = difficulty;
    m_difficulty_isSet = true;
}

bool OAIRandomRiddle_200_response::is_difficulty_Set() const{
    return m_difficulty_isSet;
}

bool OAIRandomRiddle_200_response::is_difficulty_Valid() const{
    return m_difficulty_isValid;
}

bool OAIRandomRiddle_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_riddle_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_answer_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_difficulty_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRandomRiddle_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
