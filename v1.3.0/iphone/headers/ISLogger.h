// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISLOGGER_H
#define ISLOGGER_H


#import <Foundation/Foundation.h>


@interface ISLogger : NSObject {
    int logLevel;
}




-(void)log:(id)arg0 level:(int)arg1 tag:(int)arg2 ;
-(id)initWithLevel:(int)arg0 ;
-(void)setLogLevel:(int)arg0 ;
-(int)getLogLevel;
-(id)loggerTagToString:(int)arg0 ;


@end


#endif