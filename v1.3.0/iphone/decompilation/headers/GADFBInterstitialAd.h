// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADFBINTERSTITIALAD_H
#define GADFBINTERSTITIALAD_H


#import <Foundation/Foundation.h>

@class FBInterstitialAd;
@class GADFBAdapterDelegate;
@protocol GADMAdNetworkConnector;
@protocol GADMAdNetworkAdapter;

@interface GADFBInterstitialAd : NSObject {
    id<GADMAdNetworkConnector> *_connector;
    id<GADMAdNetworkAdapter> *_adapter;
    FBInterstitialAd *_interstitialAd;
    GADFBAdapterDelegate *_adapterDelegate;
}




-(id)initWithGADMAdNetworkConnector:(id)arg0 adapter:(id)arg1 ;
-(id)init;
-(void)getInterstitial;
-(void)stopBeingDelegate;
-(void)presentInterstitialFromRootViewController:(id)arg0 ;


@end


#endif