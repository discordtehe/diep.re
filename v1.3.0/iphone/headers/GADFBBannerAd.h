// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADFBBANNERAD_H
#define GADFBBANNERAD_H


#import <Foundation/Foundation.h>

@class FBAdView;
@class GADFBAdapterDelegate;
@protocol GADMAdNetworkConnector;
@protocol GADMAdNetworkAdapter;

@interface GADFBBannerAd : NSObject {
    id<GADMAdNetworkConnector> *_connector;
    id<GADMAdNetworkAdapter> *_adapter;
    FBAdView *_bannerAd;
    GADFBAdapterDelegate *_adapterDelegate;
}




-(id)initWithGADMAdNetworkConnector:(id)arg0 adapter:(id)arg1 ;
-(id)init;
-(void)getBannerWithSize:(struct GADAdSize )arg0 ;
-(void)stopBeingDelegate;


@end


#endif