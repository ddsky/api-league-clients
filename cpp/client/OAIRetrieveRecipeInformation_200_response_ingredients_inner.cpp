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

#include "OAIRetrieveRecipeInformation_200_response_ingredients_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIRetrieveRecipeInformation_200_response_ingredients_inner::OAIRetrieveRecipeInformation_200_response_ingredients_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIRetrieveRecipeInformation_200_response_ingredients_inner::OAIRetrieveRecipeInformation_200_response_ingredients_inner() {
    this->initializeModel();
}

OAIRetrieveRecipeInformation_200_response_ingredients_inner::~OAIRetrieveRecipeInformation_200_response_ingredients_inner() {}

void OAIRetrieveRecipeInformation_200_response_ingredients_inner::initializeModel() {

    m_image_isSet = false;
    m_image_isValid = false;

    m_name_clean_isSet = false;
    m_name_clean_isValid = false;

    m_amount_isSet = false;
    m_amount_isValid = false;

    m_unit_isSet = false;
    m_unit_isValid = false;

    m_measures_isSet = false;
    m_measures_isValid = false;

    m_original_isSet = false;
    m_original_isValid = false;

    m_meta_isSet = false;
    m_meta_isValid = false;

    m_original_name_isSet = false;
    m_original_name_isValid = false;

    m_name_isSet = false;
    m_name_isValid = false;

    m_id_isSet = false;
    m_id_isValid = false;

    m_aisle_isSet = false;
    m_aisle_isValid = false;

    m_consistency_isSet = false;
    m_consistency_isValid = false;
}

void OAIRetrieveRecipeInformation_200_response_ingredients_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIRetrieveRecipeInformation_200_response_ingredients_inner::fromJsonObject(QJsonObject json) {

    m_image_isValid = ::OpenAPI::fromJsonValue(m_image, json[QString("image")]);
    m_image_isSet = !json[QString("image")].isNull() && m_image_isValid;

    m_name_clean_isValid = ::OpenAPI::fromJsonValue(m_name_clean, json[QString("name_clean")]);
    m_name_clean_isSet = !json[QString("name_clean")].isNull() && m_name_clean_isValid;

    m_amount_isValid = ::OpenAPI::fromJsonValue(m_amount, json[QString("amount")]);
    m_amount_isSet = !json[QString("amount")].isNull() && m_amount_isValid;

    m_unit_isValid = ::OpenAPI::fromJsonValue(m_unit, json[QString("unit")]);
    m_unit_isSet = !json[QString("unit")].isNull() && m_unit_isValid;

    m_measures_isValid = ::OpenAPI::fromJsonValue(m_measures, json[QString("measures")]);
    m_measures_isSet = !json[QString("measures")].isNull() && m_measures_isValid;

    m_original_isValid = ::OpenAPI::fromJsonValue(m_original, json[QString("original")]);
    m_original_isSet = !json[QString("original")].isNull() && m_original_isValid;

    m_meta_isValid = ::OpenAPI::fromJsonValue(m_meta, json[QString("meta")]);
    m_meta_isSet = !json[QString("meta")].isNull() && m_meta_isValid;

    m_original_name_isValid = ::OpenAPI::fromJsonValue(m_original_name, json[QString("original_name")]);
    m_original_name_isSet = !json[QString("original_name")].isNull() && m_original_name_isValid;

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_aisle_isValid = ::OpenAPI::fromJsonValue(m_aisle, json[QString("aisle")]);
    m_aisle_isSet = !json[QString("aisle")].isNull() && m_aisle_isValid;

    m_consistency_isValid = ::OpenAPI::fromJsonValue(m_consistency, json[QString("consistency")]);
    m_consistency_isSet = !json[QString("consistency")].isNull() && m_consistency_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_ingredients_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIRetrieveRecipeInformation_200_response_ingredients_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_image_isSet) {
        obj.insert(QString("image"), ::OpenAPI::toJsonValue(m_image));
    }
    if (m_name_clean_isSet) {
        obj.insert(QString("name_clean"), ::OpenAPI::toJsonValue(m_name_clean));
    }
    if (m_amount_isSet) {
        obj.insert(QString("amount"), ::OpenAPI::toJsonValue(m_amount));
    }
    if (m_unit_isSet) {
        obj.insert(QString("unit"), ::OpenAPI::toJsonValue(m_unit));
    }
    if (m_measures.isSet()) {
        obj.insert(QString("measures"), ::OpenAPI::toJsonValue(m_measures));
    }
    if (m_original_isSet) {
        obj.insert(QString("original"), ::OpenAPI::toJsonValue(m_original));
    }
    if (m_meta.size() > 0) {
        obj.insert(QString("meta"), ::OpenAPI::toJsonValue(m_meta));
    }
    if (m_original_name_isSet) {
        obj.insert(QString("original_name"), ::OpenAPI::toJsonValue(m_original_name));
    }
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    if (m_aisle_isSet) {
        obj.insert(QString("aisle"), ::OpenAPI::toJsonValue(m_aisle));
    }
    if (m_consistency_isSet) {
        obj.insert(QString("consistency"), ::OpenAPI::toJsonValue(m_consistency));
    }
    return obj;
}

QString OAIRetrieveRecipeInformation_200_response_ingredients_inner::getImage() const {
    return m_image;
}
void OAIRetrieveRecipeInformation_200_response_ingredients_inner::setImage(const QString &image) {
    m_image = image;
    m_image_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_image_Set() const{
    return m_image_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_image_Valid() const{
    return m_image_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_ingredients_inner::getNameClean() const {
    return m_name_clean;
}
void OAIRetrieveRecipeInformation_200_response_ingredients_inner::setNameClean(const QString &name_clean) {
    m_name_clean = name_clean;
    m_name_clean_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_name_clean_Set() const{
    return m_name_clean_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_name_clean_Valid() const{
    return m_name_clean_isValid;
}

double OAIRetrieveRecipeInformation_200_response_ingredients_inner::getAmount() const {
    return m_amount;
}
void OAIRetrieveRecipeInformation_200_response_ingredients_inner::setAmount(const double &amount) {
    m_amount = amount;
    m_amount_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_amount_Set() const{
    return m_amount_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_amount_Valid() const{
    return m_amount_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_ingredients_inner::getUnit() const {
    return m_unit;
}
void OAIRetrieveRecipeInformation_200_response_ingredients_inner::setUnit(const QString &unit) {
    m_unit = unit;
    m_unit_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_unit_Set() const{
    return m_unit_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_unit_Valid() const{
    return m_unit_isValid;
}

OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures OAIRetrieveRecipeInformation_200_response_ingredients_inner::getMeasures() const {
    return m_measures;
}
void OAIRetrieveRecipeInformation_200_response_ingredients_inner::setMeasures(const OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures &measures) {
    m_measures = measures;
    m_measures_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_measures_Set() const{
    return m_measures_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_measures_Valid() const{
    return m_measures_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_ingredients_inner::getOriginal() const {
    return m_original;
}
void OAIRetrieveRecipeInformation_200_response_ingredients_inner::setOriginal(const QString &original) {
    m_original = original;
    m_original_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_original_Set() const{
    return m_original_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_original_Valid() const{
    return m_original_isValid;
}

QList<QString> OAIRetrieveRecipeInformation_200_response_ingredients_inner::getMeta() const {
    return m_meta;
}
void OAIRetrieveRecipeInformation_200_response_ingredients_inner::setMeta(const QList<QString> &meta) {
    m_meta = meta;
    m_meta_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_meta_Set() const{
    return m_meta_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_meta_Valid() const{
    return m_meta_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_ingredients_inner::getOriginalName() const {
    return m_original_name;
}
void OAIRetrieveRecipeInformation_200_response_ingredients_inner::setOriginalName(const QString &original_name) {
    m_original_name = original_name;
    m_original_name_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_original_name_Set() const{
    return m_original_name_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_original_name_Valid() const{
    return m_original_name_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_ingredients_inner::getName() const {
    return m_name;
}
void OAIRetrieveRecipeInformation_200_response_ingredients_inner::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_name_Set() const{
    return m_name_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_name_Valid() const{
    return m_name_isValid;
}

qint32 OAIRetrieveRecipeInformation_200_response_ingredients_inner::getId() const {
    return m_id;
}
void OAIRetrieveRecipeInformation_200_response_ingredients_inner::setId(const qint32 &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_id_Set() const{
    return m_id_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_id_Valid() const{
    return m_id_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_ingredients_inner::getAisle() const {
    return m_aisle;
}
void OAIRetrieveRecipeInformation_200_response_ingredients_inner::setAisle(const QString &aisle) {
    m_aisle = aisle;
    m_aisle_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_aisle_Set() const{
    return m_aisle_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_aisle_Valid() const{
    return m_aisle_isValid;
}

QString OAIRetrieveRecipeInformation_200_response_ingredients_inner::getConsistency() const {
    return m_consistency;
}
void OAIRetrieveRecipeInformation_200_response_ingredients_inner::setConsistency(const QString &consistency) {
    m_consistency = consistency;
    m_consistency_isSet = true;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_consistency_Set() const{
    return m_consistency_isSet;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::is_consistency_Valid() const{
    return m_consistency_isValid;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_image_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_name_clean_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_amount_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_unit_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_measures.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_original_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_meta.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_original_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_aisle_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_consistency_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIRetrieveRecipeInformation_200_response_ingredients_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
