// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCGRIDACTION_H
#define CCGRIDACTION_H



@class CCActionInterval;

@interface CCGridAction : CCActionInterval

@property (nonatomic) CGSize gridSize; // ivar: _gridSize


-(id)initWithSize:(struct CGSize )arg0 duration:(CGFloat)arg1 ;
-(id)initWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 ;
-(void)startWithTarget:(id)arg0 ;
-(id)grid;
-(id)reverse;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)actionWithSize:(struct CGSize )arg0 duration:(CGFloat)arg1 ;
+(id)actionWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 ;


@end


#endif