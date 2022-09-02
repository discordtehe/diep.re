// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCFLIPY_H
#define CCFLIPY_H



@class CCActionInstant;

@interface CCFlipY : CCActionInstant {
    BOOL _flipY;
}




-(id)initWithFlipY:(BOOL)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(id)reverse;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)actionWithFlipY:(BOOL)arg0 ;


@end


#endif