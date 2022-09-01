// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISPUBLISHERLOGGER_H
#define ISPUBLISHERLOGGER_H



@class ISLogger;
@protocol ISLogDelegate;

@interface ISPublisherLogger : ISLogger {
    id<ISLogDelegate> *logDelegate;
}




-(id)initWithDelegate:(id)arg0 level:(int)arg1 ;
-(void)log:(id)arg0 level:(int)arg1 tag:(int)arg2 ;


@end


#endif