// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCCYCLETABLE_H
#define MCCYCLETABLE_H


#import <CoreFoundation/CoreFoundation.h>

@class CCTable;

@interface MCCycleTable : CCTable {
    NSArray *_itemsList;
    NSArray *_nodes;
    NSUInteger _numberOfNodes;
    BOOL _wrapping;
    BOOL _isScrolling;
    BOOL _initialized;
    float _previousOffset;
    float _defaultCyclePeriod;
}




-(id)initWithContentSize:(struct CGSize )arg0 items:(id)arg1 defaultCyclePeriod:(float)arg2 ;
-(void)dealloc;
-(void)leave;
-(void)ccTouchesBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchCancelled:(id)arg0 withEvent:(id)arg1 ;
-(void)update:(CGFloat)arg0 ;
-(id)getItems;
-(float)getCycleDurationOfCurrentItem;
-(void)tryWarp;
-(void)scrollCallback;
-(void)prepareListForSmoothScrolling:(id)arg0 ;
-(void)updateItems:(id)arg0 ;
-(void)snapToCellItem:(id)arg0 ;
-(void)deactivateItemsButtons;
-(void)activateItemsButtons;
-(void)restartMovingCaroussel;
-(void)startMovingCaroussel;
-(id)getScrollSequenceLeftToRight;
-(id)getScrollSequenceRightToLeft;
-(id)getScrollSequenceWithOrientation:(NSUInteger)arg0 ;
-(void)forceMoveCarousselRight;
-(void)forceMoveCarousselLeft;
-(void)forceMoveCaroussel:(NSUInteger)arg0 ;
-(void)stopMovingCaroussel;


@end


#endif