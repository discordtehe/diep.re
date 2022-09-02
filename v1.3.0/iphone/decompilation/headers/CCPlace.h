// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCPLACE_H
#define CCPLACE_H



@class CCActionInstant;
@protocol NSCopying;

@interface CCPlace : CCActionInstant <NSCopying>

 {
    CGPoint _position;
}




-(id)initWithPosition:(struct CGPoint )arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithPosition:(struct CGPoint )arg0 ;


@end


#endif