// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADFBADAPTERDELEGATE_H
#define GADFBADAPTERDELEGATE_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol FBAdViewDelegate;
@protocol FBInterstitialAdDelegate;
@protocol FBRewardedVideoAdDelegate;
@protocol GADMAdNetworkConnector;
@protocol GADMAdNetworkAdapter;

@interface GADFBAdapterDelegate : NSObject <FBAdViewDelegate, FBInterstitialAdDelegate, FBRewardedVideoAdDelegate>

 {
    id<GADMAdNetworkConnector> *_connector;
    id<GADMAdNetworkAdapter> *_adapter;
}


@property (nonatomic) CGSize finalBannerSize; // ivar: _finalBannerSize
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;


-(id)initWithAdapter:(id)arg0 connector:(id)arg1 ;
-(id)init;
-(void)adViewDidClick:(id)arg0 ;
-(void)adViewDidLoad:(id)arg0 ;
-(void)adView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)adViewDidFinishHandlingClick:(id)arg0 ;
-(void)interstitialAdWillLogImpression:(id)arg0 ;
-(void)interstitialAdDidClick:(id)arg0 ;
-(void)interstitialAdDidClose:(id)arg0 ;
-(void)interstitialAdWillClose:(id)arg0 ;
-(void)interstitialAdDidLoad:(id)arg0 ;
-(void)interstitialAd:(id)arg0 didFailWithError:(id)arg1 ;


@end


#endif