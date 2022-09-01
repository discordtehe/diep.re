// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CUSTOMACTION_H
#define CUSTOMACTION_H



@class CCActionInterval;

@interface CustomAction : CCActionInterval {
    id *mTarget;
    SEL mUpdate;
}




-(id)initWithDuration:(CGFloat)arg0 update:(SEL)arg1 target:(id)arg2 ;
-(void)dealloc;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithDuration:(CGFloat)arg0 update:(SEL)arg1 target:(id)arg2 ;


@end


#endif