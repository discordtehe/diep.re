// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCTOUCH_H
#define MCTOUCH_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface MCTouch : NSObject {
    CGPoint _locationInWindow;
    CGPoint _previousLocationInWindow;
    CGPoint _firstLocationInWindow;
    ? _touchFlags;
}


@property (readonly, nonatomic) UIView *view; // ivar: _view
@property (readonly, nonatomic) CGFloat timestamp; // ivar: _timestamp
@property (readonly, nonatomic) CGFloat startTimeStamp; // ivar: _startTimeStamp
@property (readonly, nonatomic) NSInteger phase; // ivar: _phase
@property (readonly, nonatomic) NSUInteger tapCount; // ivar: _tapCount


-(struct CGPoint )locationInView:(id)arg0 ;
-(struct CGPoint )previousLocationInView:(id)arg0 ;
-(struct CGPoint )firstLocationInView:(id)arg0 ;
-(void)setLocationInWindow:(struct CGPoint )arg0 ;
-(void)buildTouch:(int)arg0 location:(struct CGPoint )arg1 tapCount:(int)arg2 view:(id)arg3 ;


@end


#endif