// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVEADIMAGEADLOADEROPTIONS_H
#define GADNATIVEADIMAGEADLOADEROPTIONS_H



@class GADAdLoaderOptions;

@interface GADNativeAdImageAdLoaderOptions : GADAdLoaderOptions

@property (nonatomic) BOOL disableImageLoading; // ivar: _disableImageLoading
@property (nonatomic) BOOL shouldRequestMultipleImages; // ivar: _shouldRequestMultipleImages
@property (nonatomic) NSInteger preferredImageOrientation; // ivar: _preferredImageOrientation


-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)requestParameters;


@end


#endif