// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEAD_H
#define FBNATIVEAD_H


#import <Foundation/Foundation.h>

@class FBNativeAdBase;
@class FBAdImage;
@protocol NSCopying;
@protocol FBNativeAdBaseDelegate;
@protocol FBNativeAdDelegate;

@interface FBNativeAd : FBNativeAdBase <NSCopying, FBNativeAdBaseDelegate>



@property (readonly, nonatomic) FBAdImage *coverImage;
@property (readonly, nonatomic) FBAdImage *coverImage;
@property (weak, nonatomic) NSObject<FBNativeAdDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithPlacementID:(id)arg0 adProvider:(id)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)init;
-(id)initWithPlacementID:(id)arg0 ;
-(void)registerViewForInteraction:(id)arg0 mediaView:(id)arg1 iconView:(id)arg2 viewController:(id)arg3 ;
-(void)registerViewForInteraction:(id)arg0 mediaView:(id)arg1 iconView:(id)arg2 viewController:(id)arg3 clickableViews:(id)arg4 ;
-(void)registerViewForInteraction:(id)arg0 mediaView:(id)arg1 iconImageView:(id)arg2 viewController:(id)arg3 ;
-(void)registerViewForInteraction:(id)arg0 mediaView:(id)arg1 iconImageView:(id)arg2 viewController:(id)arg3 clickableViews:(id)arg4 ;
-(void)registerViewForInteraction:(id)arg0 viewController:(id)arg1 clickableViews:(id)arg2 mediaView:(id)arg3 ;
-(void)downloadMedia;
-(void)tellDelegateMediaViewIsNotSet;
-(id)generateLoggingDataWithExtraData:(id)arg0 ;
-(void)nativeAdBaseDidLoad:(id)arg0 ;
-(void)nativeAdBaseDidDownloadMedia:(id)arg0 ;
-(void)nativeAdBaseWillLogImpression:(id)arg0 ;
-(void)nativeAdBase:(id)arg0 didFailWithError:(id)arg1 ;
-(void)nativeAdBaseDidClick:(id)arg0 ;
-(void)nativeAdBaseDidFinishHandling:(id)arg0 ;
+(id)fakeNativeAd;


@end


#endif