// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBSDKBASICUTILITY_H
#define FBSDKBASICUTILITY_H


#import <Foundation/Foundation.h>


@interface FBSDKBasicUtility : NSObject



+(id)JSONStringForObject:(id)arg0 error:(*id)arg1 invalidObjectHandler:(id)arg2 ;
+(BOOL)dictionary:(id)arg0 setJSONStringForObject:(id)arg1 forKey:(id)arg2 error:(*id)arg3 ;
// +(id)_convertObjectToJSONObject:(id)arg0 invalidObjectHandler:(id)arg1 stop:(unk)arg2  ;
+(void)dictionary:(id)arg0 setObject:(id)arg1 forKey:(id)arg2 ;
+(void)array:(id)arg0 addObject:(id)arg1 ;
+(id)objectForJSONString:(id)arg0 error:(*id)arg1 ;
+(id)queryStringWithDictionary:(id)arg0 error:(*id)arg1 invalidObjectHandler:(id)arg2 ;
+(id)convertRequestValue:(id)arg0 ;
+(id)URLEncode:(id)arg0 ;
+(id)dictionaryWithQueryString:(id)arg0 ;
+(id)URLDecode:(id)arg0 ;
+(id)gzip:(id)arg0 ;
+(id)anonymousID;
+(id)retrievePersistedAnonymousID;
+(id)persistenceFilePath:(id)arg0 ;
+(void)persistAnonymousID:(id)arg0 ;


@end


#endif