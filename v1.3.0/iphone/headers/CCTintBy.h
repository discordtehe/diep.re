// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTINTBY_H
#define CCTINTBY_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCTintBy : CCActionInterval <NSCopying>

 {
    short _deltaR;
    short _deltaG;
    short _deltaB;
    short _fromR;
    short _fromG;
    short _fromB;
}




-(id)initWithDuration:(CGFloat)arg0 red:(short)arg1 green:(short)arg2 blue:(short)arg3 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(id)reverse;
+(id)actionWithDuration:(CGFloat)arg0 red:(short)arg1 green:(short)arg2 blue:(short)arg3 ;


@end


#endif