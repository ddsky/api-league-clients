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

#include "OAIRetrieveRecipeInformationAPI_200_response_scores.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRetrieveRecipeInformationAPI_200_response_scores::OAIRetrieveRecipeInformationAPI_200_response_scores(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRetrieveRecipeInformationAPI_200_response_scores::OAIRetrieveRecipeInformationAPI_200_response_scores() {
    this->initializeModel();
}

OAIRetrieveRecipeInformationAPI_200_response_scores::~OAIRetrieveRecipeInformationAPI_200_response_scores() {}

void OAIRetrieveRecipeInformationAPI_200_response_scores::initializeModel() {

    m_meta_score_isSet = false;
    m_meta_score_isValid = false;

    m_weight_watcher_smart_points_isSet = false;
    m_weight_watcher_smart_points_isValid = false;

    m_health_score_isSet = false;
    m_health_score_isValid = false;
}

void OAIRetrieveRecipeInformationAPI_200_response_scores::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRetrieveRecipeInformationAPI_200_response_scores::fromJsonObject(QJsonObject json) {

    m_meta_score_isValid = ::OpenAPI::fromJsonValue(m_meta_score, json[QString("meta_score")]);
    m_meta_score_isSet = !json[QString("meta_score")].isNull() && m_meta_score_isValid;

    m_weight_watcher_smart_points_isValid = ::OpenAPI::fromJsonValue(m_weight_watcher_smart_points, json[QString("weight_watcher_smart_points")]);
    m_weight_watcher_smart_points_isSet = !json[QString("weight_watcher_smart_points")].isNull() && m_weight_watcher_smart_points_isValid;

    m_health_score_isValid = ::OpenAPI::fromJsonValue(m_health_score, json[QString("health_score")]);
    m_health_score_isSet = !json[QString("health_score")].isNull() && m_health_score_isValid;
}

QString OAIRetrieveRecipeInformationAPI_200_response_scores::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRetrieveRecipeInformationAPI_200_response_scores::asJsonObject() const {
    QJsonObject obj;
    if (m_meta_score_isSet) {
        obj.insert(QString("meta_score"), ::OpenAPI::toJsonValue(m_meta_score));
    }
    if (m_weight_watcher_smart_points_isSet) {
        obj.insert(QString("weight_watcher_smart_points"), ::OpenAPI::toJsonValue(m_weight_watcher_smart_points));
    }
    if (m_health_score_isSet) {
        obj.insert(QString("health_score"), ::OpenAPI::toJsonValue(m_health_score));
    }
    return obj;
}

double OAIRetrieveRecipeInformationAPI_200_response_scores::getMetaScore() const {
    return m_meta_score;
}
void OAIRetrieveRecipeInformationAPI_200_response_scores::setMetaScore(const double &meta_score) {
    m_meta_score = meta_score;
    m_meta_score_isSet = true;
}

bool OAIRetrieveRecipeInformationAPI_200_response_scores::is_meta_score_Set() const{
    return m_meta_score_isSet;
}

bool OAIRetrieveRecipeInformationAPI_200_response_scores::is_meta_score_Valid() const{
    return m_meta_score_isValid;
}

qint32 OAIRetrieveRecipeInformationAPI_200_response_scores::getWeightWatcherSmartPoints() const {
    return m_weight_watcher_smart_points;
}
void OAIRetrieveRecipeInformationAPI_200_response_scores::setWeightWatcherSmartPoints(const qint32 &weight_watcher_smart_points) {
    m_weight_watcher_smart_points = weight_watcher_smart_points;
    m_weight_watcher_smart_points_isSet = true;
}

bool OAIRetrieveRecipeInformationAPI_200_response_scores::is_weight_watcher_smart_points_Set() const{
    return m_weight_watcher_smart_points_isSet;
}

bool OAIRetrieveRecipeInformationAPI_200_response_scores::is_weight_watcher_smart_points_Valid() const{
    return m_weight_watcher_smart_points_isValid;
}

qint32 OAIRetrieveRecipeInformationAPI_200_response_scores::getHealthScore() const {
    return m_health_score;
}
void OAIRetrieveRecipeInformationAPI_200_response_scores::setHealthScore(const qint32 &health_score) {
    m_health_score = health_score;
    m_health_score_isSet = true;
}

bool OAIRetrieveRecipeInformationAPI_200_response_scores::is_health_score_Set() const{
    return m_health_score_isSet;
}

bool OAIRetrieveRecipeInformationAPI_200_response_scores::is_health_score_Valid() const{
    return m_health_score_isValid;
}

bool OAIRetrieveRecipeInformationAPI_200_response_scores::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_meta_score_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_weight_watcher_smart_points_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_health_score_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRetrieveRecipeInformationAPI_200_response_scores::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
