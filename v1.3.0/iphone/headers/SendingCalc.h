// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SENDINGCALC_H
#define SENDINGCALC_H


#import <Foundation/Foundation.h>

@class ISServerLogger;

@interface SendingCalc : NSObject {
    int DEFAULT_SIZE;
    int DEFAULT_TIME;
    int DEFAULT_DEBUG_LEVEL;
    ISServerLogger *serverLogger;
}




-(id)initWithLogger:(id)arg0 ;
-(void)notifyEvent:(int)arg0 val:(int)arg1 ;
-(BOOL)calc:(int)arg0 val:(int)arg1 ;


@end


#endif