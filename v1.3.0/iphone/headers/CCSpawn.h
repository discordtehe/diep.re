// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSPAWN_H
#define CCSPAWN_H



@class CCActionInterval;
@class CCFiniteTimeAction;
@protocol NSCopying;

@interface CCSpawn : CCActionInterval <NSCopying>

 {
    CCFiniteTimeAction *_one;
    CCFiniteTimeAction *_two;
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