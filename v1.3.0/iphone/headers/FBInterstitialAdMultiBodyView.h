// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINTERSTITIALADMULTIBODYVIEW_H
#define FBINTERSTITIALADMULTIBODYVIEW_H


#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBInterstitialAdBodyView;
@class FBNativeAdDataModel;
@class FBAdPlacementDefinition;
@protocol FBInterstitialAdMediaViewDelegate;
@protocol FBAdDisplayableViewDelegate;
@protocol UIScrollViewDelegate;

@interface FBInterstitialAdMultiBodyView : FBInterstitialAdBodyView <FBInterstitialAdMediaViewDelegate, FBAdDisplayableViewDelegate, UIScrollViewDelegate>



@property (readonly, weak, nonatomic) FBNativeAdDataModel *dataModel; // ivar: _dataModel
@property (readonly, nonatomic) FBAdPlacementDefinition *placementDefinition; // ivar: _placementDefinition
@property (nonatomic) CGFloat volume; // ivar: _volume
@property (retain, nonatomic) NSMutableDictionary *childViews; // ivar: _childViews
@property (weak, nonatomic) UIScrollView *scrollView; // ivar: _scrollView
@property (weak, nonatomic) UIPageControl *pageControl; // ivar: _pageControl
@property (nonatomic) NSInteger orientation; // ivar: _orientation
@property (nonatomic) BOOL nonCondencedCarouselLayoutFits; // ivar: _nonCondencedCarouselLayoutFits
@property (nonatomic) BOOL initialScrollViewOffsetAdjusted; // ivar: _initialScrollViewOffsetAdjusted
@property (retain, nonatomic) NSMutableDictionary *loadedCallbacksSeen; // ivar: _loadedCallbacksSeen
@property (nonatomic) NSUInteger numberOfViewsToPreloadLeft; // ivar: _numberOfViewsToPreloadLeft
@property (nonatomic) NSUInteger numberOfViewsToPreloadRight; // ivar: _numberOfViewsToPreloadRight
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(struct ? )currentTime;
-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 ;
-(void)showAd;
-(void)destroyAd;
-(void)layoutSubviews;
-(struct CGSize )pageSizeInRect:(struct CGRect )arg0 index:(NSInteger)arg1 ;
-(NSInteger)indexOfPageWithLongestText;
-(struct CGRect )pageFrameForPage:(NSInteger)arg0 ;
-(void)adjustScrollView;
-(struct CGPoint )contentOffsetForPage:(NSInteger)arg0 ;
-(void)updateCurrentPageForContentOffset:(struct CGPoint )arg0 ;
-(void)setPlaying:(BOOL)arg0 forced:(BOOL)arg1 ;
-(void)interstitialAdMediaViewDidLoad:(id)arg0 ;
-(void)interstitialAdMediaViewDidProgress:(id)arg0 ;
-(void)interstitialAdMediaViewDidEnd:(id)arg0 ;
-(void)interstitialAdMediaView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)adDisplayableViewDidStartVideo:(id)arg0 cardIndex:(id)arg1 ;
-(void)adDisplayableViewDidLoad:(id)arg0 ;
-(void)adDisplayableViewDidLogImpression:(id)arg0 withViewabilityValidator:(id)arg1 withPageNumber:(id)arg2 withPageTotal:(id)arg3 ;
-(void)adDisplayableViewDidClick:(id)arg0 withEvent:(id)arg1 withCommand:(id)arg2 skipAppStore:(BOOL)arg3 withPageNumber:(id)arg4 withPageTotal:(id)arg5 ;
-(void)adDisplayableViewDidProgress:(id)arg0 ;
-(void)adDisplayableViewDidEnd:(id)arg0 ;
-(void)adDisplayableView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)adDisplayableView:(id)arg0 didChangeVolume:(CGFloat)arg1 ;
-(BOOL)isNextPageVideo;
-(id)bodyViewAtIndex:(NSInteger)arg0 ;
-(id)viewsForWeakProxies:(id)arg0 ;
-(void)dispatchLoadedCallbackIfNeeded;
-(CGFloat)visibleWidthOfPageWithRect:(struct CGRect )arg0 contentOffset:(struct CGPoint )arg1 ;
-(void)pageControlTouched:(id)arg0 ;
-(void)gotoPage:(NSInteger)arg0 animated:(BOOL)arg1 ;
-(void)loadPage:(NSInteger)arg0 ;
-(void)loadCurrentPages:(NSInteger)arg0 ;
-(void)pauseVideoOnAllOtherCards:(id)arg0 ;
-(void)dimNonActivePages;
-(void)undimAllPages;
-(void)removeCurrentPages;
-(NSInteger)count;
-(void)configureVolume:(CGFloat)arg0 ;
-(void)scrollViewWillEndDragging:(id)arg0 withVelocity:(struct CGPoint )arg1 targetContentOffset:(struct CGPoint *)arg2 ;
-(void)scrollViewWillBeginDragging:(id)arg0 ;


@end


#endif