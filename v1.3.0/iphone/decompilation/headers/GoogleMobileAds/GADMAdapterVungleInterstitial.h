// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERVUNGLEINTERSTITIAL_H
#define GADMADAPTERVUNGLEINTERSTITIAL_H


#import <Foundation/Foundation.h>

@protocol VungleDelegate;
@protocol GADMAdNetworkAdapter;
@protocol GADMAdNetworkConnector;

@interface GADMAdapterVungleInterstitial : NSObject <VungleDelegate, GADMAdNetworkAdapter>



@property (weak, nonatomic) NSObject<GADMAdNetworkConnector> *connector; // ivar: _connector
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly) NSString *desiredPlacement; // ivar: desiredPlacement


-(id)initWithGADMAdNetworkConnector:(id)arg0 ;
-(void)dealloc;
-(void)getBannerWithSize:(struct GADAdSize )arg0 ;
-(void)loadInterstitialAd;
-(void)getInterstitial;
-(void)stopBeingDelegate;
-(BOOL)isBannerAnimationOK:(NSInteger)arg0 ;
-(void)presentInterstitialFromRootViewController:(id)arg0 ;
-(void)initialized:(BOOL)arg0 error:(id)arg1 ;
-(void)adAvailable;
-(void)adNotAvailable:(id)arg0 ;
-(void)willShowAd;
-(void)willCloseAd:(BOOL)arg0 didDownload:(BOOL)arg1 ;
-(void)didCloseAd:(BOOL)arg0 didDownload:(BOOL)arg1 ;
+(id)adapterVersion;
+(Class)networkExtrasClass;


@end


#endif