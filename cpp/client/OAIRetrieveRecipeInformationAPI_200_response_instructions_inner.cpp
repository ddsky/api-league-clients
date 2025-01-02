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

#include "OAIRetrieveRecipeInformationAPI_200_response_instructions_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::OAIRetrieveRecipeInformationAPI_200_response_instructions_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::OAIRetrieveRecipeInformationAPI_200_response_instructions_inner() {
    this->initializeModel();
}

OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::~OAIRetrieveRecipeInformationAPI_200_response_instructions_inner() {}

void OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::initializeModel() {

    m_name_isSet = false;
    m_name_isValid = false;

    m_steps_isSet = false;
    m_steps_isValid = false;
}

void OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::fromJsonObject(QJsonObject json) {

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_steps_isValid = ::OpenAPI::fromJsonValue(m_steps, json[QString("steps")]);
    m_steps_isSet = !json[QString("steps")].isNull() && m_steps_isValid;
}

QString OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    if (m_steps.size() > 0) {
        obj.insert(QString("steps"), ::OpenAPI::toJsonValue(m_steps));
    }
    return obj;
}

QString OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::getName() const {
    return m_name;
}
void OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::is_name_Set() const{
    return m_name_isSet;
}

bool OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::is_name_Valid() const{
    return m_name_isValid;
}

QList<OAIRetrieveRecipeInformationAPI_200_response_instructions_inner_steps_inner> OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::getSteps() const {
    return m_steps;
}
void OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::setSteps(const QList<OAIRetrieveRecipeInformationAPI_200_response_instructions_inner_steps_inner> &steps) {
    m_steps = steps;
    m_steps_isSet = true;
}

bool OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::is_steps_Set() const{
    return m_steps_isSet;
}

bool OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::is_steps_Valid() const{
    return m_steps_isValid;
}

bool OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_steps.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRetrieveRecipeInformationAPI_200_response_instructions_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
