// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCTOUCHMOVE_H
#define MCTOUCHMOVE_H


#import <Foundation/Foundation.h>


@interface MCTouchMove : NSObject

@property (readonly, nonatomic) CGPoint touchPoint; // ivar: mTouchPoint
@property (readonly, nonatomic) CGPoint previousTouchPoint; // ivar: mPreviousTouchPoint
@property (nonatomic) CGFloat timeStamp; // ivar: mTimeStamp


-(id)initWithTouch:(id)arg0 ;
-(void)dealloc;


@end


#endif