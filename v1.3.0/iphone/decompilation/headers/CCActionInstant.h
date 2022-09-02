// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCACTIONINSTANT_H
#define CCACTIONINSTANT_H



@class CCFiniteTimeAction;
@protocol NSCopying;

@interface CCActionInstant : CCFiniteTimeAction <NSCopying>





-(id)init;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(BOOL)isDone;
-(void)step:(CGFloat)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(id)reverse;


@end


#endif