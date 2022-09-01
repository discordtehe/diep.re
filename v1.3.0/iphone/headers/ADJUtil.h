// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJUTIL_H
#define ADJUTIL_H


#import <Foundation/Foundation.h>


@interface ADJUtil : NSObject



+(void)initialize;
+(void)initializeDateFormat;
+(void)initializeUniversalLinkRegex;
+(void)initializeShortUniversalLinkRegex;
+(void)initializeOptionalRedirectRegex;
+(void)initializeSecondsNumberFormatter;
+(void)initializeUrlSessionConfiguration;
+(void)updateUrlSessionConfiguration:(id)arg0 ;
+(id)baseUrl;
+(id)clientSdk;
+(void)excludeFromBackup:(id)arg0 ;
+(id)formatSeconds1970:(CGFloat)arg0 ;
+(id)formatDate:(id)arg0 ;
+(void)saveJsonResponse:(id)arg0 responseData:(id)arg1 ;
+(id)buildJsonDict:(id)arg0 exceptionPtr:(*id)arg1 errorPtr:(*id)arg2 ;
+(id)getFullFilename:(id)arg0 ;
+(id)readObject:(id)arg0 objectName:(id)arg1 class:(Class)arg2 ;
+(void)writeObject:(id)arg0 filename:(id)arg1 objectName:(id)arg2 ;
+(id)queryString:(id)arg0 ;
+(id)queryString:(id)arg0 queueSize:(NSUInteger)arg1 ;
+(BOOL)isNull:(id)arg0 ;
+(BOOL)isNotNull:(id)arg0 ;
+(id)formatErrorMessage:(id)arg0 systemErrorMessage:(id)arg1 suffixErrorMessage:(id)arg2 ;
+(void)sendPostRequest:(id)arg0 queueSize:(NSUInteger)arg1 prefixErrorMessage:(id)arg2 suffixErrorMessage:(id)arg3 activityPackage:(id)arg4 responseDataHandler:(id)arg5 ;
+(id)requestForPackage:(id)arg0 baseUrl:(id)arg1 queueSize:(NSUInteger)arg2 ;
+(void)sendRequest:(id)arg0 prefixErrorMessage:(id)arg1 activityPackage:(id)arg2 responseDataHandler:(id)arg3 ;
+(void)sendRequest:(id)arg0 prefixErrorMessage:(id)arg1 suffixErrorMessage:(id)arg2 activityPackage:(id)arg3 responseDataHandler:(id)arg4 ;
+(void)sendNSURLSessionRequest:(id)arg0 prefixErrorMessage:(id)arg1 suffixErrorMessage:(id)arg2 activityPackage:(id)arg3 responseDataHandler:(id)arg4 ;
+(void)sendNSURLConnectionRequest:(id)arg0 prefixErrorMessage:(id)arg1 suffixErrorMessage:(id)arg2 activityPackage:(id)arg3 responseDataHandler:(id)arg4 ;
+(id)completionHandler:(id)arg0 response:(id)arg1 error:(id)arg2 prefixErrorMessage:(id)arg3 suffixErrorMessage:(id)arg4 activityPackage:(id)arg5 ;
+(id)convertDictionaryValues:(id)arg0 ;
+(id)idfa;
+(id)getUpdateTime;
+(id)getInstallTime;
+(id)convertUniversalLink:(id)arg0 scheme:(id)arg1 ;
+(id)removeOptionalRedirect:(id)arg0 ;
+(id)secondsNumberFormat:(CGFloat)arg0 ;
+(CGFloat)randomInRange:(CGFloat)arg0 maxRange:(CGFloat)arg1 ;
+(CGFloat)waitingTime:(NSInteger)arg0 backoffStrategy:(id)arg1 ;
+(void)launchInMainThread:(id)arg0 selector:(SEL)arg1 withObject:(id)arg2 ;
+(void)launchInMainThread:(id)arg0 ;
+(BOOL)isValidParameter:(id)arg0 attributeType:(id)arg1 parameterName:(id)arg2 ;
+(id)mergeParameters:(id)arg0 source:(id)arg1 parameterName:(id)arg2 ;
+(void)launchInQueue:(id)arg0 selfInject:(id)arg1 block:(id)arg2 ;
+(id)getFilename:(id)arg0 ;
+(BOOL)deleteFile:(id)arg0 ;
+(void)launchDeepLinkMain:(id)arg0 ;
+(id)convertDeviceToken:(id)arg0 ;
+(BOOL)checkAttributionDetails:(id)arg0 ;
+(BOOL)contains:(id)arg0 key:(id)arg1 value:(id)arg2 ;


@end


#endif