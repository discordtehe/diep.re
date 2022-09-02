// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRCONTEXTUALBUTTONVIEW_H
#define FRCONTEXTUALBUTTONVIEW_H


#import <UIKit/UIKit.h>


@interface FRContextualButtonView : UIView

@property (weak) id *target; // ivar: _target
@property (retain) id *normalView; // ivar: _normalView
@property (retain) id *clickedView; // ivar: _clickedView
@property SEL action; // ivar: _action
@property BOOL touchDown; // ivar: _touchDown


-(id)initWithFrame:(struct CGRect )arg0 button:(id)arg1 ;
-(void)addTarget:(id)arg0 action:(SEL)arg1 ;
-(void)touchesBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesCancelled:(id)arg0 withEvent:(id)arg1 ;


@end


#endif