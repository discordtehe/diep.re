// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCMENUITEMTOGGLESWIPE_H
#define MCMENUITEMTOGGLESWIPE_H


#import <Foundation/Foundation.h>

@class MCToggle;
@protocol CCTouchOneByOneDelegate;

@interface MCMenuItemToggleSwipe : MCToggle <CCTouchOneByOneDelegate>

 {
    BOOL mHasTouch;
    BOOL mSwipeMode;
    BOOL mCanActivate;
    NSUInteger mInitialState;
    CGPoint mInitialPoint;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithItems:(id)arg0 block:(id)arg1 ;
-(void)onEnter;
-(void)onExit;
-(void)onTouched:(struct CGPoint )arg0 ;
-(void)onRelease;
-(void)onMoved:(struct CGPoint )arg0 ;
-(void)activate;
-(struct CGRect )activeArea;
-(BOOL)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchCancelled:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)revertToInitalState;
-(BOOL)touchOverLapsRect:(id)arg0 area:(struct CGRect )arg1 ;


@end


#endif