// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMENUINPUTFORWARDER_H
#define CCMENUINPUTFORWARDER_H



@class CCMenu;

@interface CCMenuInputForwarder : CCMenu

@property (nonatomic) id *forwardTarget; // ivar: mForwardTarget
@property (readonly, nonatomic) BOOL releasedTouch; // ivar: mReleasedTouch


-(void)ccTouchMoved:(id)arg0 withEvent:(id)arg1 ;
-(BOOL)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchCancelled:(id)arg0 withEvent:(id)arg1 ;


@end


#endif