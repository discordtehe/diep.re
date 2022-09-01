// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADENDCARDAPPSTOREVIEW_H
#define FBADENDCARDAPPSTOREVIEW_H


#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>
#import <Foundation/Foundation.h>

@class FBNativeAdDataModel;
@class FBInterstitialAdToolbarView;
@protocol FBInterstitialAdToolbarViewDelegate;
@protocol SKStoreProductViewControllerDelegate;
@protocol FBAdFunnelLoggingDelegate;
@protocol FBAdEndCardAppStoreViewDelegate;

@interface FBAdEndCardAppStoreView : UIView <FBInterstitialAdToolbarViewDelegate, SKStoreProductViewControllerDelegate>



@property (readonly, nonatomic) FBNativeAdDataModel *adDataModel; // ivar: _adDataModel
@property (weak, nonatomic) FBInterstitialAdToolbarView *toolbarView; // ivar: _toolbarView
@property (nonatomic) CGFloat appStoreSheetOpenTimeMs; // ivar: _appStoreSheetOpenTimeMs
@property (nonatomic) BOOL hasAppearedBefore; // ivar: _hasAppearedBefore
@property (weak, nonatomic) NSObject<FBAdFunnelLoggingDelegate> *funnelLoggerDelegate; // ivar: _funnelLoggerDelegate
@property (copy, nonatomic) id *onInfo; // ivar: _onInfo
@property (retain, nonatomic) SKStoreProductViewController *productVC; // ivar: _productVC
@property (weak, nonatomic) NSObject<FBAdEndCardAppStoreViewDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDataModel:(id)arg0 toolbarView:(id)arg1 ;
-(void)layoutSubviews;
-(void)layoutToolbarViewWithInsets:(struct UIEdgeInsets )arg0 withBounds:(struct CGRect )arg1 ;
-(void)layoutAppStoreSheetWithInsets:(struct UIEdgeInsets )arg0 withBounds:(struct CGRect )arg1 ;
-(void)addToolbarView:(id)arg0 ;
-(void)preloadAppStoreController;
-(void)addAppStoreViewToSubview;
-(void)closeEndCard;
-(void)interstitialAdToolbarDidClose:(id)arg0 withTouchData:(id)arg1 ;
-(void)interstitialAdToolbarDidTapAdChoices:(id)arg0 ;
-(void)interstitialAdToolbarDidCloseAdChoices:(id)arg0 ;
-(void)interstitialAdToolbarDidTapAdInfo:(id)arg0 ;
-(void)productViewControllerDidFinish:(id)arg0 ;


@end


#endif