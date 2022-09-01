// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCFLIPX_H
#define CCFLIPX_H



@class CCActionInstant;

@interface CCFlipX : CCActionInstant {
    BOOL _flipX;
}




-(id)initWithFlipX:(BOOL)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(id)reverse;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)actionWithFlipX:(BOOL)arg0 ;


@end


#endif