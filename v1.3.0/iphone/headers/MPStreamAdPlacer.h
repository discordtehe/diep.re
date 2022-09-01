// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPSTREAMADPLACER_H
#define MPSTREAMADPLACER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class MPNativeAdSource;
@class MPNativePositionSource;
@class MPAdPositioning;
@class MPStreamAdPlacementData;
@protocol MPNativeAdSourceDelegate;
@protocol MPNativeAdDelegate;
@protocol MPMoPubAdPlacer;
@protocol MPStreamAdPlacerDelegate;

@interface MPStreamAdPlacer : NSObject <MPNativeAdSourceDelegate, MPNativeAdDelegate, MPMoPubAdPlacer>



@property (retain, nonatomic) NSArray *rendererConfigurations; // ivar: _rendererConfigurations
@property (retain, nonatomic) MPNativeAdSource *adSource; // ivar: _adSource
@property (retain, nonatomic) MPNativePositionSource *positioningSource; // ivar: _positioningSource
@property (copy, nonatomic) MPAdPositioning *adPositioning; // ivar: _adPositioning
@property (retain, nonatomic) MPStreamAdPlacementData *adPlacementData; // ivar: _adPlacementData
@property (copy, nonatomic) NSString *adUnitID; // ivar: _adUnitID
@property (retain, nonatomic) NSMutableDictionary *sectionCounts; // ivar: _sectionCounts
@property (retain, nonatomic) NSIndexPath *topConsideredIndexPath; // ivar: _topConsideredIndexPath
@property (retain, nonatomic) NSIndexPath *bottomConsideredIndexPath; // ivar: _bottomConsideredIndexPath
@property (retain, nonatomic) NSArray *visibleIndexPaths; // ivar: _visibleIndexPaths
@property (weak, nonatomic) UIViewController *viewController; // ivar: _viewController
@property (weak, nonatomic) NSObject<MPStreamAdPlacerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithViewController:(id)arg0 adPositioning:(id)arg1 rendererConfigurations:(id)arg2 ;
-(void)dealloc;
-(void)setItemCount:(NSUInteger)arg0 forSection:(NSInteger)arg1 ;
-(void)renderAdAtIndexPath:(id)arg0 inView:(id)arg1 ;
-(struct CGSize )sizeForAdAtIndexPath:(id)arg0 withMaximumWidth:(CGFloat)arg1 ;
-(void)loadAdsForAdUnitID:(id)arg0 ;
-(void)loadAdsForAdUnitID:(id)arg0 targeting:(id)arg1 ;
-(BOOL)isAdAtIndexPath:(id)arg0 ;
-(NSUInteger)adjustedNumberOfItems:(NSUInteger)arg0 inSection:(NSUInteger)arg1 ;
-(id)adjustedIndexPathForOriginalIndexPath:(id)arg0 ;
-(id)originalIndexPathForAdjustedIndexPath:(id)arg0 ;
-(id)adjustedIndexPathsForOriginalIndexPaths:(id)arg0 ;
-(id)originalIndexPathsForAdjustedIndexPaths:(id)arg0 ;
-(void)insertItemsAtIndexPaths:(id)arg0 ;
-(void)deleteItemsAtIndexPaths:(id)arg0 ;
-(void)moveItemAtIndexPath:(id)arg0 toIndexPath:(id)arg1 ;
-(void)insertSections:(id)arg0 ;
-(void)deleteSections:(id)arg0 ;
-(void)moveSection:(NSInteger)arg0 toSection:(NSInteger)arg1 ;
-(void)insertItemCountSections:(id)arg0 ;
-(void)deleteItemCountSections:(id)arg0 ;
-(struct _NSRange )rangeToDeleteInSection:(id)arg0 forOriginalContentIndexPaths:(id)arg1 ;
-(id)furthestValidIndexPathAfterIndexPath:(id)arg0 withinDistance:(NSUInteger)arg1 ;
-(id)earliestValidIndexPathBeforeIndexPath:(id)arg0 withinDistance:(NSUInteger)arg1 ;
-(BOOL)shouldPlaceAdAtIndexPath:(id)arg0 ;
-(id)retrieveAdDataForInsertionPath:(id)arg0 ;
-(void)fillAdsInConsideredRange;
-(void)adSourceDidFinishRequest:(id)arg0 ;
-(void)willPresentModalForNativeAd:(id)arg0 ;
-(void)didDismissModalForNativeAd:(id)arg0 ;
-(void)willLeaveApplicationFromNativeAd:(id)arg0 ;
-(void)mopubAd:(id)arg0 didTrackImpressionWithImpressionData:(id)arg1 ;
-(struct CGSize )sizeForAd:(id)arg0 withMaximumWidth:(CGFloat)arg1 andIndexPath:(id)arg2 ;
+(id)placerWithViewController:(id)arg0 adPositioning:(id)arg1 rendererConfigurations:(id)arg2 ;


@end


#endif