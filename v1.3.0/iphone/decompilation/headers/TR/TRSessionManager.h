// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRSESSIONMANAGER_H
#define TRSESSIONMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class TRAppSession;
@class TRPlayer;
@class TRCacheManager;
@class TROfferRequest;
@protocol FlushEventsDelegate;
@protocol TapResearchRewardDelegate;

@interface TRSessionManager : NSObject <FlushEventsDelegate>



@property (retain, nonatomic) NSDate *lastDate; // ivar: _lastDate
@property (retain, nonatomic) TRAppSession *appSession; // ivar: _appSession
@property (retain, nonatomic) TRPlayer *player; // ivar: _player
@property (retain, nonatomic) TRCacheManager *cacheManager; // ivar: _cacheManager
@property (weak, nonatomic) NSObject<TapResearchRewardDelegate> *delegate; // ivar: _delegate
@property (nonatomic) BOOL configured; // ivar: _configured
@property (copy, nonatomic) NSString *apiToken; // ivar: _apiToken
@property (retain, nonatomic) UIColor *navigationBarColor; // ivar: _navigationBarColor
@property (copy, nonatomic) NSString *navigationBarText; // ivar: _navigationBarText
@property (retain, nonatomic) UIColor *navigationBarTextColor; // ivar: _navigationBarTextColor
@property (copy, nonatomic) NSString *developmentPlatform; // ivar: _developmentPlatform
@property (copy, nonatomic) NSString *developmentPlatformVersion; // ivar: _developmentPlatformVersion
@property (retain, nonatomic) NSMutableDictionary *cachedOffers; // ivar: _cachedOffers
@property (nonatomic) BOOL isServerToServer; // ivar: _isServerToServer
@property (retain) TROfferRequest *cachedOfferRequest; // ivar: _cachedOfferRequest
@property (copy, nonatomic) NSString *loadedOfferIdentifier; // ivar: _loadedOfferIdentifier
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)startupWithDelegate:(id)arg0 ;
-(void)applicationWillBecomeActive;
-(void)uncaughtExceptionHandler:(id)arg0 ;
-(void)checkVersion;
-(void)applicationWillBecomeInactive;
-(void)playerLogin:(BOOL)arg0 ;
-(void)getRewards;
-(void)setUserIdentifier:(id)arg0 ;
-(id)userIdentifier;
-(void)sendCachedOfferRequest;
-(void)eventsRequireFlush:(id)arg0 ;
-(void)cacheCrashEvent:(id)arg0 ;
+(id)sharedManager;


@end


#endif