// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCEASEELASTIC_H
#define CCEASEELASTIC_H



@class CCActionEase;
@protocol NSCopying;

@interface CCEaseElastic : CCActionEase <NSCopying>



@property (nonatomic) float period; // ivar: _period


-(id)initWithAction:(id)arg0 ;
-(id)initWithAction:(id)arg0 period:(float)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)reverse;
+(id)actionWithAction:(id)arg0 ;
+(id)actionWithAction:(id)arg0 period:(float)arg1 ;


@end


#endif