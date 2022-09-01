// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ADJActivityHandler

@property (copy, nonatomic) ADJAttribution *attribution;

-(id)adid;
-(id)initWithConfig:(id)arg0 sessionParametersActionsArray:(id)arg1 deviceToken:(id)arg2 ;
-(void)applicationDidBecomeActive;
-(void)applicationWillResignActive;
-(void)trackEvent:(id)arg0 ;
-(void)finishedTracking:(id)arg0 ;
-(void)launchEventResponseTasks:(id)arg0 ;
-(void)launchSessionResponseTasks:(id)arg0 ;
-(void)launchSdkClickResponseTasks:(id)arg0 ;
-(void)launchAttributionResponseTasks:(id)arg0 ;
-(void)setEnabled:(BOOL)arg0 ;
-(BOOL)isEnabled;
-(void)appWillOpenUrl:(id)arg0 ;
-(void)setDeviceToken:(id)arg0 ;
-(void)setAskingAttribution:(BOOL)arg0 ;
-(BOOL)updateAttributionI:(id)arg0 attribution:(id)arg1 ;
-(void)setIadDate:(id)arg0 withPurchaseDate:(id)arg1 ;
-(void)setAttributionDetails:(id)arg0 error:(id)arg1 retriesLeft:(int)arg2 ;
-(void)setOfflineMode:(BOOL)arg0 ;
-(id)internalState;
-(void)sendFirstPackages;
-(void)addSessionCallbackParameter:(id)arg0 value:(id)arg1 ;
-(void)addSessionPartnerParameter:(id)arg0 value:(id)arg1 ;
-(void)removeSessionCallbackParameter:(id)arg0 ;
-(void)removeSessionPartnerParameter:(id)arg0 ;
-(void)resetSessionCallbackParameters;
-(void)resetSessionPartnerParameters;
-(void)teardown:(BOOL)arg0 ;
-(id)attribution;
-(void)setAttribution:(id)arg0 ;

@end

