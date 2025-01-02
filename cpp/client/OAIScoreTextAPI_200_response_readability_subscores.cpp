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

#include "OAIScoreTextAPI_200_response_readability_subscores.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIScoreTextAPI_200_response_readability_subscores::OAIScoreTextAPI_200_response_readability_subscores(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIScoreTextAPI_200_response_readability_subscores::OAIScoreTextAPI_200_response_readability_subscores() {
    this->initializeModel();
}

OAIScoreTextAPI_200_response_readability_subscores::~OAIScoreTextAPI_200_response_readability_subscores() {}

void OAIScoreTextAPI_200_response_readability_subscores::initializeModel() {

    m_reading_time_seconds_isSet = false;
    m_reading_time_seconds_isValid = false;

    m_forcast_isSet = false;
    m_forcast_isValid = false;

    m_flesch_isSet = false;
    m_flesch_isValid = false;

    m_smog_isSet = false;
    m_smog_isValid = false;

    m_ari_isSet = false;
    m_ari_isValid = false;

    m_lix_isSet = false;
    m_lix_isValid = false;

    m_coleman_liau_isSet = false;
    m_coleman_liau_isValid = false;

    m_kincaid_isSet = false;
    m_kincaid_isValid = false;

    m_fog_isSet = false;
    m_fog_isValid = false;
}

void OAIScoreTextAPI_200_response_readability_subscores::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIScoreTextAPI_200_response_readability_subscores::fromJsonObject(QJsonObject json) {

    m_reading_time_seconds_isValid = ::OpenAPI::fromJsonValue(m_reading_time_seconds, json[QString("reading_time_seconds")]);
    m_reading_time_seconds_isSet = !json[QString("reading_time_seconds")].isNull() && m_reading_time_seconds_isValid;

    m_forcast_isValid = ::OpenAPI::fromJsonValue(m_forcast, json[QString("forcast")]);
    m_forcast_isSet = !json[QString("forcast")].isNull() && m_forcast_isValid;

    m_flesch_isValid = ::OpenAPI::fromJsonValue(m_flesch, json[QString("flesch")]);
    m_flesch_isSet = !json[QString("flesch")].isNull() && m_flesch_isValid;

    m_smog_isValid = ::OpenAPI::fromJsonValue(m_smog, json[QString("smog")]);
    m_smog_isSet = !json[QString("smog")].isNull() && m_smog_isValid;

    m_ari_isValid = ::OpenAPI::fromJsonValue(m_ari, json[QString("ari")]);
    m_ari_isSet = !json[QString("ari")].isNull() && m_ari_isValid;

    m_lix_isValid = ::OpenAPI::fromJsonValue(m_lix, json[QString("lix")]);
    m_lix_isSet = !json[QString("lix")].isNull() && m_lix_isValid;

    m_coleman_liau_isValid = ::OpenAPI::fromJsonValue(m_coleman_liau, json[QString("coleman_liau")]);
    m_coleman_liau_isSet = !json[QString("coleman_liau")].isNull() && m_coleman_liau_isValid;

    m_kincaid_isValid = ::OpenAPI::fromJsonValue(m_kincaid, json[QString("kincaid")]);
    m_kincaid_isSet = !json[QString("kincaid")].isNull() && m_kincaid_isValid;

    m_fog_isValid = ::OpenAPI::fromJsonValue(m_fog, json[QString("fog")]);
    m_fog_isSet = !json[QString("fog")].isNull() && m_fog_isValid;
}

QString OAIScoreTextAPI_200_response_readability_subscores::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIScoreTextAPI_200_response_readability_subscores::asJsonObject() const {
    QJsonObject obj;
    if (m_reading_time_seconds_isSet) {
        obj.insert(QString("reading_time_seconds"), ::OpenAPI::toJsonValue(m_reading_time_seconds));
    }
    if (m_forcast_isSet) {
        obj.insert(QString("forcast"), ::OpenAPI::toJsonValue(m_forcast));
    }
    if (m_flesch_isSet) {
        obj.insert(QString("flesch"), ::OpenAPI::toJsonValue(m_flesch));
    }
    if (m_smog_isSet) {
        obj.insert(QString("smog"), ::OpenAPI::toJsonValue(m_smog));
    }
    if (m_ari_isSet) {
        obj.insert(QString("ari"), ::OpenAPI::toJsonValue(m_ari));
    }
    if (m_lix_isSet) {
        obj.insert(QString("lix"), ::OpenAPI::toJsonValue(m_lix));
    }
    if (m_coleman_liau_isSet) {
        obj.insert(QString("coleman_liau"), ::OpenAPI::toJsonValue(m_coleman_liau));
    }
    if (m_kincaid_isSet) {
        obj.insert(QString("kincaid"), ::OpenAPI::toJsonValue(m_kincaid));
    }
    if (m_fog_isSet) {
        obj.insert(QString("fog"), ::OpenAPI::toJsonValue(m_fog));
    }
    return obj;
}

qint32 OAIScoreTextAPI_200_response_readability_subscores::getReadingTimeSeconds() const {
    return m_reading_time_seconds;
}
void OAIScoreTextAPI_200_response_readability_subscores::setReadingTimeSeconds(const qint32 &reading_time_seconds) {
    m_reading_time_seconds = reading_time_seconds;
    m_reading_time_seconds_isSet = true;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_reading_time_seconds_Set() const{
    return m_reading_time_seconds_isSet;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_reading_time_seconds_Valid() const{
    return m_reading_time_seconds_isValid;
}

double OAIScoreTextAPI_200_response_readability_subscores::getForcast() const {
    return m_forcast;
}
void OAIScoreTextAPI_200_response_readability_subscores::setForcast(const double &forcast) {
    m_forcast = forcast;
    m_forcast_isSet = true;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_forcast_Set() const{
    return m_forcast_isSet;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_forcast_Valid() const{
    return m_forcast_isValid;
}

double OAIScoreTextAPI_200_response_readability_subscores::getFlesch() const {
    return m_flesch;
}
void OAIScoreTextAPI_200_response_readability_subscores::setFlesch(const double &flesch) {
    m_flesch = flesch;
    m_flesch_isSet = true;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_flesch_Set() const{
    return m_flesch_isSet;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_flesch_Valid() const{
    return m_flesch_isValid;
}

double OAIScoreTextAPI_200_response_readability_subscores::getSmog() const {
    return m_smog;
}
void OAIScoreTextAPI_200_response_readability_subscores::setSmog(const double &smog) {
    m_smog = smog;
    m_smog_isSet = true;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_smog_Set() const{
    return m_smog_isSet;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_smog_Valid() const{
    return m_smog_isValid;
}

double OAIScoreTextAPI_200_response_readability_subscores::getAri() const {
    return m_ari;
}
void OAIScoreTextAPI_200_response_readability_subscores::setAri(const double &ari) {
    m_ari = ari;
    m_ari_isSet = true;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_ari_Set() const{
    return m_ari_isSet;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_ari_Valid() const{
    return m_ari_isValid;
}

double OAIScoreTextAPI_200_response_readability_subscores::getLix() const {
    return m_lix;
}
void OAIScoreTextAPI_200_response_readability_subscores::setLix(const double &lix) {
    m_lix = lix;
    m_lix_isSet = true;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_lix_Set() const{
    return m_lix_isSet;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_lix_Valid() const{
    return m_lix_isValid;
}

double OAIScoreTextAPI_200_response_readability_subscores::getColemanLiau() const {
    return m_coleman_liau;
}
void OAIScoreTextAPI_200_response_readability_subscores::setColemanLiau(const double &coleman_liau) {
    m_coleman_liau = coleman_liau;
    m_coleman_liau_isSet = true;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_coleman_liau_Set() const{
    return m_coleman_liau_isSet;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_coleman_liau_Valid() const{
    return m_coleman_liau_isValid;
}

double OAIScoreTextAPI_200_response_readability_subscores::getKincaid() const {
    return m_kincaid;
}
void OAIScoreTextAPI_200_response_readability_subscores::setKincaid(const double &kincaid) {
    m_kincaid = kincaid;
    m_kincaid_isSet = true;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_kincaid_Set() const{
    return m_kincaid_isSet;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_kincaid_Valid() const{
    return m_kincaid_isValid;
}

double OAIScoreTextAPI_200_response_readability_subscores::getFog() const {
    return m_fog;
}
void OAIScoreTextAPI_200_response_readability_subscores::setFog(const double &fog) {
    m_fog = fog;
    m_fog_isSet = true;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_fog_Set() const{
    return m_fog_isSet;
}

bool OAIScoreTextAPI_200_response_readability_subscores::is_fog_Valid() const{
    return m_fog_isValid;
}

bool OAIScoreTextAPI_200_response_readability_subscores::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_reading_time_seconds_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_forcast_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_flesch_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_smog_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_ari_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_lix_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_coleman_liau_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_kincaid_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_fog_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIScoreTextAPI_200_response_readability_subscores::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI