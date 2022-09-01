// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADJSCOREENVIRONMENT_H
#define GADJSCOREENVIRONMENT_H


#import <Foundation/Foundation.h>

@class GADJSCoreNavigator;
@class GADJSCoreInterface;
@class GADJSCoreConsole;
@class GADJSCoreTimers;
@class GADJSCorePinger;
@class GADJSCoreLocalStorage;
@protocol GADJSCoreEnvironmentProtocol;

@interface GADJSCoreEnvironment : NSObject <GADJSCoreEnvironmentProtocol>



@property (readonly, nonatomic) NSString *environment; // ivar: _environment
@property (readonly, nonatomic) NSString *platform; // ivar: _platform
@property (readonly, nonatomic) NSString *sdkVersion; // ivar: _sdkVersion
@property (readonly, nonatomic) GADJSCoreNavigator *navigator; // ivar: _navigator
@property (readonly, nonatomic) GADJSCoreInterface *googleAdsJsInterface; // ivar: _googleAdsJsInterface
@property (readonly, nonatomic) GADJSCoreConsole *console; // ivar: _console
@property (readonly, nonatomic) GADJSCoreTimers *timers; // ivar: _timers
@property (readonly, nonatomic) GADJSCorePinger *pinger; // ivar: _pinger
@property (readonly, nonatomic) GADJSCoreLocalStorage *localStorage; // ivar: _localStorage


-(id)initWithJSCoreJSContext:(id)arg0 eventContext:(id)arg1 ;
-(id)init;


@end


#endif