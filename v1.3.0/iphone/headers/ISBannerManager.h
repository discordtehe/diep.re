// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISBANNERMANAGER_H
#define ISBANNERMANAGER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class ISBaseManager;
@class ISBannerView;
@class ISBannerSize;
@class ISBnSmash;
@protocol ISBnSmashDelegate;

@interface ISBannerManager : ISBaseManager <ISBnSmashDelegate>

 {
    NSString *_placement;
    ISBannerView *_bannerView;
    UIViewController *_bannerViewController;
    ISBannerSize *_bannerSize;
    NSInteger _hasBannerSize;
    NSInteger _state;
    NSInteger _reloadIntervalSecs;
    ISBnSmash *_activeSmash;
    NSTimer *_reloadTimer;
    NSMutableArray *_smashes;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithProvidersPool:(id)arg0 settings:(id)arg1 ;
-(void)loadBannerWithViewController:(id)arg0 size:(id)arg1 placementName:(id)arg2 ;
-(void)destroyBanner:(id)arg0 ;
-(struct CGSize )calculateContainerSize:(id)arg0 viewController:(id)arg1 ;
-(void)bannerDidLoad:(id)arg0 smash:(id)arg1 ;
-(void)bannerDidFailToLoadWithError:(id)arg0 smash:(id)arg1 ;
-(void)bannerReloadSucceeded:(id)arg0 ;
-(void)bannerReloadFailed:(id)arg0 smash:(id)arg1 ;
-(void)didClickBannerForSMASH:(id)arg0 ;
-(void)bannerWillPresentScreenForSMASH:(id)arg0 ;
-(void)bannerDidDismissScreenForSMASH:(id)arg0 ;
-(void)bannerWillLeaveApplicationForSMASH:(id)arg0 ;
-(BOOL)loadNextSmash;
-(void)resetIteration;
-(void)onIterationTimerTick:(id)arg0 ;
-(void)startReloadTimer;
-(void)stopReloadTimer;
-(void)onReloadTimerTick:(id)arg0 ;
-(void)setState:(NSInteger)arg0 ;
-(void)bannerWillMoveToSuperview;
-(BOOL)isViewVisible;
-(id)createBannerSizeDictionary:(id)arg0 ;
-(void)sendMediationEvent:(NSInteger)arg0 data:(id)arg1 ;
-(void)sendProviderEvent:(id)arg0 eventId:(NSInteger)arg1 data:(id)arg2 ;
-(void)setConsent:(BOOL)arg0 ;


@end


#endif