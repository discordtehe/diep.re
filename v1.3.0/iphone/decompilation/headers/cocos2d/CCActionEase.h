// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCACTIONEASE_H
#define CCACTIONEASE_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCActionEase : CCActionInterval <NSCopying>



@property (readonly, nonatomic) CCActionInterval *inner; // ivar: _inner


-(id)initWithAction:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)dealloc;
-(void)startWithTarget:(id)arg0 ;
-(void)stop;
-(void)update:(CGFloat)arg0 ;
-(id)reverse;
+(id)actionWithAction:(id)arg0 ;


@end


#endif