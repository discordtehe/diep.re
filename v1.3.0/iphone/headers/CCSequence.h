// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSEQUENCE_H
#define CCSEQUENCE_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCSequence : CCActionInterval <NSCopying>

 {
    CCFiniteTimeAction" _actions;
    CGFloat _split;
    int _last;
}




-(id)initOne:(id)arg0 two:(id)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)dealloc;
-(void)startWithTarget:(id)arg0 ;
-(void)stop;
-(void)update:(CGFloat)arg0 ;
-(id)reverse;
+(id)actionsWithArray:(id)arg0 ;
+(id)actions:(id)arg0 ;
+(id)actions:(id)arg0 vaList:(char *)arg1 ;
+(id)actionWithArray:(id)arg0 ;
+(id)actionOne:(id)arg0 two:(id)arg1 ;


@end


#endif