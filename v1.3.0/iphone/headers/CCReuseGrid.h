// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCREUSEGRID_H
#define CCREUSEGRID_H



@class CCActionInstant;

@interface CCReuseGrid : CCActionInstant {
    int _times;
}




-(id)initWithTimes:(int)arg0 ;
-(void)startWithTarget:(id)arg0 ;
+(id)actionWithTimes:(int)arg0 ;


@end


#endif