// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADTOUCHGESTURERECOGNIZER_H
#define GADTOUCHGESTURERECOGNIZER_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADTouchGestureRecognizer : UIGestureRecognizer

@property (readonly, nonatomic) NSDate *lastTouchTimestamp; // ivar: _lastTouchTimestamp
@property (readonly, nonatomic) NSDate *lastTouchBeginTimestamp; // ivar: _lastTouchBeginTimestamp


-(void)touchesBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesCancelled:(id)arg0 withEvent:(id)arg1 ;


@end


#endif