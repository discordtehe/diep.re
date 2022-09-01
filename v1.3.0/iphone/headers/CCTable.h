// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTABLE_H
#define CCTABLE_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class CCMenu;
@class TableEntry;
@class Callback;
@protocol TestableCCItem;

@interface CCTable : CCMenu <TestableCCItem>

 {
    NSMutableArray *mTableEntryList;
    NSMutableDictionary *mTagDictionary;
    NSMutableDictionary *mTableEntryDictionary;
    CGPoint mOriginalBasePosition;
    CGPoint mCellOffset;
    float mCellOffsetDistance;
    CGPoint mCurrentViewOffset;
    float mCurrentViewOffsetDistance;
    CGPoint mStartPoint;
    CGPoint mStartPivotPoint;
    CGPoint mEndPoint;
    float mVisibleGridLength;
    float mVisibleGridCappedDistance;
    float mBaseGridOffset;
    float mBaseGridOffsetDistance;
    float mSpringGridOffset;
    float mSpringGridOffsetDistance;
    float mSpringStartDistance;
    float mSpringEndDistance;
    BOOL mSpringNeeded;
    BOOL mIsOnSpring;
    float mSpringPenetration;
    float mDragFallOffMultiplier;
    int mMovementType;
    float mMovementTotalTime;
    float mMovementCurrentTime;
    float mMovementStartDistance;
    float mMovementEndDistance;
    int mStartVisibleIndex;
    int mEndVisibleIndex;
    BOOL mClip;
    BOOL mIsCircular;
    float mCircularRadius;
    id *mSnapProgressCallbackTarget;
    SEL mSnapProgressCallbackSelector;
    *unk mSnapProgressCallback;
    id *mSpringProgressCallbackTarget;
    SEL mSpringProgressCallbackSelector;
    *unk mSpringProgressCallback;
    id *mDragFallOffProgressCallbackTarget;
    SEL mDragFallOffProgressCallbackSelector;
    *unk mDragFallOffProgressCallback;
    NSMutableArray *mCurrentTouches;
    unsigned int mNumCurrentTouches;
    CGPoint mPreviousTouchPoint;
    CGPoint mPrevious2TouchPoint;
    float mTouchMovementAccum;
    BOOL mValidTap;
    BOOL mInputOnTable;
    TableEntry *mSelectedTableEntry;
    TableEntry *mDragEntry;
    int mDragEntryIndex;
    int mDragEntryZ;
    CGPoint mDragPreviousPoint;
    NSMutableDictionary *mDragActions;
    int mSpringForceDirection;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) Callback *cellActivatedCallback; // ivar: mCellActivatedCallback
@property (readonly, nonatomic) Callback *viewChangedCallback; // ivar: mViewOffsetCallback
@property (readonly, nonatomic) Callback *dragSwitchCallback; // ivar: mDragSwitchCallback
@property (nonatomic) BOOL enabled; // ivar: mEnabled
@property (nonatomic) BOOL dragMode; // ivar: mDragMode
@property (nonatomic) CGRect pickRect; // ivar: mPickRect
@property (nonatomic) CGRect cellPickRect; // ivar: mCellPickRect
@property (nonatomic) CGRect clipRect; // ivar: mClipRect
@property (nonatomic) BOOL snapEnabled; // ivar: mSnapEnabled
@property (nonatomic) float snapTime; // ivar: mSnapTime
@property (nonatomic) unsigned int snapGranularity; // ivar: mSnapGranularity
@property (nonatomic) float springTime; // ivar: mSpringTime
@property (nonatomic) float springDragFactor; // ivar: mSpringDragFactor
@property (nonatomic) float dragFallOff; // ivar: mDragFallOff
@property (nonatomic) float maxGridFallOff; // ivar: mMaxGridFallOff
@property (nonatomic) float fallOffMultiplier; // ivar: mFallOffMultiplier
@property (nonatomic) float fallOffTimeFactor; // ivar: mFallOffTimeFactor
@property (nonatomic) BOOL keepAllCellsLoaded; // ivar: mKeepAllCellsLoaded
@property (nonatomic) BOOL keepDisabledCellsVisible; // ivar: mKeepDisabledCellsVisible
@property (nonatomic) unsigned int extraCellsToKeepLoadedOffset; // ivar: mExtraCellsToKeepLoadedOffset
@property (nonatomic) BOOL showStateChangeOnSelectedCell; // ivar: mShowStateChangeOnSelectedCell
@property (nonatomic) BOOL blockDragInsideTolerance; // ivar: mBlockDragInsideTolerance
@property (nonatomic) float tapTolerance; // ivar: mTapTolerance
@property (nonatomic) float scrollHandleMaxCompression; // ivar: mScrollHandleMaxCompression
@property (readonly, nonatomic) float visibleGridDistance; // ivar: mVisibleGridDistance
@property (readonly, nonatomic) float currentScrollProgress; // ivar: mCurrentScrollProgress
@property (readonly, nonatomic) float currentScrollHandleRecommendedSize; // ivar: mCurrentScrollHandleRecommendedSize
@property (readonly, nonatomic) BOOL shouldShowNextButton; // ivar: mShouldShowNextButton
@property (readonly, nonatomic) BOOL shouldShowPreviousButton; // ivar: mShouldShowPreviousButton
@property (readonly, nonatomic) BOOL shouldShowScrollBar; // ivar: mShouldShowScrollBar
@property (readonly, nonatomic) int tableState;
@property (readonly) CGSize cellSize; // ivar: mCellSize
@property (nonatomic) BOOL scrollableTable; // ivar: mScrollableTable
@property (nonatomic) BOOL buttonsHavePriorityOverCells; // ivar: mButtonsHavePriorityOverCells


-(void)simulateDragHorizontal:(float)arg0 ;
-(void)simulateDragVertical:(float)arg0 ;
-(id)getAllItems;
-(id)init;
-(id)initWithItems:(id)arg0 vaList:(char *)arg1 ;
-(id)init:(struct CGPoint )arg0 numVisibleItems:(float)arg1 cellSize:(struct CGSize )arg2 ;
-(id)init:(struct CGPoint )arg0 numVisibleItems:(float)arg1 cellSize:(struct CGSize )arg2 direction:(int)arg3 itemOffset:(float)arg4 ;
-(id)init:(struct CGPoint )arg0 numVisibleItems:(float)arg1 cellSize:(struct CGSize )arg2 direction:(int)arg3 itemOffset:(float)arg4 springOffset:(float)arg5 ;
-(id)init:(float)arg0 startPoint:(struct CGPoint )arg1 gridCellOffset:(struct CGPoint )arg2 baseGridOffset:(float)arg3 springGridOffset:(float)arg4 ;
-(void)setSpringOffset:(float)arg0 ;
-(void)dealloc;
-(void)onEnterTransitionDidFinish;
-(void)onExitTransitionDidStart;
-(void)setTouchEnabled:(BOOL)arg0 ;
-(void)enableScroll;
-(void)disableScroll;
-(void)removePickRect;
-(void)removeCellPickRect;
-(void)addCellItem:(id)arg0 tag:(id)arg1 refresh:(BOOL)arg2 index:(int)arg3 ;
-(void)removeCellItem:(id)arg0 ;
-(void)addCellItem:(id)arg0 ;
-(void)addCellItem:(id)arg0 index:(int)arg1 ;
-(void)addCellItem:(id)arg0 tag:(id)arg1 ;
-(void)addCellItem:(id)arg0 tag:(id)arg1 refresh:(BOOL)arg2 ;
-(void)removeAllCellItems;
-(struct CGPoint )getCellPositionByIndex:(unsigned int)arg0 ;
-(id)getCellItemByIndex:(unsigned int)arg0 ;
-(id)getCellItemByTag:(id)arg0 ;
-(unsigned int)getNumElements;
-(unsigned int)getNumElementsExcludingHidden;
-(float)getCurrentGridOffset;
-(BOOL)setViewPositionByDistance:(float)arg0 ;
-(BOOL)setViewPositionByGridOffset:(float)arg0 ;
-(void)snapToCellItem:(id)arg0 ;
-(id)getCellForCurrentOffset;
-(void)refresh;
-(BOOL)applyViewOffset:(struct CGPoint )arg0 ;
-(BOOL)applyViewOffset:(struct CGPoint )arg0 scaleFactor:(float)arg1 ;
-(void)unloadAllCells;
-(void)setCircularAspectWithRadius:(float)arg0 ;
-(void)removeClipRect;
-(void)visit;
-(float)defaultSnapProgressCallback:(float)arg0 ;
-(float)defaultSpringProgressCallback:(float)arg0 ;
-(float)defaultDragFallOffProgressCallback:(float)arg0 ;
-(float)defaultBouncySnapProgressCallback:(float)arg0 ;
-(float)defaultBouncySpringProgressCallback:(float)arg0 ;
-(float)defaultBouncyDragFallOffProgressCallback:(float)arg0 ;
-(void)setSnapProgressCallback:(id)arg0 selector:(SEL)arg1 ;
-(void)setSpringProgressCallback:(id)arg0 selector:(SEL)arg1 ;
-(void)setDefaultSnapProgressCallback;
-(void)setDefaultSpringProgressCallback;
-(void)setDefaultDragFallOffProgressCallback;
-(void)setDefaultBouncySnapProgressCallback;
-(void)setDefaultBouncySpringProgressCallback;
-(void)setDefaultBouncyDragFallOffProgressCallback;
-(void)update:(CGFloat)arg0 ;
-(void)reEnableButtons;
-(void)stopMovement;
-(BOOL)snapStart;
-(BOOL)springStart;
-(BOOL)dragFallOffStart:(struct CGPoint )arg0 ;
-(BOOL)isAnimatingMovement;
-(void)offsetCells:(int)arg0 ;
-(void)nextCells;
-(void)previousCells;
-(id)tableEntryForTouchLocation:(struct CGPoint )arg0 ;
-(id)itemForTouchLocation:(struct CGPoint )arg0 ;
-(BOOL)isTouchInsidePickRect:(id)arg0 ;
-(void)cleanInputData;
-(BOOL)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ignoreCells:(BOOL)arg2 ignoreMenuItems:(BOOL)arg3 ;
-(void)startDrag:(id)arg0 ;
-(void)stopDrag;
-(void)cellFinishedDrag;
-(void)cellFinishedMove:(id)arg0 ;
-(BOOL)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchMoved:(id)arg0 withEvent:(id)arg1 allowApplyViewOffset:(BOOL)arg2 ;
-(void)ccTouchMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchCancelled:(id)arg0 withEvent:(id)arg1 ;
-(BOOL)isDragging;


@end


#endif