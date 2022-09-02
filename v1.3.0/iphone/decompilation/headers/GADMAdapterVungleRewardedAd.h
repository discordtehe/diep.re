// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERVUNGLEREWARDEDAD_H
#define GADMADAPTERVUNGLEREWARDEDAD_H


#import <Foundation/Foundation.h>

@class GADMediationRewardedAdConfiguration;
@protocol VungleDelegate;
@protocol VungleSDKDelegate;
@protocol GADMediationRewardedAd;
@protocol GADMediationRewardedAdEventDelegate;

@interface GADMAdapterVungleRewardedAd : NSObject <VungleDelegate, VungleSDKDelegate, GADMediationRewardedAd>



@property (retain, nonatomic) GADMediationRewardedAdConfiguration *adConfiguration; // ivar: _adConfiguration
@property (copy, nonatomic) id *adLoadCompletionHandler; // ivar: _adLoadCompletionHandler
@property (weak, nonatomic) NSObject<GADMediationRewardedAdEventDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly) NSString *desiredPlacement; // ivar: desiredPlacement


-(id)initWithAdConfiguration:(id)arg0 completionHandler:(id)arg1 ;
-(void)requestRewardedAd;
-(void)loadRewardedAd;
-(void)presentFromViewController:(id)arg0 ;
-(void)initialized:(BOOL)arg0 error:(id)arg1 ;
-(void)adAvailable;
-(void)didCloseAd:(BOOL)arg0 didDownload:(BOOL)arg1 ;
-(void)willCloseAd:(BOOL)arg0 didDownload:(BOOL)arg1 ;
-(void)willShowAd;
-(void)adNotAvailable:(id)arg0 ;


@end


#endif