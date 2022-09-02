// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPCOLLECTIONVIEWADPLACER_H
#define MPCOLLECTIONVIEWADPLACER_H

@protocol MPCollectionViewAdPlacerDelegate;

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MPStreamAdPlacer;
@class MPTimer;
@protocol UICollectionViewDataSource;
@protocol UICollectionViewDelegate;
@protocol MPStreamAdPlacerDelegate;
@protocol UICollectionViewDelegateFlowLayout;
@protocol MPMoPubAdPlacer;
@protocol UICollectionViewDataSource;
@protocol UICollectionViewDelegate;

@interface MPCollectionViewAdPlacer : NSObject <UICollectionViewDataSource, UICollectionViewDelegate, MPStreamAdPlacerDelegate, UICollectionViewDelegateFlowLayout, MPMoPubAdPlacer>



@property (retain, nonatomic) MPStreamAdPlacer *streamAdPlacer; // ivar: _streamAdPlacer
@property (retain, nonatomic) UICollectionView *collectionView; // ivar: _collectionView
@property (weak, nonatomic) NSObject<UICollectionViewDataSource> *originalDataSource; // ivar: _originalDataSource
@property (weak, nonatomic) NSObject<UICollectionViewDelegate> *originalDelegate; // ivar: _originalDelegate
@property (retain, nonatomic) MPTimer *insertionTimer; // ivar: _insertionTimer
@property (weak, nonatomic) NSObject<MPCollectionViewAdPlacerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithCollectionView:(id)arg0 viewController:(id)arg1 adPositioning:(id)arg2 rendererConfigurations:(id)arg3 ;
-(void)dealloc;
-(void)loadAdsForAdUnitID:(id)arg0 ;
-(void)loadAdsForAdUnitID:(id)arg0 targeting:(id)arg1 ;
-(void)updateVisibleCells;
-(void)adPlacer:(id)arg0 didLoadAdAtIndexPath:(id)arg1 ;
-(void)adPlacer:(id)arg0 didRemoveAdsAtIndexPaths:(id)arg1 ;
-(void)nativeAdWillPresentModalForStreamAdPlacer:(id)arg0 ;
-(void)nativeAdDidDismissModalForStreamAdPlacer:(id)arg0 ;
-(void)nativeAdWillLeaveApplicationFromStreamAdPlacer:(id)arg0 ;
-(void)mopubAdPlacer:(id)arg0 didTrackImpressionForAd:(id)arg1 withImpressionData:(id)arg2 ;
-(NSInteger)numberOfSectionsInCollectionView:(id)arg0 ;
-(NSInteger)collectionView:(id)arg0 numberOfItemsInSection:(NSInteger)arg1 ;
-(id)collectionView:(id)arg0 cellForItemAtIndexPath:(id)arg1 ;
-(BOOL)collectionView:(id)arg0 canPerformAction:(SEL)arg1 forItemAtIndexPath:(id)arg2 withSender:(id)arg3 ;
-(void)collectionView:(id)arg0 didDeselectItemAtIndexPath:(id)arg1 ;
-(void)collectionView:(id)arg0 didEndDisplayingCell:(id)arg1 forItemAtIndexPath:(id)arg2 ;
-(void)collectionView:(id)arg0 didHighlightItemAtIndexPath:(id)arg1 ;
-(void)collectionView:(id)arg0 didSelectItemAtIndexPath:(id)arg1 ;
-(void)collectionView:(id)arg0 didUnhighlightItemAtIndexPath:(id)arg1 ;
-(void)collectionView:(id)arg0 performAction:(SEL)arg1 forItemAtIndexPath:(id)arg2 withSender:(id)arg3 ;
-(BOOL)collectionView:(id)arg0 shouldDeselectItemAtIndexPath:(id)arg1 ;
-(BOOL)collectionView:(id)arg0 shouldHighlightItemAtIndexPath:(id)arg1 ;
-(BOOL)collectionView:(id)arg0 shouldSelectItemAtIndexPath:(id)arg1 ;
-(BOOL)collectionView:(id)arg0 shouldShowMenuForItemAtIndexPath:(id)arg1 ;
-(void)collectionView:(id)arg0 willDisplayCell:(id)arg1 forItemAtIndexPath:(id)arg2 ;
-(struct CGSize )collectionView:(id)arg0 layout:(id)arg1 sizeForItemAtIndexPath:(id)arg2 ;
-(BOOL)isKindOfClass:(Class)arg0 ;
-(BOOL)conformsToProtocol:(id)arg0 ;
-(BOOL)respondsToSelector:(SEL)arg0 ;
-(id)forwardingTargetForSelector:(SEL)arg0 ;
+(id)placerWithCollectionView:(id)arg0 viewController:(id)arg1 rendererConfigurations:(id)arg2 ;
+(id)placerWithCollectionView:(id)arg0 viewController:(id)arg1 adPositioning:(id)arg2 rendererConfigurations:(id)arg3 ;


@end


#endif