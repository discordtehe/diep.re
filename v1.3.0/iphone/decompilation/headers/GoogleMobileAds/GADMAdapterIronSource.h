// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERIRONSOURCE_H
#define GADMADAPTERIRONSOURCE_H


#import <Foundation/Foundation.h>

@protocol GADMAdapterIronSourceDelegate;
@protocol GADMAdNetworkAdapter;
@protocol ISDemandOnlyInterstitialDelegate;
@protocol GADMAdNetworkConnector;

@interface GADMAdapterIronSource : NSObject <GADMAdapterIronSourceDelegate, GADMAdNetworkAdapter, ISDemandOnlyInterstitialDelegate>

 {
    id<GADMAdNetworkConnector> *_interstitialConnector;
}


@property (nonatomic) BOOL isLogEnabled; // ivar: _isLogEnabled
@property (retain, nonatomic) NSString *instanceID; // ivar: _instanceID
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithGADMAdNetworkConnector:(id)arg0 ;
-(void)stopBeingDelegate;
-(void)getInterstitial;
-(void)presentInterstitialFromRootViewController:(id)arg0 ;
-(void)getBannerWithSize:(struct GADAdSize )arg0 ;
-(BOOL)isBannerAnimationOK:(NSInteger)arg0 ;
-(void)showBannersNotSupportedError;
-(void)interstitialDidLoad:(id)arg0 ;
-(void)interstitialDidFailToLoadWithError:(id)arg0 instanceId:(id)arg1 ;
-(void)interstitialDidOpen:(id)arg0 ;
-(void)interstitialDidClose:(id)arg0 ;
-(void)interstitialDidShow:(id)arg0 ;
-(void)interstitialDidFailToShowWithError:(id)arg0 instanceId:(id)arg1 ;
-(void)didClickInterstitial:(id)arg0 ;
-(void)onLog:(id)arg0 ;
-(void)didFailToLoadAdWithError:(id)arg0 ;
-(id)getInstanceID;
+(id)adapterVersion;
+(Class)networkExtrasClass;


@end


#endif