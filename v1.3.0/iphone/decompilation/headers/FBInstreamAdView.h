// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINSTREAMADVIEW_H
#define FBINSTREAMADVIEW_H

@protocol FBInstreamAdViewDelegate;

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBDisplayAdController;
@class FBAdExtraHint;
@protocol FBDisplayAdControllerDelegate;

@interface FBInstreamAdView : UIView <FBDisplayAdControllerDelegate>



@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (retain, nonatomic) FBDisplayAdController *adController; // ivar: _adController
@property (retain, nonatomic) UIView *instreamVideoAdView; // ivar: _instreamVideoAdView
@property (nonatomic, getter=isLoaded) BOOL loaded; // ivar: _loaded
@property (nonatomic, getter=isStarted) BOOL started; // ivar: _started
@property (readonly, nonatomic, getter=isAdValid) BOOL adValid;
@property (weak, nonatomic) NSObject<FBInstreamAdViewDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) FBAdExtraHint *extraHint; // ivar: _extraHint
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithPlacementID:(id)arg0 ;
-(void)doLoadAd:(id)arg0 ;
-(void)tellDelegateThatWeDidFailWithError:(id)arg0 ;
-(void)loadAd;
-(void)loadAdWithBidPayload:(id)arg0 ;
-(BOOL)showAdFromRootViewController:(id)arg0 ;
-(void)displayAdControllerLoaded:(id)arg0 ;
-(void)displayAdControllerStopped:(id)arg0 ;
-(void)displayAdController:(id)arg0 didFailWithError:(id)arg1 ;
-(void)displayAdController:(id)arg0 presentedView:(id)arg1 ;
-(void)displayAdControllerImpression:(id)arg0 ;
-(void)displayAdControllerClickThrough:(id)arg0 ;
+(void)initialize;


@end


#endif