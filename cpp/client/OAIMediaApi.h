/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#ifndef OAI_OAIMediaApi_H
#define OAI_OAIMediaApi_H

#include "OAIHelpers.h"
#include "OAIHttpRequest.h"
#include "OAIServerConfiguration.h"
#include "OAIOauth.h"

#include "OAIDetectMainImageColor_200_response_inner.h"
#include "OAIObject.h"
#include "OAISearchRoyaltyFreeImages_200_response.h"
#include <QString>

#include <QObject>
#include <QByteArray>
#include <QStringList>
#include <QList>
#include <QNetworkAccessManager>

namespace OpenAPI {

class OAIMediaApi : public QObject {
    Q_OBJECT

public:
    OAIMediaApi(const int timeOut = 0);
    ~OAIMediaApi();

    void initializeServerConfigs();
    int setDefaultServerValue(int serverIndex,const QString &operation, const QString &variable,const QString &val);
    void setServerIndex(const QString &operation, int serverIndex);
    void setApiKey(const QString &apiKeyName, const QString &apiKey);
    void setBearerToken(const QString &token);
    void setUsername(const QString &username);
    void setPassword(const QString &password);
    void setTimeOut(const int timeOut);
    void setWorkingDirectory(const QString &path);
    void setNetworkAccessManager(QNetworkAccessManager* manager);
    int addServerConfiguration(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables = QMap<QString, OAIServerVariable>());
    void setNewServerForAllOperations(const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void setNewServer(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void addHeaders(const QString &key, const QString &value);
    void enableRequestCompression();
    void enableResponseCompression();
    void abortRequests();
    QString getParamStylePrefix(const QString &style);
    QString getParamStyleSuffix(const QString &style);
    QString getParamStyleDelimiter(const QString &style, const QString &name, bool isExplode);

    /**
    * @param[in]  url QString [required]
    */
    void detectMainImageColor(const QString &url);

    /**
    * @param[in]  url QString [required]
    * @param[in]  width qint32 [required]
    * @param[in]  height qint32 [required]
    * @param[in]  crop bool [required]
    */
    void rescaleImage(const QString &url, const qint32 &width, const qint32 &height, const bool &crop);

    /**
    * @param[in]  query QString [required]
    * @param[in]  number qint32 [optional]
    */
    void searchRoyaltyFreeImages(const QString &query, const ::OpenAPI::OptionalParam<qint32> &number = ::OpenAPI::OptionalParam<qint32>());


private:
    QMap<QString,int> _serverIndices;
    QMap<QString,QList<OAIServerConfiguration>> _serverConfigs;
    QMap<QString, QString> _apiKeys;
    QString _bearerToken;
    QString _username;
    QString _password;
    int _timeOut;
    QString _workingDirectory;
    QNetworkAccessManager* _manager;
    QMap<QString, QString> _defaultHeaders;
    bool _isResponseCompressionEnabled;
    bool _isRequestCompressionEnabled;
    OAIHttpRequestInput _latestInput;
    OAIHttpRequestWorker *_latestWorker;
    QStringList _latestScope;
    OauthCode _authFlow;
    OauthImplicit _implicitFlow;
    OauthCredentials _credentialFlow;
    OauthPassword _passwordFlow;
    int _OauthMethod = 0;

    void detectMainImageColorCallback(OAIHttpRequestWorker *worker);
    void rescaleImageCallback(OAIHttpRequestWorker *worker);
    void searchRoyaltyFreeImagesCallback(OAIHttpRequestWorker *worker);

Q_SIGNALS:

    void detectMainImageColorSignal(QList<OAIDetectMainImageColor_200_response_inner> summary);
    void rescaleImageSignal(OAIObject summary);
    void searchRoyaltyFreeImagesSignal(OAISearchRoyaltyFreeImages_200_response summary);

    void detectMainImageColorSignalFull(OAIHttpRequestWorker *worker, QList<OAIDetectMainImageColor_200_response_inner> summary);
    void rescaleImageSignalFull(OAIHttpRequestWorker *worker, OAIObject summary);
    void searchRoyaltyFreeImagesSignalFull(OAIHttpRequestWorker *worker, OAISearchRoyaltyFreeImages_200_response summary);

    Q_DECL_DEPRECATED_X("Use detectMainImageColorSignalError() instead")
    void detectMainImageColorSignalE(QList<OAIDetectMainImageColor_200_response_inner> summary, QNetworkReply::NetworkError error_type, QString error_str);
    void detectMainImageColorSignalError(QList<OAIDetectMainImageColor_200_response_inner> summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use rescaleImageSignalError() instead")
    void rescaleImageSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString error_str);
    void rescaleImageSignalError(OAIObject summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchRoyaltyFreeImagesSignalError() instead")
    void searchRoyaltyFreeImagesSignalE(OAISearchRoyaltyFreeImages_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchRoyaltyFreeImagesSignalError(OAISearchRoyaltyFreeImages_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);

    Q_DECL_DEPRECATED_X("Use detectMainImageColorSignalErrorFull() instead")
    void detectMainImageColorSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void detectMainImageColorSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use rescaleImageSignalErrorFull() instead")
    void rescaleImageSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void rescaleImageSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchRoyaltyFreeImagesSignalErrorFull() instead")
    void searchRoyaltyFreeImagesSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchRoyaltyFreeImagesSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);

    void abortRequestsSignal();
    void allPendingRequestsCompleted();

public Q_SLOTS:
    void tokenAvailable();
};

} // namespace OpenAPI
#endif
