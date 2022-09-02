// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CALLBACK_H
#define CALLBACK_H


#import <Foundation/Foundation.h>


@interface Callback : NSObject

@property (nonatomic) SEL selector; // ivar: mSelector
@property (retain, nonatomic) id *target; // ivar: mTarget
@property (retain, nonatomic) id *parameter; // ivar: mParameter


-(void)dealloc;
-(void)execute;
-(void)executeWithParameter:(id)arg0 ;
+(id)getCallback:(SEL)arg0 target:(id)arg1 parameter:(id)arg2 ;
+(id)getCallback;
+(id)callbackWithSelector:(SEL)arg0 target:(id)arg1 parameter:(id)arg2 ;


@end


#endif