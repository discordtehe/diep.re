// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCTEXTFIELD_H
#define MCTEXTFIELD_H


#import <UIKit/UIKit.h>


@interface MCTextField : UITextField

@property (nonatomic) BOOL disablePaste; // ivar: _disablePaste
@property (nonatomic) BOOL disableCursorChangedCallbacks; // ivar: _disableCursorChangedCallbacks


-(id)positionFromPosition:(id)arg0 inDirection:(NSInteger)arg1 offset:(NSInteger)arg2 ;
-(void)cursorChangedToPositionDelayedCallback:(id)arg0 ;
-(BOOL)canPerformAction:(SEL)arg0 withSender:(id)arg1 ;


@end


#endif