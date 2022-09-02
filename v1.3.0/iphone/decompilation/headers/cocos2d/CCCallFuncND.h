// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCCALLFUNCND_H
#define CCCALLFUNCND_H



@class CCCallFuncN;

@interface CCCallFuncND : CCCallFuncN {
    *void _data;
}


@property (nonatomic) *unk callbackMethod; // ivar: _callbackMethod


-(id)initWithTarget:(id)arg0 selector:(SEL)arg1 data:(*void)arg2 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)dealloc;
-(void)execute;
+(id)actionWithTarget:(id)arg0 selector:(SEL)arg1 data:(*void)arg2 ;


@end


#endif