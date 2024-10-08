/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#ifndef OAI_OAIHumorApi_H
#define OAI_OAIHumorApi_H

#include "OAIHelpers.h"
#include "OAIHttpRequest.h"
#include "OAIServerConfiguration.h"
#include "OAIOauth.h"

#include "OAIGenerateNonsenseWord_200_response.h"
#include "OAIRandomMeme_200_response.h"
#include "OAISearchGifs_200_response.h"
#include "OAISearchJokes_200_response.h"
#include "OAISearchJokes_200_response_jokes_inner.h"
#include "OAISearchMemes_200_response.h"
#include <QString>

#include <QObject>
#include <QByteArray>
#include <QStringList>
#include <QList>
#include <QNetworkAccessManager>

namespace OpenAPI {

class OAIHumorApi : public QObject {
    Q_OBJECT

public:
    OAIHumorApi(const int timeOut = 0);
    ~OAIHumorApi();

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


    void generateNonsenseWord();

    /**
    * @param[in]  include_tags QString [optional]
    * @param[in]  exclude_tags QString [optional]
    * @param[in]  min_rating double [optional]
    * @param[in]  max_length qint32 [optional]
    */
    void randomJoke(const ::OpenAPI::OptionalParam<QString> &include_tags = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &exclude_tags = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<double> &min_rating = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<qint32> &max_length = ::OpenAPI::OptionalParam<qint32>());

    /**
    * @param[in]  keywords QString [optional]
    * @param[in]  keywords_in_image bool [optional]
    * @param[in]  media_type QString [optional]
    * @param[in]  min_rating double [optional]
    * @param[in]  max_age_days qint32 [optional]
    */
    void randomMeme(const ::OpenAPI::OptionalParam<QString> &keywords = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<bool> &keywords_in_image = ::OpenAPI::OptionalParam<bool>(), const ::OpenAPI::OptionalParam<QString> &media_type = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<double> &min_rating = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<qint32> &max_age_days = ::OpenAPI::OptionalParam<qint32>());

    /**
    * @param[in]  query QString [required]
    * @param[in]  number qint32 [optional]
    */
    void searchGifs(const QString &query, const ::OpenAPI::OptionalParam<qint32> &number = ::OpenAPI::OptionalParam<qint32>());

    /**
    * @param[in]  keywords QString [optional]
    * @param[in]  include_tags QString [optional]
    * @param[in]  exclude_tags QString [optional]
    * @param[in]  min_rating double [optional]
    * @param[in]  max_length double [optional]
    * @param[in]  offset qint32 [optional]
    * @param[in]  number qint32 [optional]
    */
    void searchJokes(const ::OpenAPI::OptionalParam<QString> &keywords = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &include_tags = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &exclude_tags = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<double> &min_rating = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<double> &max_length = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<qint32> &offset = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<qint32> &number = ::OpenAPI::OptionalParam<qint32>());

    /**
    * @param[in]  keywords QString [optional]
    * @param[in]  keywords_in_image bool [optional]
    * @param[in]  media_type QString [optional]
    * @param[in]  min_rating double [optional]
    * @param[in]  max_age_days qint32 [optional]
    * @param[in]  offset qint32 [optional]
    * @param[in]  number qint32 [optional]
    */
    void searchMemes(const ::OpenAPI::OptionalParam<QString> &keywords = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<bool> &keywords_in_image = ::OpenAPI::OptionalParam<bool>(), const ::OpenAPI::OptionalParam<QString> &media_type = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<double> &min_rating = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<qint32> &max_age_days = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<qint32> &offset = ::OpenAPI::OptionalParam<qint32>(), const ::OpenAPI::OptionalParam<qint32> &number = ::OpenAPI::OptionalParam<qint32>());


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

    void generateNonsenseWordCallback(OAIHttpRequestWorker *worker);
    void randomJokeCallback(OAIHttpRequestWorker *worker);
    void randomMemeCallback(OAIHttpRequestWorker *worker);
    void searchGifsCallback(OAIHttpRequestWorker *worker);
    void searchJokesCallback(OAIHttpRequestWorker *worker);
    void searchMemesCallback(OAIHttpRequestWorker *worker);

Q_SIGNALS:

    void generateNonsenseWordSignal(OAIGenerateNonsenseWord_200_response summary);
    void randomJokeSignal(OAISearchJokes_200_response_jokes_inner summary);
    void randomMemeSignal(OAIRandomMeme_200_response summary);
    void searchGifsSignal(OAISearchGifs_200_response summary);
    void searchJokesSignal(OAISearchJokes_200_response summary);
    void searchMemesSignal(OAISearchMemes_200_response summary);

    void generateNonsenseWordSignalFull(OAIHttpRequestWorker *worker, OAIGenerateNonsenseWord_200_response summary);
    void randomJokeSignalFull(OAIHttpRequestWorker *worker, OAISearchJokes_200_response_jokes_inner summary);
    void randomMemeSignalFull(OAIHttpRequestWorker *worker, OAIRandomMeme_200_response summary);
    void searchGifsSignalFull(OAIHttpRequestWorker *worker, OAISearchGifs_200_response summary);
    void searchJokesSignalFull(OAIHttpRequestWorker *worker, OAISearchJokes_200_response summary);
    void searchMemesSignalFull(OAIHttpRequestWorker *worker, OAISearchMemes_200_response summary);

    Q_DECL_DEPRECATED_X("Use generateNonsenseWordSignalError() instead")
    void generateNonsenseWordSignalE(OAIGenerateNonsenseWord_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void generateNonsenseWordSignalError(OAIGenerateNonsenseWord_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use randomJokeSignalError() instead")
    void randomJokeSignalE(OAISearchJokes_200_response_jokes_inner summary, QNetworkReply::NetworkError error_type, QString error_str);
    void randomJokeSignalError(OAISearchJokes_200_response_jokes_inner summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use randomMemeSignalError() instead")
    void randomMemeSignalE(OAIRandomMeme_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void randomMemeSignalError(OAIRandomMeme_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchGifsSignalError() instead")
    void searchGifsSignalE(OAISearchGifs_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchGifsSignalError(OAISearchGifs_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchJokesSignalError() instead")
    void searchJokesSignalE(OAISearchJokes_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchJokesSignalError(OAISearchJokes_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchMemesSignalError() instead")
    void searchMemesSignalE(OAISearchMemes_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchMemesSignalError(OAISearchMemes_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);

    Q_DECL_DEPRECATED_X("Use generateNonsenseWordSignalErrorFull() instead")
    void generateNonsenseWordSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void generateNonsenseWordSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use randomJokeSignalErrorFull() instead")
    void randomJokeSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void randomJokeSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use randomMemeSignalErrorFull() instead")
    void randomMemeSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void randomMemeSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchGifsSignalErrorFull() instead")
    void searchGifsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchGifsSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchJokesSignalErrorFull() instead")
    void searchJokesSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchJokesSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use searchMemesSignalErrorFull() instead")
    void searchMemesSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchMemesSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);

    void abortRequestsSignal();
    void allPendingRequestsCompleted();

public Q_SLOTS:
    void tokenAvailable();
};

} // namespace OpenAPI
#endif
