// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEBANNERAD_H
#define FBNATIVEBANNERAD_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FBNativeAdBase;
@class FBAdIconView;
@class FBMediaView;
@class FBAdViewabilityValidator;
@protocol NSCopying;
@protocol FBAdViewabilityValidatorDelegate;
@protocol FBNativeAdBaseDelegate;
@protocol FBNativeBannerAdDelegate;

@interface FBNativeBannerAd : FBNativeAdBase <NSCopying, FBAdViewabilityValidatorDelegate, FBNativeAdBaseDelegate>



@property (readonly, weak, nonatomic) FBAdIconView *iconView;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (weak, nonatomic) FBMediaView *iconView; // ivar: _iconView
@property (weak, nonatomic) UIImageView *iconImageView; // ivar: _iconImageView
@property (retain, nonatomic) FBAdViewabilityValidator *viewabilityValidator; // ivar: _viewabilityValidator
@property (retain, nonatomic) UIImage *iconImage; // ivar: _iconImage
@property (weak, nonatomic) NSObject<FBNativeBannerAdDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)viewabilityValidator:(id)arg0 checkedWithStatus:(NSInteger)arg1 ;
-(void)setupViewabilityValidator;
-(void)dealloc;
-(id)initWithPlacementID:(id)arg0 adProvider:(id)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)init;
-(id)initWithPlacementID:(id)arg0 ;
-(void)registerViewForInteraction:(id)arg0 iconView:(id)arg1 viewController:(id)arg2 ;
-(void)registerViewForInteraction:(id)arg0 iconView:(id)arg1 viewController:(id)arg2 clickableViews:(id)arg3 ;
-(void)registerViewForInteraction:(id)arg0 iconImageView:(id)arg1 viewController:(id)arg2 ;
-(void)registerViewForInteraction:(id)arg0 iconImageView:(id)arg1 viewController:(id)arg2 clickableViews:(id)arg3 ;
-(void)tellDelegateIconViewIsNotSet;
-(void)downloadMedia;
-(id)generateLoggingData;
-(void)nativeAdBaseDidLoad:(id)arg0 ;
-(void)nativeAdBaseDidDownloadMedia:(id)arg0 ;
-(void)nativeAdBaseWillLogImpression:(id)arg0 ;
-(void)nativeAdBase:(id)arg0 didFailWithError:(id)arg1 ;
-(void)nativeAdBaseDidClick:(id)arg0 ;
-(void)nativeAdBaseDidFinishHandling:(id)arg0 ;
+(id)fakeNativeBannerAd;


@end


#endif