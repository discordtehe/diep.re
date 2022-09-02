// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISSERVERLOGGER_H
#define ISSERVERLOGGER_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class ISLogger;
@class SendingCalc;

@interface ISServerLogger : ISLogger {
    NSMutableArray *logArray;
    NSOperationQueue *networkQueue;
    SendingCalc *sendingCalc;
}




-(id)initWithLevel:(int)arg0 queue:(id)arg1 ;
-(void)log:(id)arg0 level:(int)arg1 tag:(int)arg2 ;
-(void)send;
-(void)sendToServer:(id)arg0 ;
-(void)sendToServerAsync:(id)arg0 ;
-(void)connection:(id)arg0 didReceiveAuthenticationChallenge:(id)arg1 ;
-(void)connection:(id)arg0 didReceiveResponse:(id)arg1 ;
-(void)connection:(id)arg0 didReceiveData:(id)arg1 ;
-(void)connectionDidFinishLoading:(id)arg0 ;
-(void)connection:(id)arg0 didFailWithError:(id)arg1 ;


@end


#endif