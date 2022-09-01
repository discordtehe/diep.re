// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCREPEATFOREVER_H
#define CCREPEATFOREVER_H



@class CCAction;
@class CCActionInterval;
@protocol NSCopying;

@interface CCRepeatForever : CCAction <NSCopying>



@property (retain, nonatomic) CCActionInterval *innerAction; // ivar: _innerAction


-(id)initWithAction:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)dealloc;
-(void)startWithTarget:(id)arg0 ;
-(void)step:(CGFloat)arg0 ;
-(BOOL)isDone;
-(id)reverse;
+(id)actionWithAction:(id)arg0 ;


@end


#endif