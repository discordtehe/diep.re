// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCFORCEDURATION_H
#define CCFORCEDURATION_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCForceDuration : CCActionInterval <NSCopying>



@property (nonatomic) CGFloat timeScale; // ivar: timeScale_
@property (nonatomic) CCActionInterval *inner; // ivar: inner_


-(id)initWithDuration:(CGFloat)arg0 action:(id)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)dealloc;
-(void)update:(CGFloat)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)stop;
+(id)actionWithDuration:(CGFloat)arg0 action:(id)arg1 ;


@end


#endif