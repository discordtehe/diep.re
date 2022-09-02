// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCRESIZETO_H
#define CCRESIZETO_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCResizeTo : CCActionInterval <NSCopying>

 {
    CGSize _startSize;
    CGSize _targetSize;
}




-(id)initWithDuration:(CGFloat)arg0 targetWidth:(float)arg1 targetHeight:(float)arg2 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithDuration:(CGFloat)arg0 targetWidth:(float)arg1 targetHeight:(float)arg2 ;


@end


#endif