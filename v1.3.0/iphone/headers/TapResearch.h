// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TAPRESEARCH_H
#define TAPRESEARCH_H


#import <Foundation/Foundation.h>

@class TRAlertHandler;
@protocol UIAlertViewDelegate;
@protocol TapResearchRewardDelegate;

@interface TapResearch : NSObject <UIAlertViewDelegate>



@property (retain, nonatomic) TRAlertHandler *alertHandler; // ivar: _alertHandler
@property (nonatomic) NSObject<TapResearchRewardDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)handleRewards:(id)arg0 ;
+(id)sharedManager;
+(void)initWithApiToken:(id)arg0 delegate:(id)arg1 ;
+(void)initWithApiToken:(id)arg0 developmentPlatform:(id)arg1 developmentPlatformVersion:(id)arg2 delegate:(id)arg3 ;
+(void)initPlacementWithIdentifier:(id)arg0 placementBlock:(id)arg1 ;
+(void)setUniqueUserIdentifier:(id)arg0 ;
+(void)setNavigationBarColor:(id)arg0 ;
+(void)setNavigationBarText:(id)arg0 ;
+(void)setNavigationBarTextColor:(id)arg0 ;


@end


#endif