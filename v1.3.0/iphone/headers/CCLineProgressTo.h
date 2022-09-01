// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCLINEPROGRESSTO_H
#define CCLINEPROGRESSTO_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCLineProgressTo : CCActionInterval <NSCopying>

 {
    float to_;
    float from_;
}




-(id)initWithDuration:(CGFloat)arg0 progress:(float)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithDuration:(CGFloat)arg0 progress:(float)arg1 ;


@end


#endif