// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol GADJSCoreEnvironmentProtocol

@property (readonly, nonatomic) NSString *environment;
@property (readonly, nonatomic) NSString *platform;
@property (readonly, nonatomic) NSString *sdkVersion;
@property (readonly, nonatomic) GADJSCoreNavigator *navigator;
@property (readonly, nonatomic) GADJSCoreInterface *googleAdsJsInterface;
@property (readonly, nonatomic) GADJSCoreConsole *console;
@property (readonly, nonatomic) GADJSCoreTimers *timers;
@property (readonly, nonatomic) GADJSCorePinger *pinger;
@property (readonly, nonatomic) GADJSCoreLocalStorage *localStorage;

-(id)environment;
-(id)platform;
-(id)sdkVersion;
-(id)navigator;
-(id)googleAdsJsInterface;
-(id)console;
-(id)timers;
-(id)pinger;
-(id)localStorage;

@end

