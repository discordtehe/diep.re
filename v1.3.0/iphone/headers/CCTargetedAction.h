// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTARGETEDACTION_H
#define CCTARGETEDACTION_H



@class CCActionInterval;
@class CCFiniteTimeAction;
@protocol NSCopying;

@interface CCTargetedAction : CCActionInterval <NSCopying>

 {
    CCFiniteTimeAction *_action;
}


@property (retain, nonatomic) id *forcedTarget; // ivar: _forcedTarget


-(id)initWithTarget:(id)arg0 action:(id)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)dealloc;
-(void)startWithTarget:(id)arg0 ;
-(void)stop;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithTarget:(id)arg0 action:(id)arg1 ;


@end


#endif