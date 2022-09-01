// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADSETTINGS_H
#define FBADSETTINGS_H


#import <Foundation/Foundation.h>


@interface FBAdSettings : NSObject



+(void)initialize;
+(id)testDeviceHash;
+(id)testDevices;
+(void)persistTestDevices;
+(void)addTestDevice:(id)arg0 ;
+(void)addTestDevices:(id)arg0 ;
+(void)clearTestDevices;
+(void)clearTestDevice:(id)arg0 ;
+(void)setIsChildDirected:(BOOL)arg0 ;
+(BOOL)isTestMode;
+(BOOL)isChildDirected;
+(BOOL)isBackgroundVideoPlaybackAllowed;
+(void)setBackgroundVideoPlaybackAllowed:(BOOL)arg0 ;
+(void)setMediationService:(id)arg0 ;
+(id)getMediationService;
+(id)urlPrefix;
+(void)setUrlPrefix:(id)arg0 ;
+(id)deliveryEndpointURL;
+(id)webviewBaseURL;
+(id)baseURLWithDefault:(id)arg0 withFormat:(id)arg1 ;
+(id)baseEventURL;
+(id)baseBiddingURL;
+(id)baseURL;
+(id)synchronizationEndpointURL;
+(NSInteger)getLogLevel;
+(void)setLogLevel:(NSInteger)arg0 ;
+(id)sessionID;
+(void)resetSessionID;
+(NSInteger)mediaViewRenderingMethod;
+(void)setMediaViewRenderingMethod:(NSInteger)arg0 ;
+(NSInteger)testAdType;
+(void)setTestAdType:(NSInteger)arg0 ;
+(id)loggingDelegate;
+(void)setLoggingDelegate:(id)arg0 ;
+(id)bidderToken;
+(id)routingToken;
+(BOOL)assertionsEnabled;


@end


#endif