// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVSDKPROPERTIES_H
#define USRVSDKPROPERTIES_H


#import <Foundation/Foundation.h>


@interface USRVSdkProperties : NSObject



+(BOOL)isInitialized;
+(BOOL)isDebug;
+(void)setInitialized:(BOOL)arg0 ;
+(BOOL)isTestMode;
+(void)setTestMode:(BOOL)arg0 ;
+(int)getVersionCode;
+(id)getVersionName;
+(id)getCacheDirectoryName;
+(id)getCacheFilePrefix;
+(id)getLocalStorageFilePrefix;
+(void)setConfigUrl:(id)arg0 ;
+(id)getConfigUrl;
+(id)getDefaultConfigUrl:(id)arg0 ;
+(id)getLocalWebViewFile;
+(id)getCacheDirectory;
+(void)setInitializationTime:(NSInteger)arg0 ;
+(NSInteger)getInitializationTime;
+(void)setReinitialized:(BOOL)arg0 ;
+(BOOL)isReinitialized;
+(void)setDebugMode:(BOOL)arg0 ;
+(BOOL)getDebugMode;
+(id)getDelegate;
+(void)setDelegate:(id)arg0 ;


@end


#endif