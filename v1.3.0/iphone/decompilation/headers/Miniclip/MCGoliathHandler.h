// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCGOLIATHHANDLER_H
#define MCGOLIATHHANDLER_H


#import <Foundation/Foundation.h>


@interface MCGoliathHandler : NSObject {
    *MCGoliathWrapper _wrapper;
    LoginInfo _info;
    NSInteger _sessionInit;
    BOOL _appStarted;
    BOOL _canSendClientInit;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > _sessionId;
}




-(id)init;
-(void)start;
-(void)clientInit;
-(void)setCountryAndCallClientInit:(id)arg0 ;
-(void)interstitialStep:(int)arg0 provider:(id)arg1 ;
-(void)session;
-(void)gamePlayed:(id)arg0 ;
-(void)setGlobalParameters;
-(void)postEvent:(id)arg0 content:(id)arg1 ;
-(void)postConfigurationUpdate:(id)arg0 withOldVersion:(id)arg1 ;
-(id)getStepNameForType:(int)arg0 ;
+(id)sharedMCGoliathHandler;
+(BOOL)isMCGoliathHandlerInitialized;
+(void)releaseSharedMCGoliathHandler;


@end


#endif