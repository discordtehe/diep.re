// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADVIEW_H
#define FBADVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBDisplayAdController;
@class FBDisplayAdAdapter;
@class FBAdExtraHint;
@protocol FBDisplayAdControllerDelegate;
@protocol FBAdViewDelegate;

@interface FBAdView : UIView <FBDisplayAdControllerDelegate>



@property (weak, nonatomic) UIView *adView; // ivar: _adView
@property (retain, nonatomic) FBDisplayAdController *adController; // ivar: _adController
@property (nonatomic) FBAdSize adSize; // ivar: _adSize
@property (nonatomic, getter=isInitialized) BOOL initialized; // ivar: _initialized
@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (retain, nonatomic) FBDisplayAdAdapter *adapter; // ivar: _adapter
@property (nonatomic) CGSize actualAdSize; // ivar: _actualAdSize
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (readonly, nonatomic, getter=isAdValid) BOOL adValid;
@property (weak, nonatomic) NSObject<FBAdViewDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) FBAdExtraHint *extraHint;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithPlacementID:(id)arg0 adSize:(struct FBAdSize )arg1 rootViewController:(id)arg2 ;
-(id)initWithPlacementID:(id)arg0 bidPayload:(id)arg1 rootViewController:(id)arg2 error:(*id)arg3 ;
-(void)doLoadAd:(id)arg0 ;
-(void)tellDelegateThatWeDidFailWithError:(id)arg0 ;
-(void)loadAd;
-(void)loadAdWithBidPayload:(id)arg0 ;
-(void)disableAutoRefresh;
-(void)layoutSubviews;
-(void)clearSubviews;
-(void)updateInitialAdViewSize:(struct FBAdSize )arg0 ;
-(void)displayAdController:(id)arg0 presentedView:(id)arg1 ;
-(void)displayAdControllerLoaded:(id)arg0 ;
-(void)displayAdControllerStopped:(id)arg0 ;
-(void)displayAdController:(id)arg0 didFailWithError:(id)arg1 ;
-(void)displayAdControllerImpression:(id)arg0 ;
-(void)displayAdControllerClickThrough:(id)arg0 ;
-(void)displayAdControllerUserClosed:(id)arg0 ;


@end


#endif