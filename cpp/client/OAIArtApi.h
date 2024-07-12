/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#ifndef OAI_OAIArtApi_H
#define OAI_OAIArtApi_H

#include "OAIHelpers.h"
#include "OAIHttpRequest.h"
#include "OAIServerConfiguration.h"
#include "OAIOauth.h"

#include "OAIRandomPoem_200_response.h"
#include <QString>

#include <QObject>
#include <QByteArray>
#include <QStringList>
#include <QList>
#include <QNetworkAccessManager>

namespace OpenAPI {

class OAIArtApi : public QObject {
    Q_OBJECT

public:
    OAIArtApi(const int timeOut = 0);
    ~OAIArtApi();

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
    * @param[in]  width qint32 [optional]
    * @param[in]  height qint32 [optional]
    */
    void imageToAsciiArtByURL(const QString &url, const ::OpenAPI::OptionalParam<qint32> &width = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<qint32> &height = ::OpenAPI::OptionalParam<qint32>());

    /**
    * @param[in]  min_lines qint32 [optional]
    * @param[in]  max_lines qint32 [optional]
    */
    void randomPoem(const ::OpenAPI::OptionalParam<qint32> &min_lines = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<qint32> &max_lines = ::OpenAPI::OptionalParam<qint32>());


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

    void imageToAsciiArtByURLCallback(OAIHttpRequestWorker *worker);
    void randomPoemCallback(OAIHttpRequestWorker *worker);

Q_SIGNALS:

    void imageToAsciiArtByURLSignal(QString summary);
    void randomPoemSignal(OAIRandomPoem_200_response summary);

    void imageToAsciiArtByURLSignalFull(OAIHttpRequestWorker *worker, QString summary);
    void randomPoemSignalFull(OAIHttpRequestWorker *worker, OAIRandomPoem_200_response summary);

    Q_DECL_DEPRECATED_X("Use imageToAsciiArtByURLSignalError() instead")
    void imageToAsciiArtByURLSignalE(QString summary, QNetworkReply::NetworkError error_type, QString error_str);
    void imageToAsciiArtByURLSignalError(QString summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use randomPoemSignalError() instead")
    void randomPoemSignalE(OAIRandomPoem_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void randomPoemSignalError(OAIRandomPoem_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);

    Q_DECL_DEPRECATED_X("Use imageToAsciiArtByURLSignalErrorFull() instead")
    void imageToAsciiArtByURLSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void imageToAsciiArtByURLSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use randomPoemSignalErrorFull() instead")
    void randomPoemSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void randomPoemSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);

    void abortRequestsSignal();
    void allPendingRequestsCompleted();

public Q_SLOTS:
    void tokenAvailable();
};

} // namespace OpenAPI
#endif
