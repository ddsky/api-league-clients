/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures() {
    this->initializeModel();
}

OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::~OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures() {}

void OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::initializeModel() {

    m_metric_isSet = false;
    m_metric_isValid = false;

    m_us_isSet = false;
    m_us_isValid = false;
}

void OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::fromJsonObject(QJsonObject json) {

    m_metric_isValid = ::OpenAPI::fromJsonValue(m_metric, json[QString("metric")]);
    m_metric_isSet = !json[QString("metric")].isNull() && m_metric_isValid;

    m_us_isValid = ::OpenAPI::fromJsonValue(m_us, json[QString("us")]);
    m_us_isSet = !json[QString("us")].isNull() && m_us_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::asJsonObject() const {
    QJsonObject obj;
    if (m_metric.isSet()) {
        obj.insert(QString("metric"), ::OpenAPI::toJsonValue(m_metric));
    }
    if (m_us.isSet()) {
        obj.insert(QString("us"), ::OpenAPI::toJsonValue(m_us));
    }
    return obj;
}

OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_metric OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::getMetric() const {
    return m_metric;
}
void OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::setMetric(const OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_metric &metric) {
    m_metric = metric;
    m_metric_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::is_metric_Set() const{
    return m_metric_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::is_metric_Valid() const{
    return m_metric_isValid;
}

OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_metric OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::getUs() const {
    return m_us;
}
void OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::setUs(const OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures_metric &us) {
    m_us = us;
    m_us_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::is_us_Set() const{
    return m_us_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::is_us_Valid() const{
    return m_us_isValid;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_metric.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_us.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
