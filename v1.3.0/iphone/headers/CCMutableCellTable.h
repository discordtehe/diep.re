// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMUTABLECELLTABLE_H
#define CCMUTABLECELLTABLE_H


#import <CoreFoundation/CoreFoundation.h>

@class CCTable;

@interface CCMutableCellTable : CCTable {
    CGSize mVisibleArea;
    CGSize mOriginalVisibleArea;
    float mOriginalVisibleDistance;
    float mEffectsDistance;
    float mVisibleDistance;
    float mLastIndxDistance;
    float mFirstIndxDistance;
    float mLastIndxSpringDistance;
    float mFirstIndxSpringDistance;
    float mLastIndex;
    float mMaximumTableDistance;
    NSMutableArray *computedDistances;
    NSMutableArray *computedAreas;
    float _lastCellDistance;
    CGPoint mPoint;
    BOOL mForceBottomSnap;
    float mForceBottomSnapOffset;
}


@property (readonly) CGPoint visibleAreaOffset; // ivar: mVisibleAreaOffset
@property BOOL ignoreVerticalPosition; // ivar: _ignoreVerticalPosition
@property BOOL ignoreHorizontalPosition; // ivar: _ignoreHorizontalPosition


-(id)init:(struct CGPoint )arg0 numVisibleItems:(float)arg1 cellSize:(struct CGSize )arg2 ;
-(id)init:(struct CGPoint )arg0 numVisibleItems:(float)arg1 cellSize:(struct CGSize )arg2 direction:(int)arg3 itemOffset:(float)arg4 ;
-(id)init:(struct CGPoint )arg0 numVisibleItems:(float)arg1 cellSize:(struct CGSize )arg2 direction:(int)arg3 itemOffset:(float)arg4 springOffset:(float)arg5 ;
-(id)init:(struct CGPoint )arg0 cellSize:(struct CGSize )arg1 visibleArea:(struct CGSize )arg2 direction:(int)arg3 itemOffset:(float)arg4 effectsDistanceFraction:(float)arg5 visibleAreaOffset:(struct CGPoint )arg6 ;
-(id)init:(struct CGPoint )arg0 cellSize:(struct CGSize )arg1 visibleArea:(struct CGSize )arg2 direction:(int)arg3 itemOffset:(float)arg4 effectsDistanceFraction:(float)arg5 ;
-(id)init:(struct CGPoint )arg0 cellSize:(struct CGSize )arg1 visibleArea:(struct CGSize )arg2 direction:(int)arg3 itemOffset:(float)arg4 springOffset:(float)arg5 effectsDistanceFraction:(float)arg6 visibleAreaOffset:(struct CGPoint )arg7 ;
-(void)addCellItem:(id)arg0 tag:(id)arg1 refresh:(BOOL)arg2 index:(int)arg3 ;
-(void)removeCellItem:(id)arg0 ;
-(id)init:(struct CGSize )arg0 startPoint:(struct CGPoint )arg1 directionVector:(struct CGPoint )arg2 baseGridOffset:(float)arg3 springGridOffset:(float)arg4 effectsDistanceFraction:(float)arg5 visibleAreaOffset:(struct CGPoint )arg6 ;
-(struct CGPoint )getCellPositionByIndex:(unsigned int)arg0 ;
-(struct CGPoint )getComputedCellPositionByIndex:(unsigned int)arg0 ;
-(float)getCellDistanceByIndex:(unsigned int)arg0 ;
-(float)getCellDistanceWhenSnapped:(unsigned int)arg0 ;
-(float)getCurrentGridOffset;
-(float)getGridOffsetFor:(float)arg0 ;
-(BOOL)setViewPositionByDistance:(float)arg0 ;
-(void)snapToCellItem:(id)arg0 ;
-(struct CGPoint )getStartPoint;
-(struct CGPoint )getMPoint;
-(struct CGSize )getVisibleArea;
-(float)getMaximumTableDistance;
-(float)getDistanceOfVisibleObjects;
-(struct CGSize )getAreaOfVisibleObjects;
-(BOOL)applyViewOffset:(struct CGPoint )arg0 ;
-(BOOL)applyViewOffset:(struct CGPoint )arg0 reload:(BOOL)arg1 ;
-(BOOL)applyViewOffset:(struct CGPoint )arg0 scaleFactor:(float)arg1 ;
-(BOOL)applyViewOffset:(struct CGPoint )arg0 reload:(BOOL)arg1 scaleFactor:(float)arg2 ;
-(void)loadOperationsSinceIndex:(int)arg0 toIndex:(int)arg1 ;
-(void)update:(CGFloat)arg0 ;
-(void)forceBottomSnap:(float)arg0 ;
-(BOOL)snapStart;
-(BOOL)springStart;
-(BOOL)dragFallOffStart:(struct CGPoint )arg0 ;
-(void)offsetCells:(int)arg0 ;
-(void)stopMovement;
-(void)computeDistances;
-(NSUInteger)length;
-(void)refresh;
-(void)dealloc;


@end


#endif