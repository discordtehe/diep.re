// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJPLACEMENT_H
#define TJPLACEMENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class TJCUIWebPageView;
@class FRPlacementContent;
@class TJBackoff;
@class TJPlacementContentTracker;
@class TJAdContentTracker;
@protocol TJCPlacementViewDelegate;
@protocol FiveRocksDelegate;
@protocol TJCVideoAdDelegate;
@protocol TJPlacementDelegate;
@protocol TJPlacementVideoDelegate;

@interface TJPlacement : NSObject <TJCPlacementViewDelegate, FiveRocksDelegate, TJCVideoAdDelegate>



@property (retain, nonatomic) TJCUIWebPageView *adView; // ivar: _adView
@property (retain, nonatomic) NSString *contentHTML; // ivar: _contentHTML
@property (retain, nonatomic) NSURL *contentURL; // ivar: _contentURL
@property (retain, nonatomic) NSString *redirectURL; // ivar: _redirectURL
@property (nonatomic) BOOL isRequesting; // ivar: _isRequesting
@property (nonatomic) BOOL didIncrementCache; // ivar: _didIncrementCache
@property (nonatomic) BOOL redirected; // ivar: _redirected
@property (retain, nonatomic) FRPlacementContent *fiveRocksContent; // ivar: _fiveRocksContent
@property (weak, nonatomic) UIViewController *viewControllerBeforeRedirect; // ivar: _viewControllerBeforeRedirect
@property (nonatomic) BOOL didFireReady; // ivar: _didFireReady
@property (nonatomic) BOOL prerenderingRequested; // ivar: _prerenderingRequested
@property (retain, nonatomic) NSString *pushId; // ivar: _pushId
@property (nonatomic) BOOL systemFlag; // ivar: _systemFlag
@property (retain, nonatomic) NSString *requestFor; // ivar: _requestFor
@property (copy, nonatomic) NSString *mediationSource; // ivar: _mediationSource
@property (nonatomic) BOOL disablePreload; // ivar: _disablePreload
@property (nonatomic) BOOL retryQueued; // ivar: _retryQueued
@property (retain, nonatomic) TJBackoff *retryBackoff; // ivar: _retryBackoff
@property (retain, nonatomic) NSDate *retryDeadline; // ivar: _retryDeadline
@property (nonatomic) int retryTimeout; // ivar: _retryTimeout
@property (nonatomic) int retryCount; // ivar: _retryCount
@property (retain, nonatomic) TJPlacementContentTracker *placementContentTracker; // ivar: _placementContentTracker
@property (retain, nonatomic) TJAdContentTracker *adContentTracker; // ivar: _adContentTracker
@property (readonly, nonatomic) BOOL internalContentReady; // ivar: _internalContentReady
@property (readonly, nonatomic) BOOL internalContentAvailable; // ivar: _internalContentAvailable
@property (nonatomic) BOOL webkitPreferred; // ivar: _webkitPreferred
@property (nonatomic) BOOL isForcedTopView; // ivar: _isForcedTopView
@property (nonatomic) BOOL useNewAppStoreExperience; // ivar: _useNewAppStoreExperience
@property (retain, nonatomic) NSData *content; // ivar: _content
@property (weak, nonatomic) NSObject<TJPlacementDelegate> *delegate; // ivar: _delegate
@property (weak, nonatomic) NSObject<TJPlacementVideoDelegate> *videoDelegate; // ivar: _videoDelegate
@property (copy, nonatomic) NSString *placementName; // ivar: _placementName
@property (readonly, nonatomic, getter=isContentReady) BOOL contentReady;
@property (readonly, nonatomic, getter=isContentAvailable) BOOL contentAvailable;
@property (retain, nonatomic) UIViewController *presentationViewController; // ivar: _presentationViewController
@property (copy, nonatomic) NSString *topViewControllerClassName; // ivar: _topViewControllerClassName
@property (copy, nonatomic) NSString *mediationAgent; // ivar: _mediationAgent
@property (copy, nonatomic) NSString *mediationId; // ivar: _mediationId
@property (copy, nonatomic) NSString *adapterVersion; // ivar: _adapterVersion
@property (copy, nonatomic) NSDictionary *auctionData; // ivar: _auctionData
@property (nonatomic) BOOL isLimited; // ivar: _isLimited
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)internalPlacementName;
-(id)init;
-(void)dealloc;
-(id)getContentTypeForUsageTracking;
-(id)getPlacementType;
-(void)notifyRequestDidSucceed;
-(void)notifyRequestDidFail:(id)arg0 ;
-(void)didReadyPlacementContent:(id)arg0 ;
-(void)didFailToReadyPlacementContent:(id)arg0 ;
-(void)didShowPlacementContent:(id)arg0 ;
-(void)didClosePlacementContent:(id)arg0 ;
-(void)didClickPlacementContent:(id)arg0 ;
-(void)didClickPlacementContent:(id)arg0 purchaseRequestForProductId:(id)arg1 withCampaignId:(id)arg2 ;
-(void)didClickPlacementContent:(id)arg0 rewardRequestForRewardId:(id)arg1 name:(id)arg2 quantity:(NSUInteger)arg3 token:(id)arg4 ;
-(void)didClickPlacementContent:(id)arg0 redirectURL:(id)arg1 adContent:(id)arg2 ;
-(void)didDismissPlacementContentWithBlock:(id)arg0 ;
-(void)didDismissPlacementContent:(id)arg0 ;
-(void)didDismissPlacementContent:(id)arg0 purchaseRequestForProductId:(id)arg1 withCampaignId:(id)arg2 ;
-(void)didDismissPlacementContent:(id)arg0 rewardRequestForRewardId:(id)arg1 name:(id)arg2 quantity:(NSUInteger)arg3 token:(id)arg4 ;
-(void)resetPlacement;
-(void)requestContent;
-(BOOL)isConnected;
-(id)getAppID;
-(id)placementServiceURL;
-(id)mediationContentURL;
-(id)auctionContentURL;
-(void)sendRequestWithURL:(id)arg0 params:(id)arg1 usageTracker:(id)arg2 ;
-(id)requestParams;
-(void)setupAdViewDisplay:(id)arg0 ;
-(void)showContentWithViewController:(id)arg0 ;
-(void)viewDidAppear;
-(void)viewDidDisappear;
-(void)notifyContentIsReady;
-(void)notifyContentDidDisappear;
-(void)notifyContentDidAppear;
-(void)handleDisablePreload:(id)arg0 ;
-(void)videoAdBegan;
-(void)videoAdCompleted;
-(void)videoAdError:(id)arg0 ;
-(id)generatePlacementDictKey;
-(void)onCachingComplete;
-(BOOL)shouldRetry;
-(void)retryRequestContentURL:(id)arg0 usageTracker:(id)arg1 ;
+(id)placementWithName:(id)arg0 delegate:(id)arg1 ;
+(id)placementWithName:(id)arg0 mediationAgent:(id)arg1 mediationId:(id)arg2 delegate:(id)arg3 ;
+(id)placementWithName:(id)arg0 delegate:(id)arg1 systemFlag:(BOOL)arg2 ;
+(id)placementWithNameForOfferwallURL:(id)arg0 delegate:(id)arg1 ;
+(id)placementWithName:(id)arg0 mediationAgent:(id)arg1 mediationId:(id)arg2 delegate:(id)arg3 systemFlag:(BOOL)arg4 requestFor:(id)arg5 ;
+(id)limitedPlacementWithName:(id)arg0 mediationAgent:(id)arg1 delegate:(id)arg2 ;
+(id)createPlacement:(id)arg0 mediationAgent:(id)arg1 mediationId:(id)arg2 delegate:(id)arg3 systemFlag:(BOOL)arg4 requestFor:(id)arg5 isLimited:(BOOL)arg6 ;
+(id)generatePlacementDictKeyWithName:(id)arg0 systemFlag:(BOOL)arg1 requestFor:(id)arg2 mediationAgent:(id)arg3 mediationId:(id)arg4 isLimited:(BOOL)arg5 ;
+(void)dismissContent;
+(void)dismissContentIncludingAd:(BOOL)arg0 then:(id)arg1 ;
+(BOOL)isFullScreenViewOpen;
+(int)getCurrentViewType;


@end


#endif