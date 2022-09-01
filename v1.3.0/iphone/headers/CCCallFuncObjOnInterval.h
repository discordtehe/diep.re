// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCCALLFUNCOBJONINTERVAL_H
#define CCCALLFUNCOBJONINTERVAL_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCCallFuncObjOnInterval : CCActionInterval <NSCopying>

 {
    id *targetCallback_;
    SEL selector_;
    id *object_;
    *unk callbackMethod_;
}




-(id)initWithDuration:(CGFloat)arg0 target:(id)arg1 selector:(SEL)arg2 object:(id)arg3 ;
-(void)dealloc;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithDuration:(CGFloat)arg0 target:(id)arg1 selector:(SEL)arg2 object:(id)arg3 ;


@end


#endif