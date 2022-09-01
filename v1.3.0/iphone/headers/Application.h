// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APPLICATION_H
#define APPLICATION_H


#import <CoreFoundation/CoreFoundation.h>

@class CCLayer;
@class StateMachine;
@class UserData;
@class MCLocalizationManager;
@class MCUserAcquisitionManager;
@class GDPRManager;
@class MCAnimSequencer;
@class CCNode;

@interface Application : CCLayer {
    int _totalSessions;
    StateMachine *_stateMachine;
    unique_ptr<ServerConnection, std::__1::default_delete<ServerConnection> > _connection;
    UserData *_currentUserData;
    *ConfigurationModel _configuration;
    MCLocalizationManager *_localizationManager;
    MCUserAcquisitionManager *_userAcquisitionManager;
    GDPRManager *_gdprManager;
    BOOL mStarted;
    NSMutableSet *mRegisteredInputDelegates;
    unique_ptr<AdsManager, std::__1::default_delete<AdsManager> > _adsManager;
    unique_ptr<MCLibraHandler, std::__1::default_delete<MCLibraHandler> > _mcLibraHandler;
    unique_ptr<AlarmManager, std::__1::default_delete<AlarmManager> > _alarmManager;
    MCAnimSequencer *_animSequencer;
    unique_ptr<EnvironmentSelector, std::__1::default_delete<EnvironmentSelector> > _environmentSelector;
    unique_ptr<mc::NetworkCourier<std::__1::type_index>, std::__1::default_delete<mc::NetworkCourier<std::__1::type_index> > > _tcpInterface;
}


@property (readonly, nonatomic) CCNode *rootNode; // ivar: mRootNode


-(id)init;
-(void)dealloc;
-(void)update:(CGFloat)arg0 ;
-(void)start;
-(void)delayedStartCallback;
-(void)initializeCriticalServices;
-(void)initializeOtherServices;
-(void)checkWSDataLoop;
-(void)uncheckWSDataLoop;
-(void)postInit;
-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > )getAppVersion;
-(int)parseSemVerStringToInt:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > *)arg0 ;
-(id)checksumsForDevice;
-(void)configurationLoaded;
-(void)fileDownloadComplete:(id)arg0 ;
-(void)setupNetworkEnvironment;
-(void)showExitConfirmation;
-(void)alertView:(id)arg0 clickedButtonAtIndex:(NSInteger)arg1 ;
-(void)alertView:(id)arg0 didDismissWithButtonIndex:(NSInteger)arg1 ;
-(void)registerInputDelegate:(id)arg0 ;
-(void)removeInputDelegate:(id)arg0 ;
-(BOOL)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchCancelled:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchesBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchesMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchesEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchesCancelled:(id)arg0 withEvent:(id)arg1 ;
-(id)stateMachine;
-(id)userData;
-(struct ConfigurationModel *)configuration;
-(struct AdsManager *)adsManager;
-(struct MCLibraHandler *)mcLibraHandler;
-(struct AlarmManager *)alarmManager;
-(id)gdprManager;
-(id)localizationManager;
-(id)animSequencer;
-(struct EnvironmentSelector *)environmentSelector;
-(id)userAcquisitionManager;
-(struct ServerConnection *)serverConnection;
-(struct NetworkCourier<std::__1::type_index> *)tcpInterface;
-(void)scheduleLocalNotifications;
-(void)scheduleNotificationWithType:(id)arg0 ;
-(void)scheduleNotificationWithType:(id)arg0 andWithTimeIntervalInSeconds:(float)arg1 ;
-(NSUInteger)getRepeatIntervalFromString:(id)arg0 ;
+(id)sharedApplication;
+(BOOL)isApplicationInitialized;
+(void)releaseSharedApplication;


@end


#endif