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

#include "OAIRetrievePageRankAPI_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRetrievePageRankAPI_200_response::OAIRetrievePageRankAPI_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRetrievePageRankAPI_200_response::OAIRetrievePageRankAPI_200_response() {
    this->initializeModel();
}

OAIRetrievePageRankAPI_200_response::~OAIRetrievePageRankAPI_200_response() {}

void OAIRetrievePageRankAPI_200_response::initializeModel() {

    m_page_rank_isSet = false;
    m_page_rank_isValid = false;

    m_position_isSet = false;
    m_position_isValid = false;

    m_percentile_isSet = false;
    m_percentile_isValid = false;
}

void OAIRetrievePageRankAPI_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRetrievePageRankAPI_200_response::fromJsonObject(QJsonObject json) {

    m_page_rank_isValid = ::OpenAPI::fromJsonValue(m_page_rank, json[QString("page_rank")]);
    m_page_rank_isSet = !json[QString("page_rank")].isNull() && m_page_rank_isValid;

    m_position_isValid = ::OpenAPI::fromJsonValue(m_position, json[QString("position")]);
    m_position_isSet = !json[QString("position")].isNull() && m_position_isValid;

    m_percentile_isValid = ::OpenAPI::fromJsonValue(m_percentile, json[QString("percentile")]);
    m_percentile_isSet = !json[QString("percentile")].isNull() && m_percentile_isValid;
}

QString OAIRetrievePageRankAPI_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRetrievePageRankAPI_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_page_rank_isSet) {
        obj.insert(QString("page_rank"), ::OpenAPI::toJsonValue(m_page_rank));
    }
    if (m_position_isSet) {
        obj.insert(QString("position"), ::OpenAPI::toJsonValue(m_position));
    }
    if (m_percentile_isSet) {
        obj.insert(QString("percentile"), ::OpenAPI::toJsonValue(m_percentile));
    }
    return obj;
}

double OAIRetrievePageRankAPI_200_response::getPageRank() const {
    return m_page_rank;
}
void OAIRetrievePageRankAPI_200_response::setPageRank(const double &page_rank) {
    m_page_rank = page_rank;
    m_page_rank_isSet = true;
}

bool OAIRetrievePageRankAPI_200_response::is_page_rank_Set() const{
    return m_page_rank_isSet;
}

bool OAIRetrievePageRankAPI_200_response::is_page_rank_Valid() const{
    return m_page_rank_isValid;
}

qint32 OAIRetrievePageRankAPI_200_response::getPosition() const {
    return m_position;
}
void OAIRetrievePageRankAPI_200_response::setPosition(const qint32 &position) {
    m_position = position;
    m_position_isSet = true;
}

bool OAIRetrievePageRankAPI_200_response::is_position_Set() const{
    return m_position_isSet;
}

bool OAIRetrievePageRankAPI_200_response::is_position_Valid() const{
    return m_position_isValid;
}

double OAIRetrievePageRankAPI_200_response::getPercentile() const {
    return m_percentile;
}
void OAIRetrievePageRankAPI_200_response::setPercentile(const double &percentile) {
    m_percentile = percentile;
    m_percentile_isSet = true;
}

bool OAIRetrievePageRankAPI_200_response::is_percentile_Set() const{
    return m_percentile_isSet;
}

bool OAIRetrievePageRankAPI_200_response::is_percentile_Valid() const{
    return m_percentile_isValid;
}

bool OAIRetrievePageRankAPI_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_page_rank_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_position_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_percentile_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRetrievePageRankAPI_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
