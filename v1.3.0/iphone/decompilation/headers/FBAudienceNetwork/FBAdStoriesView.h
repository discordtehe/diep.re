// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADSTORIESVIEW_H
#define FBADSTORIESVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class FBAdStoriesPageView;
@class FBNativeAdDataModel;
@class FBAdPlacementDefinition;
@class FBAdViewabilityValidator;
@class FBAdTimer;
@class FBAdBlurredOverlayView;
@class FBAdStoriesPageIndicator;
@class FBAdDetailsAndCTAButtonContainerView;
@protocol FBAdStoriesPageViewDelegate;
@protocol FBAdViewabilityValidatorDelegate;
@protocol FBAdDisplayable;
@protocol FBAdDisplayableViewDelegate;

@interface FBAdStoriesView : UIView <FBAdStoriesPageViewDelegate, FBAdViewabilityValidatorDelegate, FBAdDisplayable>

 {
    FBAdStoriesPageView *_currentPageView;
    BOOL _impressionSent;
}


@property (retain, nonatomic) FBNativeAdDataModel *dataModel; // ivar: _dataModel
@property (retain, nonatomic) FBAdPlacementDefinition *placementDefinition; // ivar: _placementDefinition
@property (retain, nonatomic) FBAdViewabilityValidator *viewabilityValidator; // ivar: _viewabilityValidator
@property (nonatomic) NSInteger currentPage; // ivar: _currentPage
@property (nonatomic) NSInteger numberOfPages; // ivar: _numberOfPages
@property (nonatomic) CGFloat volume; // ivar: _volume
@property (retain, nonatomic) NSDate *gestureStartTime; // ivar: _gestureStartTime
@property (nonatomic) BOOL firstPageIsReady; // ivar: _firstPageIsReady
@property (retain, nonatomic) FBAdTimer *forceViewTimer; // ivar: _forceViewTimer
@property (nonatomic) ? overallTime; // ivar: _overallTime
@property (retain, nonatomic) FBAdBlurredOverlayView *backgroundView; // ivar: _backgroundView
@property (retain, nonatomic) FBAdStoriesPageIndicator *pageIndicator; // ivar: _pageIndicator
@property (retain, nonatomic) UIView *headerView; // ivar: _headerView
@property (retain, nonatomic) UIScrollView *scrollView; // ivar: _scrollView
@property (retain, nonatomic) UIStackView *scrollViewPagesContainer; // ivar: _scrollViewPagesContainer
@property (retain, nonatomic) NSMutableArray *cachedPageViews; // ivar: _cachedPageViews
@property (retain, nonatomic) FBAdDetailsAndCTAButtonContainerView *adDetailsAndCTAButtonContainerView; // ivar: _adDetailsAndCTAButtonContainerView
@property (nonatomic) BOOL canPlayVideo; // ivar: _canPlayVideo
@property (weak, nonatomic) NSObject<FBAdDisplayableViewDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) ? currentTime;


-(id)init;
-(void)setup;
-(void)layoutSubviews;
-(void)handlePreviousPageIsRequested;
-(void)handleNextPageIsRequested;
-(void)didTap:(id)arg0 ;
-(void)longPress:(id)arg0 ;
-(void)didTouchCTA:(id)arg0 withEvent:(id)arg1 ;
-(void)showAd;
-(void)destroyAd;
-(void)configureVolume:(CGFloat)arg0 ;
-(void)setPlaying:(BOOL)arg0 forced:(BOOL)arg1 ;
-(BOOL)isPlaying;
-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 ;
-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 carouselPageNumber:(id)arg2 totalPages:(id)arg3 ;
-(void)loadPage:(id)arg0 withCompletion:(id)arg1 ;
-(void)prefetchNextPageIfNeeded;
-(void)pageViewDidPrepareContent:(id)arg0 ;
-(void)pageViewDidEndDisplayingPage:(id)arg0 ;
-(void)pageView:(id)arg0 didFailToPrepareContentWithError:(id)arg1 ;
-(void)pageView:(id)arg0 didChangeCurrentTime:(struct ? )arg1 ;
-(void)timerTicked:(id)arg0 ;
-(BOOL)viewabilityValidator:(id)arg0 checkedWithStatus:(NSInteger)arg1 ;


@end


#endif