// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSURLSESSIONDATATASK_H
#define CLSURLSESSIONDATATASK_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class CLSURLSessionTask;
@protocol NSURLConnectionDelegate;

@interface CLSURLSessionDataTask : CLSURLSessionTask <NSURLConnectionDelegate>

 {
    NSMutableData *_data;
}


@property (retain, nonatomic) NSURLConnection *connection; // ivar: _connection
@property (copy, nonatomic) id *completionHandler; // ivar: _completionHandler
@property (copy, nonatomic) NSString *taskDescription; // ivar: _taskDescription
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)resume;
-(void)complete;
-(void)cancel;
-(void)connection:(id)arg0 didReceiveResponse:(id)arg1 ;
-(void)connection:(id)arg0 didReceiveData:(id)arg1 ;
-(void)connection:(id)arg0 didFailWithError:(id)arg1 ;
-(void)connectionDidFinishLoading:(id)arg0 ;


@end


#endif