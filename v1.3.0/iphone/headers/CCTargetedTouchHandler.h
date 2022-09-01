// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTARGETEDTOUCHHANDLER_H
#define CCTARGETEDTOUCHHANDLER_H


#import <CoreFoundation/CoreFoundation.h>

@class CCTouchHandler;

@interface CCTargetedTouchHandler : CCTouchHandler

@property (nonatomic) BOOL swallowsTouches; // ivar: _swallowsTouches
@property (readonly, nonatomic) NSMutableSet *claimedTouches; // ivar: _claimedTouches


-(id)initWithDelegate:(id)arg0 priority:(NSInteger)arg1 swallowsTouches:(BOOL)arg2 ;
-(void)dealloc;
+(id)handlerWithDelegate:(id)arg0 priority:(NSInteger)arg1 swallowsTouches:(BOOL)arg2 ;


@end


#endif