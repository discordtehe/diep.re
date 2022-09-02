// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADAPPLICATION_H
#define GADAPPLICATION_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADEventContext;
@protocol GADEventContextSource;

@interface GADApplication : NSObject <GADEventContextSource>

 {
    BOOL _appDidFinishLaunching;
    atomic_flag _hasRunEarlyActivities;
    atomic_flag _hasRunMainThreadEarlyActivities;
    atomic_flag _hasRunAdditionalEarlyActivities;
    uint8_t _hasCalledAdditionalEarlyActivities;
    GADObserverCollection *_observers;
}


@property (readonly, copy, nonatomic) NSString *version; // ivar: _version
@property (readonly, copy, nonatomic) NSString *buildNumber; // ivar: _buildNumber
@property (readonly, copy, nonatomic) NSString *mainBundleIdentifier; // ivar: _mainBundleIdentifier
@property (nonatomic) BOOL debugModeEnabled; // ivar: _debugModeEnabled
@property (copy, nonatomic) NSString *inAppPreviewCreativeToken; // ivar: _inAppPreviewCreativeToken
@property (readonly, nonatomic) CGFloat backgroundTimeIntervalSinceBoot; // ivar: _backgroundTimeIntervalSinceBoot
@property (readonly, copy, nonatomic) NSString *sessionIdentifier; // ivar: _sessionIdentifier
@property (readonly, nonatomic) BOOL active;
@property (readonly, nonatomic) BOOL additionalEarlyActivitiesCalled;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;


-(id)init;
-(void)updateBackgroundTimeIntervalSinceBoot;
-(void)appDidFinishLaunching;
-(void)updateApplicationContext;
-(void)runBackgroundEarlyActivitiesWithCompletionHandler:(id)arg0 ;
-(void)runEarlyActivities;
-(void)runMainThreadEarlyActivities;
-(void)runAdditionalEarlyActivities;
-(void)link;
+(void)load;
+(id)sharedInstance;


@end


#endif