// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCSCROLLBAR_H
#define MCSCROLLBAR_H


#import <Foundation/Foundation.h>

@class CCNodeRGBA;
@class CCTable;
@class MCMenuItemNodeRGBAStatic;
@class CCMenu;
@class CCMenuItemSprite;
@class HorizontalStretchFrame;
@protocol CCMenuItemExtendedInputProtocol;

@interface MCScrollBar : CCNodeRGBA <CCMenuItemExtendedInputProtocol>

 {
    CCTable *mTable;
    MCMenuItemNodeRGBAStatic *mScrollbarFrameButton;
    CCMenu *mArrowsMenu;
    CCMenuItemSprite *mArrow1;
    CCMenuItemSprite *mArrow2;
    HorizontalStretchFrame *mScrollbarFrame;
    float mScrollbarFrameLength;
    float mScrollbarFrameWidth;
    HorizontalStretchFrame *mScrollbarHandle;
    float mScrollbarHandleLength;
    float mScrollbarHandleWidth;
    CGPoint mScrollbarPosition;
    CGPoint mScrollbarOrientation;
    float mScrollbarRotation;
    float mCurrentProgress;
    float mNewProgress;
    BOOL mInteractiveScrollBar;
    CGSize mForcedCellSize;
    CGSize mCellSize;
}


@property (readonly) CCMenu *menu; // ivar: mMenu
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithScrollHandlePlistName:(id)arg0 scrollHandleFrameName:(id)arg1 handleLengthPercent:(float)arg2 handleLeftMargin:(float)arg3 handleRightMargin:(float)arg4 handleWidth:(float)arg5 scrollFramePlistName:(id)arg6 scrollFrameFrameName:(id)arg7 frameLength:(float)arg8 frameLeftMargin:(float)arg9 frameRightMargin:(float)arg10 frameWidth:(float)arg11 position:(struct CGPoint )arg12 orientation:(struct CGPoint )arg13 ;
-(void)scaleScrollbarActiveAreaWithXScale:(float)arg0 withYScale:(float)arg1 ;
-(void)scrollCallback:(float)arg0 ;
-(void)scrollCallback:(float)arg0 andUpdateLength:(float)arg1 ;
-(void)updateHandleLength:(float)arg0 ;
-(void)setInteractiveScrollBar:(id)arg0 arrow1Sprite:(id)arg1 arrow2Sprite:(id)arg2 withCellSize:(struct CGSize )arg3 ;
-(void)setInteractiveScrollBar:(id)arg0 arrow1Sprite:(id)arg1 arrow2Sprite:(id)arg2 ;
-(float)calculateProgressIncrement;
-(void)pressedArrowUp;
-(void)pressedArrowDown;
-(void)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchCancelled:(id)arg0 withEvent:(id)arg1 ;
-(void)updateTableUsingScrollBarTouch:(id)arg0 ;
-(struct CGSize )calculateCellSize;
-(float)calculateNumVisibleElements;
-(void)updateTableToProgress;
-(void)fadeIn:(float)arg0 ;
-(void)fadeOut:(float)arg0 ;


@end


#endif