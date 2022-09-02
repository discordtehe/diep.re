// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTINTTO_H
#define CCTINTTO_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCTintTo : CCActionInterval <NSCopying>

 {
    _ccColorThreeB _to;
    _ccColorThreeB _from;
}




-(id)initWithDuration:(CGFloat)arg0 red:(unsigned char)arg1 green:(unsigned char)arg2 blue:(unsigned char)arg3 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithDuration:(CGFloat)arg0 red:(unsigned char)arg1 green:(unsigned char)arg2 blue:(unsigned char)arg3 ;


@end


#endif