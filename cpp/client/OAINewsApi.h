/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#ifndef OAI_OAINewsApi_H
#define OAI_OAINewsApi_H

#include "OAIHelpers.h"
#include "OAIHttpRequest.h"
#include "OAIServerConfiguration.h"
#include "OAIOauth.h"

#include "OAIExtractNews_200_response.h"
#include "OAISearchNews_200_response.h"
#include "OAITopNews_200_response.h"
#include <QString>

#include <QObject>
#include <QByteArray>
#include <QStringList>
#include <QList>
#include <QNetworkAccessManager>

namespace OpenAPI {

class OAINewsApi : public QObject {
    Q_OBJECT

public:
    OAINewsApi(const int timeOut = 0);
    ~OAINewsApi();

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
    * @param[in]  analyze bool [required]
    */
    void extractNews(const QString &url, const bool &analyze);

    /**
    * @param[in]  text QString [optional]
    * @param[in]  source_countries QString [optional]
    * @param[in]  language QString [optional]
    * @param[in]  min_sentiment double [optional]
    * @param[in]  max_sentiment double [optional]
    * @param[in]  earliest_publish_date QString [optional]
    * @param[in]  latest_publish_date QString [optional]
    * @param[in]  news_sources QString [optional]
    * @param[in]  authors QString [optional]
    * @param[in]  categories QString [optional]
    * @param[in]  entities QString [optional]
    * @param[in]  location_filter QString [optional]
    * @param[in]  sort QString [optional]
    * @param[in]  sort_direction QString [optional]
    * @param[in]  offset qint32 [optional]
    * @param[in]  number qint32 [optional]
    */
    void searchNews(const ::OpenAPI::OptionalParam<QString> &text = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &source_countries = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &language = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<double> &min_sentiment = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<double> &max_sentiment = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<QString> &earliest_publish_date = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &latest_publish_date = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &news_sources = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &authors = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &categories = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &entities = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &location_filter = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &sort = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &sort_direction = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<qint32> &offset = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<qint32> &number = ::OpenAPI::OptionalParam<qint32>());

    /**
    * @param[in]  source_country QString [required]
    * @param[in]  language QString [required]
    * @param[in]  date QString [optional]
    * @param[in]  headlines_only bool [optional]
    */
    void topNews(const QString &source_country, const QString &language, const ::OpenAPI::OptionalParam<QString> &date = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<bool> &headlines_only = ::OpenAPI::OptionalParam<bool>());


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

    void extractNewsCallback(OAIHttpRequestWorker *worker);
    void searchNewsCallback(OAIHttpRequestWorker *worker);
    void topNewsCallback(OAIHttpRequestWorker *worker);

Q_SIGNALS:

    void extractNewsSignal(OAIExtractNews_200_response summary);
    void searchNewsSignal(OAISearchNews_200_response summary);
    void topNewsSignal(OAITopNews_200_response summary);

    void extractNewsSignalFull(OAIHttpRequestWorker *worker, OAIExtractNews_200_response summary);
    void searchNewsSignalFull(OAIHttpRequestWorker *worker, OAISearchNews_200_response summary);
    void topNewsSignalFull(OAIHttpRequestWorker *worker, OAITopNews_200_response summary);

    Q_DECL_DEPRECATED_X("Use extractNewsSignalError() instead")
    void extractNewsSignalE(OAIExtractNews_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void extractNewsSignalError(OAIExtractNews_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchNewsSignalError() instead")
    void searchNewsSignalE(OAISearchNews_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchNewsSignalError(OAISearchNews_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use topNewsSignalError() instead")
    void topNewsSignalE(OAITopNews_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void topNewsSignalError(OAITopNews_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);

    Q_DECL_DEPRECATED_X("Use extractNewsSignalErrorFull() instead")
    void extractNewsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void extractNewsSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchNewsSignalErrorFull() instead")
    void searchNewsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchNewsSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use topNewsSignalErrorFull() instead")
    void topNewsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void topNewsSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);

    void abortRequestsSignal();
    void allPendingRequestsCompleted();

public Q_SLOTS:
    void tokenAvailable();
};

} // namespace OpenAPI
#endif
