// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCMENUINPUTCALLBACK_H
#define MCMENUINPUTCALLBACK_H



@class CCMenu;

@interface MCMenuInputCallback : CCMenu

@property (nonatomic) id *callback; // ivar: _callback


-(void)ccTouchMoved:(id)arg0 withEvent:(id)arg1 ;
-(BOOL)ccTouchBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)ccTouchCancelled:(id)arg0 withEvent:(id)arg1 ;


@end


#endif