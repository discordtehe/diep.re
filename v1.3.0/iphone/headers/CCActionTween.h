// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCACTIONTWEEN_H
#define CCACTIONTWEEN_H


#import <Foundation/Foundation.h>

@class CCActionInterval;

@interface CCActionTween : CCActionInterval {
    NSString *_key;
    float _from;
    float _to;
    float _delta;
}




-(id)initWithDuration:(CGFloat)arg0 key:(id)arg1 from:(float)arg2 to:(float)arg3 ;
-(void)dealloc;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(id)reverse;
+(id)actionWithDuration:(CGFloat)arg0 key:(id)arg1 from:(float)arg2 to:(float)arg3 ;


@end


#endif