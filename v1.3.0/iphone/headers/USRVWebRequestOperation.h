// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVWEBREQUESTOPERATION_H
#define USRVWEBREQUESTOPERATION_H


#import <Foundation/Foundation.h>

@class USRVWebRequest;

@interface USRVWebRequestOperation : NSOperation

@property (retain, nonatomic) USRVWebRequest *request; // ivar: _request
@property (copy, nonatomic) id *completeBlock; // ivar: _completeBlock


// -(id)initWithUrl:(id)arg0 requestType:(id)arg1 headers:(id)arg2 body:(id)arg3 completeBlock:(id)arg4 connectTimeout:(unk)arg5  ;
-(void)main;
-(void)startObserving;
-(void)stopObserving;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;


@end


#endif