// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVCACHEOPERATION_H
#define USRVCACHEOPERATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class USRVWebRequest;

@interface USRVCacheOperation : NSOperation

@property (retain, nonatomic) NSString *source; // ivar: _source
@property (retain, nonatomic) NSString *target; // ivar: _target
@property (nonatomic) int connectTimeout; // ivar: _connectTimeout
@property (nonatomic) int progressEventInterval; // ivar: _progressEventInterval
@property (nonatomic) id *progressTimer; // ivar: _progressTimer
@property (nonatomic) NSInteger lastProgressEvent; // ivar: _lastProgressEvent
@property (nonatomic) NSInteger expectedContentSize; // ivar: _expectedContentSize
@property (retain, nonatomic) USRVWebRequest *request; // ivar: _request
@property (retain, nonatomic) NSDictionary *headers; // ivar: _headers
@property (nonatomic) BOOL append; // ivar: _append


-(id)initWithSource:(id)arg0 target:(id)arg1 connectTimeout:(int)arg2 headers:(id)arg3 append:(BOOL)arg4 ;
-(void)main;
-(void)startObserving;
-(void)stopObserving;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;


@end


#endif