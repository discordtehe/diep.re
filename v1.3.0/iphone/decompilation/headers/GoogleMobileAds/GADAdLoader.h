// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADLOADER_H
#define GADADLOADER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class GADAdSource;
@protocol GADAdLoaderDelegate;

@interface GADAdLoader : NSObject {
    GADAdSource *_adSource;
    uint8_t _requestInProgress;
    NSSet *_adTypes;
    NSArray *_options;
    UIViewController *_rootViewController;
}


@property (weak, nonatomic) NSObject<GADAdLoaderDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) NSString *adUnitID; // ivar: _adUnitID
@property (readonly, nonatomic, getter=isLoading) BOOL loading;


-(id)initWithAdUnitID:(id)arg0 rootViewController:(id)arg1 adTypes:(id)arg2 options:(id)arg3 ;
-(id)init;
-(void)dealloc;
-(void)loadRequest:(id)arg0 ;
-(void)finishRenderingAd:(id)arg0 withRenderedAds:(id)arg1 errors:(id)arg2 configuration:(struct NSDictionary *)arg3 ;
-(void)adSourceDidLoadAds:(id)arg0 withErrors:(id)arg1 configuration:(struct NSDictionary *)arg2 ;
-(id)publicAdFromInternalAd:(id)arg0 info:(struct NSDictionary *)arg1 error:(*id)arg2 ;
-(id)adSource;
-(void)updateTargeting:(id)arg0 ;
-(id)customTemplateIDs;
-(id)validAdSizes;
-(void)failedToReceiveAdWithError:(id)arg0 ;
-(void)finishLoading;
-(void)receivePublicAd:(id)arg0 ;
-(BOOL)requestInProgress;


@end


#endif