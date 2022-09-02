// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPSTREAMADPLACEMENTDATA_H
#define MPSTREAMADPLACEMENTDATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MPStreamAdPlacementData : NSObject

@property (retain, nonatomic) NSMutableDictionary *desiredOriginalPositions; // ivar: _desiredOriginalPositions
@property (retain, nonatomic) NSMutableDictionary *desiredInsertionPositions; // ivar: _desiredInsertionPositions
@property (retain, nonatomic) NSMutableDictionary *originalAdIndexPaths; // ivar: _originalAdIndexPaths
@property (retain, nonatomic) NSMutableDictionary *adjustedAdIndexPaths; // ivar: _adjustedAdIndexPaths
@property (retain, nonatomic) NSMutableDictionary *adDataObjects; // ivar: _adDataObjects


-(id)initWithPositioning:(id)arg0 ;
-(id)positioningArrayForSection:(NSUInteger)arg0 inDictionary:(id)arg1 ;
-(void)initializeDesiredPositionsFromPositioning:(id)arg0 ;
-(void)insertDesiredPositionsForIndexPath:(id)arg0 ;
-(NSUInteger)adjustedNumberOfItems:(NSUInteger)arg0 inSection:(NSUInteger)arg1 ;
-(id)adjustedIndexPathForOriginalIndexPath:(id)arg0 ;
-(id)originalIndexPathForAdjustedIndexPath:(id)arg0 ;
-(id)nextAdInsertionIndexPathForAdjustedIndexPath:(id)arg0 ;
-(id)previousAdInsertionIndexPathForAdjustedIndexPath:(id)arg0 ;
-(void)insertAdData:(id)arg0 atIndexPath:(id)arg1 ;
-(id)adjustedAdIndexPathsInAdjustedRange:(struct _NSRange )arg0 inSection:(NSInteger)arg1 ;
-(void)clearAdsInAdjustedRange:(struct _NSRange )arg0 inSection:(NSInteger)arg1 ;
-(BOOL)isAdAtAdjustedIndexPath:(id)arg0 ;
-(id)adjustedIndexPathsWithAdsInSection:(NSUInteger)arg0 ;
-(id)adDataAtAdjustedIndexPath:(id)arg0 ;
-(void)insertSections:(id)arg0 ;
-(void)deleteSections:(id)arg0 ;
-(void)moveSection:(NSInteger)arg0 toSection:(NSInteger)arg1 ;
-(void)insertItemsAtIndexPaths:(id)arg0 ;
-(void)deleteItemsAtIndexPaths:(id)arg0 ;
-(void)moveItemAtIndexPath:(id)arg0 toIndexPath:(id)arg1 ;
-(NSUInteger)indexOfIndexPath:(id)arg0 inSortedArray:(id)arg1 options:(NSUInteger)arg2 ;
-(void)incrementDesiredIndexPathsAtIndex:(NSUInteger)arg0 inSection:(NSUInteger)arg1 ;
-(void)incrementPlacedIndexPathsAtIndex:(NSUInteger)arg0 inSection:(NSUInteger)arg1 ;
-(void)decrementDesiredIndexPathsAtIndex:(NSUInteger)arg0 inSection:(NSUInteger)arg1 ;
-(void)decrementPlacedIndexPathsAtIndex:(NSUInteger)arg0 inSection:(NSUInteger)arg1 ;
-(NSUInteger)largestSectionIndexContainingAds;
-(void)copyPositioningArrayInDictionary:(id)arg0 atSection:(NSUInteger)arg1 toSection:(NSUInteger)arg2 ;
-(void)clearPositioningArraysInDictionariesAtSection:(NSUInteger)arg0 ;
-(void)moveAllPositioningArraysInDictionariesAtSection:(NSUInteger)arg0 toSection:(NSUInteger)arg1 ;
-(void)updateAllSectionsForPositioningArraysAtSection:(NSUInteger)arg0 ;
-(void)updateSectionForPositioningArray:(id)arg0 toSection:(NSUInteger)arg1 ;


@end


#endif