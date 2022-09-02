// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef DFPBANNERVIEWOPTIONS_H
#define DFPBANNERVIEWOPTIONS_H



@class GADAdLoaderOptions;
@protocol GADAppEventDelegate;
@protocol GADAdSizeDelegate;

@interface DFPBannerViewOptions : GADAdLoaderOptions

@property (weak, nonatomic) NSObject<GADAppEventDelegate> *appEventDelegate; // ivar: _appEventDelegate
@property (weak, nonatomic) NSObject<GADAdSizeDelegate> *adSizeDelegate; // ivar: _adSizeDelegate
@property (nonatomic) BOOL enableManualImpressions; // ivar: _enableManualImpressions


-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)requestParameters;


@end


#endif