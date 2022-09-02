// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCCALLFUNC_H
#define CCCALLFUNC_H



@class CCActionInstant;
@protocol NSCopying;

@interface CCCallFunc : CCActionInstant <NSCopying>

 {
    SEL _selector;
}


@property (retain, nonatomic) id *targetCallback; // ivar: _targetCallback


-(id)initWithTarget:(id)arg0 selector:(SEL)arg1 ;
-(id)description;
-(void)dealloc;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(void)execute;
+(id)actionWithTarget:(id)arg0 selector:(SEL)arg1 ;


@end


#endif