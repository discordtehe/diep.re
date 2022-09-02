// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCBSETSPRITEFRAME_H
#define CCBSETSPRITEFRAME_H



@class CCActionInstant;
@class CCSpriteFrame;
@protocol NSCopying;

@interface CCBSetSpriteFrame : CCActionInstant <NSCopying>

 {
    CCSpriteFrame *spriteFrame;
}




-(id)initWithSpriteFrame:(id)arg0 ;
-(void)dealloc;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithSpriteFrame:(id)arg0 ;


@end


#endif