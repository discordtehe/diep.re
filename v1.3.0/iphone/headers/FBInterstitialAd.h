// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINTERSTITIALAD_H
#define FBINTERSTITIALAD_H


#import <Foundation/Foundation.h>

@class FBDisplayAdController;
@class FBAdExtraHint;
@protocol FBDisplayAdControllerDelegate;
@protocol FBInterstitialAdDelegate;

@interface FBInterstitialAd : NSObject <FBDisplayAdControllerDelegate>



@property (retain, nonatomic) FBDisplayAdController *adController; // ivar: _adController
@property (nonatomic, getter=isInitialized) BOOL initialized; // ivar: _initialized
@property (nonatomic, getter=isReady) BOOL ready; // ivar: _ready
@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (weak, nonatomic) NSObject<FBInterstitialAdDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) FBAdExtraHint *extraHint;
@property (readonly, nonatomic, getter=isAdValid) BOOL adValid;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithPlacementID:(id)arg0 ;
-(void)doLoadAd:(id)arg0 ;
-(void)tellDelegateThatWeDidFailWithError:(id)arg0 ;
-(void)loadAd;
-(void)loadAdWithBidPayload:(id)arg0 ;
-(BOOL)showAdFromRootViewController:(id)arg0 ;
-(void)displayAdController:(id)arg0 presentedView:(id)arg1 ;
-(void)displayAdControllerLoaded:(id)arg0 ;
-(void)displayAdController:(id)arg0 didFailWithError:(id)arg1 ;
-(void)displayAdControllerImpression:(id)arg0 ;
-(void)displayAdControllerClickThrough:(id)arg0 ;
-(void)displayAdControllerUserClosed:(id)arg0 ;
-(void)displayAdControllerStopped:(id)arg0 ;
+(void)initialize;


@end


#endif