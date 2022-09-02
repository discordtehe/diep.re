// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATEDADRENDERER_H
#define GADMEDIATEDADRENDERER_H


#import <Foundation/Foundation.h>

@class GADServerTransaction;
@protocol GADAdRendering;
@protocol GADMAdNetworkConnector;
@protocol GADMAdNetworkAdapter;

@interface GADMediatedAdRenderer : NSObject <GADAdRendering, GADMAdNetworkConnector>

 {
    GADServerTransaction *_transaction;
    *NSDictionary _adConfiguration;
    id<GADMAdNetworkAdapter> *_adapter;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(Class)mainAdapterClass;
-(void)dealloc;
-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;
-(id)publisherId;
-(id)credentials;
-(BOOL)testMode;
-(id)networkExtras;
-(id)childDirectedTreatment;
-(id)maxAdContentRating;
-(id)underAgeOfConsent;
-(NSInteger)userGender;
-(id)userBirthday;
-(BOOL)userHasLocation;
-(CGFloat)userLatitude;
-(CGFloat)userLongitude;
-(CGFloat)userLocationAccuracyInMeters;
-(id)userLocationDescription;
-(id)userKeywords;
-(float)adVolume;
-(BOOL)adMuted;
-(void)adapter:(id)arg0 didFailAd:(id)arg1 ;
-(id)viewControllerForPresentingModalView;
-(void)adapterDidReceiveInterstitial:(id)arg0 ;
-(void)adapterWillPresentInterstitial:(id)arg0 ;
-(void)adapterWillDismissInterstitial:(id)arg0 ;
-(void)adapterDidDismissInterstitial:(id)arg0 ;
-(void)adapter:(id)arg0 didReceiveMediatedNativeAd:(id)arg1 ;
-(void)adapter:(id)arg0 didReceiveMediatedUnifiedNativeAd:(id)arg1 ;
-(void)adapter:(id)arg0 didReceiveAdView:(id)arg1 ;
-(void)adapterWillPresentFullScreenModal:(id)arg0 ;
-(void)adapterWillDismissFullScreenModal:(id)arg0 ;
-(void)adapterDidDismissFullScreenModal:(id)arg0 ;
-(void)adapterWillLeaveApplication:(id)arg0 ;
-(void)adapterDidGetAdClick:(id)arg0 ;
-(void)adapter:(id)arg0 didReceiveInterstitial:(id)arg1 ;
-(void)adapter:(id)arg0 didFailInterstitial:(id)arg1 ;
-(void)adapter:(id)arg0 clickDidOccurInBanner:(id)arg1 ;


@end


#endif