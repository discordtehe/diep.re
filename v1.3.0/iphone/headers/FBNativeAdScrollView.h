// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADSCROLLVIEW_H
#define FBNATIVEADSCROLLVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBNativeAdsManager;
@class FBAdTouchPassthroughView;
@protocol FBNativeAdDelegate;
@protocol FBNativeAdDelegate;

@interface FBNativeAdScrollView : UIView <FBNativeAdDelegate>



@property (retain, nonatomic) FBNativeAdsManager *manager; // ivar: _manager
@property (copy, nonatomic) id *childViewProvider; // ivar: _childViewProvider
@property (weak, nonatomic) UIScrollView *scrollView; // ivar: _scrollView
@property (weak, nonatomic) FBAdTouchPassthroughView *hitTestView; // ivar: _hitTestView
@property (retain, nonatomic) NSPointerArray *nativeAdViews; // ivar: _nativeAdViews
@property (retain, nonatomic) NSMapTable *nativeAdMapping; // ivar: _nativeAdMapping
@property (nonatomic) NSUInteger maximumNativeAdCount; // ivar: _maximumNativeAdCount
@property (nonatomic, getter=isLoadingAds) BOOL loadingAds; // ivar: _loadingAds
@property (nonatomic, getter=isAnimationEnabled) BOOL animationEnabled; // ivar: _animationEnabled
@property (nonatomic) CGFloat xInset; // ivar: _xInset
@property (nonatomic, getter=isAdPersistenceEnabled) BOOL adPersistenceEnabled; // ivar: _adPersistenceEnabled
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (weak, nonatomic) NSObject<FBNativeAdDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithNativeAdsManager:(id)arg0 withType:(NSInteger)arg1 ;
-(id)initWithNativeAdsManager:(id)arg0 withType:(NSInteger)arg1 withAttributes:(id)arg2 ;
-(id)initWithNativeAdsManager:(id)arg0 withType:(NSInteger)arg1 withAttributes:(id)arg2 withMaximum:(NSUInteger)arg3 ;
-(id)initWithNativeAdsManager:(id)arg0 withViewProvider:(id)arg1 ;
// -(id)initWithNativeAdsManager:(id)arg0 withViewProvider:(id)arg1 withMaximum:(unk)arg2  ;
-(void)loadAds;
-(void)commonInitialization;
-(void)didMoveToSuperview;
-(void)setFrame:(struct CGRect )arg0 ;
-(void)setBounds:(struct CGRect )arg0 ;
-(void)dealloc;
-(void)setupScrollViewSize;
-(void)setupContentSize;
-(void)loadPages;
-(void)loadPage:(NSUInteger)arg0 ;
-(id)childViewForNativeAd:(id)arg0 withPosition:(NSUInteger)arg1 ;
-(void)populate:(id)arg0 forIndex:(NSUInteger)arg1 ;
-(void)addAllNativeAds;
-(NSUInteger)addNativeAd:(id)arg0 withPosition:(NSUInteger)arg1 ;
-(NSUInteger)indexForNativeAd:(id)arg0 ;
-(NSUInteger)nativeAdCount;
-(id)viewForNativeAd:(id)arg0 ;
-(void)registerNativeAd:(id)arg0 ;
-(void)registerNativeAds:(id)arg0 ;
-(void)removeAllNativeAds;
-(void)removeAllNativeAds:(id)arg0 ;
-(void)unregisterAllNativeAds;
-(void)unregisterAllNativeAds:(id)arg0 ;
-(void)detachAllNativeAds:(id)arg0 ;
-(void)mapNativeAd:(id)arg0 toView:(id)arg1 ;
-(id)nativeAdForView:(id)arg0 ;
-(id)nativeAds;
-(void)nativeAdDidClick:(id)arg0 ;
-(void)nativeAdDidFinishHandlingClick:(id)arg0 ;
-(void)nativeAdWillLogImpression:(id)arg0 ;
+(void)initialize;


@end


#endif