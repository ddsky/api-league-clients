/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#ifndef OAI_OAIBooksApi_H
#define OAI_OAIBooksApi_H

#include "OAIHelpers.h"
#include "OAIHttpRequest.h"
#include "OAIServerConfiguration.h"
#include "OAIOauth.h"

#include "OAIFindSimilarBooks_200_response.h"
#include "OAISearchBooks_200_response.h"
#include <QString>

#include <QObject>
#include <QByteArray>
#include <QStringList>
#include <QList>
#include <QNetworkAccessManager>

namespace OpenAPI {

class OAIBooksApi : public QObject {
    Q_OBJECT

public:
    OAIBooksApi(const int timeOut = 0);
    ~OAIBooksApi();

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
    * @param[in]  id qint32 [required]
    * @param[in]  number qint32 [optional]
    */
    void findSimilarBooks(const qint32 &id, const ::OpenAPI::OptionalParam<qint32> &number = ::OpenAPI::OptionalParam<qint32>());

    /**
    * @param[in]  query QString [optional]
    * @param[in]  earliest_publish_year qint32 [optional]
    * @param[in]  latest_publish_year qint32 [optional]
    * @param[in]  min_rating double [optional]
    * @param[in]  max_rating double [optional]
    * @param[in]  genres QString [optional]
    * @param[in]  authors QString [optional]
    * @param[in]  isbn QString [optional]
    * @param[in]  oclc QString [optional]
    * @param[in]  sort QString [optional]
    * @param[in]  sort_direction QString [optional]
    * @param[in]  group_results bool [optional]
    * @param[in]  offset qint32 [optional]
    * @param[in]  number qint32 [optional]
    */
    void searchBooks(const ::OpenAPI::OptionalParam<QString> &query = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<qint32> &earliest_publish_year = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<qint32> &latest_publish_year = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<double> &min_rating = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<double> &max_rating = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<QString> &genres = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &authors = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &isbn = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &oclc = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &sort = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &sort_direction = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<bool> &group_results = ::OpenAPI::OptionalParam<bool>(), const ::OpenAPI::OptionalParam<qint32> &offset = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<qint32> &number = ::OpenAPI::OptionalParam<qint32>());


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

    void findSimilarBooksCallback(OAIHttpRequestWorker *worker);
    void searchBooksCallback(OAIHttpRequestWorker *worker);

Q_SIGNALS:

    void findSimilarBooksSignal(OAIFindSimilarBooks_200_response summary);
    void searchBooksSignal(OAISearchBooks_200_response summary);

    void findSimilarBooksSignalFull(OAIHttpRequestWorker *worker, OAIFindSimilarBooks_200_response summary);
    void searchBooksSignalFull(OAIHttpRequestWorker *worker, OAISearchBooks_200_response summary);

    Q_DECL_DEPRECATED_X("Use findSimilarBooksSignalError() instead")
    void findSimilarBooksSignalE(OAIFindSimilarBooks_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void findSimilarBooksSignalError(OAIFindSimilarBooks_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchBooksSignalError() instead")
    void searchBooksSignalE(OAISearchBooks_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchBooksSignalError(OAISearchBooks_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);

    Q_DECL_DEPRECATED_X("Use findSimilarBooksSignalErrorFull() instead")
    void findSimilarBooksSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void findSimilarBooksSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchBooksSignalErrorFull() instead")
    void searchBooksSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchBooksSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);

    void abortRequestsSignal();
    void allPendingRequestsCompleted();

public Q_SLOTS:
    void tokenAvailable();
};

} // namespace OpenAPI
#endif
