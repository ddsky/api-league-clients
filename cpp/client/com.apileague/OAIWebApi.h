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

#ifndef OAI_OAIWebApi_H
#define OAI_OAIWebApi_H

#include "OAIHelpers.h"
#include "OAIHttpRequest.h"
#include "OAIServerConfiguration.h"
#include "OAIOauth.h"

#include "com.apileague.client.model\OAIInline_response_200_12.h"
#include "com.apileague.client.model\OAIInline_response_200_13.h"
#include "com.apileague.client.model\OAIInline_response_200_14.h"
#include "com.apileague.client.model\OAIInline_response_200_15.h"
#include <QString>

#include <QObject>
#include <QByteArray>
#include <QStringList>
#include <QList>
#include <QNetworkAccessManager>

namespace OpenAPI {

class OAIWebApi : public QObject {
    Q_OBJECT

public:
    OAIWebApi(const int timeOut = 0);
    ~OAIWebApi();

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
    void extractAuthors(const QString &url);

    /**
    * @param[in]  url QString [required]
    */
    void extractContentFromAWebPage(const QString &url);

    /**
    * @param[in]  url QString [required]
    */
    void extractPublishDate(const QString &url);

    /**
    * @param[in]  query QString [required]
    * @param[in]  number qint32 [optional]
    */
    void searchWeb(const QString &query, const ::OpenAPI::OptionalParam<qint32> &number = ::OpenAPI::OptionalParam<qint32>());


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

    void extractAuthorsCallback(OAIHttpRequestWorker *worker);
    void extractContentFromAWebPageCallback(OAIHttpRequestWorker *worker);
    void extractPublishDateCallback(OAIHttpRequestWorker *worker);
    void searchWebCallback(OAIHttpRequestWorker *worker);

signals:

    void extractAuthorsSignal(OAIInline_response_200_14 summary);
    void extractContentFromAWebPageSignal(OAIInline_response_200_12 summary);
    void extractPublishDateSignal(OAIInline_response_200_13 summary);
    void searchWebSignal(OAIInline_response_200_15 summary);

    void extractAuthorsSignalFull(OAIHttpRequestWorker *worker, OAIInline_response_200_14 summary);
    void extractContentFromAWebPageSignalFull(OAIHttpRequestWorker *worker, OAIInline_response_200_12 summary);
    void extractPublishDateSignalFull(OAIHttpRequestWorker *worker, OAIInline_response_200_13 summary);
    void searchWebSignalFull(OAIHttpRequestWorker *worker, OAIInline_response_200_15 summary);

    void extractAuthorsSignalE(OAIInline_response_200_14 summary, QNetworkReply::NetworkError error_type, QString error_str);
    void extractContentFromAWebPageSignalE(OAIInline_response_200_12 summary, QNetworkReply::NetworkError error_type, QString error_str);
    void extractPublishDateSignalE(OAIInline_response_200_13 summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchWebSignalE(OAIInline_response_200_15 summary, QNetworkReply::NetworkError error_type, QString error_str);

    void extractAuthorsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void extractContentFromAWebPageSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void extractPublishDateSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchWebSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);

    void abortRequestsSignal();
    void allPendingRequestsCompleted();

public slots:
    void tokenAvailable();
    
};

} // namespace OpenAPI
#endif
