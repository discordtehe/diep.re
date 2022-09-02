// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJUST_H
#define ADJUST_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol ADJLogger;
@protocol ADJActivityHandler;

@interface Adjust : NSObject

@property (weak, nonatomic) NSObject<ADJLogger> *logger; // ivar: _logger
@property (retain, nonatomic) NSObject<ADJActivityHandler> *activityHandler; // ivar: _activityHandler
@property (retain, nonatomic) NSMutableArray *sessionParametersActionsArray; // ivar: _sessionParametersActionsArray
@property (copy, nonatomic) NSData *deviceTokenData; // ivar: _deviceTokenData


-(id)init;
-(void)appDidLaunch:(id)arg0 ;
-(void)trackEvent:(id)arg0 ;
-(void)trackSubsessionStart;
-(void)trackSubsessionEnd;
-(void)setEnabled:(BOOL)arg0 ;
-(BOOL)isEnabled;
-(void)appWillOpenUrl:(id)arg0 ;
-(void)setDeviceToken:(id)arg0 ;
-(void)setOfflineMode:(BOOL)arg0 ;
-(id)idfa;
-(id)convertUniversalLink:(id)arg0 scheme:(id)arg1 ;
-(void)sendFirstPackages;
-(void)addSessionCallbackParameter:(id)arg0 value:(id)arg1 ;
-(void)addSessionPartnerParameter:(id)arg0 value:(id)arg1 ;
-(void)removeSessionCallbackParameter:(id)arg0 ;
-(void)removeSessionPartnerParameter:(id)arg0 ;
-(void)resetSessionCallbackParameters;
-(void)resetSessionPartnerParameters;
-(id)attribution;
-(id)adid;
-(void)teardown:(BOOL)arg0 ;
-(BOOL)checkActivityHandler;
+(void)appDidLaunch:(id)arg0 ;
+(void)trackEvent:(id)arg0 ;
+(void)trackSubsessionStart;
+(void)trackSubsessionEnd;
+(void)setEnabled:(BOOL)arg0 ;
+(BOOL)isEnabled;
+(void)appWillOpenUrl:(id)arg0 ;
+(void)setDeviceToken:(id)arg0 ;
+(void)setOfflineMode:(BOOL)arg0 ;
+(void)sendAdWordsRequest;
+(id)idfa;
+(id)convertUniversalLink:(id)arg0 scheme:(id)arg1 ;
+(void)sendFirstPackages;
+(void)addSessionCallbackParameter:(id)arg0 value:(id)arg1 ;
+(void)addSessionPartnerParameter:(id)arg0 value:(id)arg1 ;
+(void)removeSessionCallbackParameter:(id)arg0 ;
+(void)removeSessionPartnerParameter:(id)arg0 ;
+(void)resetSessionCallbackParameters;
+(void)resetSessionPartnerParameters;
+(id)attribution;
+(id)adid;
+(id)getInstance;


@end


#endif