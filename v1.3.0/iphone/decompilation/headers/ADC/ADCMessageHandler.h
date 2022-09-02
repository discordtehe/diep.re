// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCMESSAGEHANDLER_H
#define ADCMESSAGEHANDLER_H


#import <Foundation/Foundation.h>


@interface ADCMessageHandler : NSObject

@property (retain, nonatomic) id *target; // ivar: _target
@property (nonatomic) SEL selector; // ivar: _selector


-(id)initWithTarget:(id)arg0 selector:(SEL)arg1 ;
+(id)handlerWithTarget:(id)arg0 selector:(SEL)arg1 ;


@end


#endif