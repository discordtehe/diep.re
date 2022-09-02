// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADRESOURCEBUFFER_H
#define GADRESOURCEBUFFER_H

@class NSURLSessionDataTask;
@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADURLSessionTransaction;
@protocol NSURLSessionDataDelegate;

@interface GADResourceBuffer : NSObject <NSURLSessionDataDelegate>

 {
    BOOL _removeFileOnDealloc;
    NSOperationQueue *_operationQueue;
    NSURLSession *_session;
    NSURLSessionDataTask *_dataTask;
    GADURLSessionTransaction *_transaction;
    BOOL _completed;
    NSObject<OS_dispatch_queue> *_lockQueue;
    CGFloat _bufferingStartTimeIntervalSinceBoot;
    NSUInteger _bufferedContentSize;
    NSDictionary *_responseHeaders;
    BOOL _valid;
    NSInteger _maxBytes;
    BOOL _responseHeadersReceived;
    BOOL _started;
    NSMutableSet *_notifyBytesObservers;
    NSObject<OS_dispatch_queue> *_fileReadWriteQueue;
}


@property (readonly, nonatomic) NSURLRequest *request; // ivar: _request
@property (readonly, nonatomic) NSURL *fileURL; // ivar: _fileURL
@property (readonly, copy) NSDictionary *responseHeaders;
@property (readonly) BOOL started;
@property (readonly) BOOL valid;
@property (readonly) BOOL responseHeadersReceived;
@property (readonly) BOOL completed;
@property (readonly, copy) NSString *contentType; // ivar: _contentType
@property (readonly) NSInteger contentLength; // ivar: _contentLength
@property NSInteger maxBytes;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)commonInitWithRequest:(id)arg0 fileURL:(id)arg1 removeFileOnDealloc:(BOOL)arg2 ;
-(id)initWithRequest:(id)arg0 fileURL:(id)arg1 contentType:(id)arg2 contentLength:(NSInteger)arg3 removeFileOnDealloc:(BOOL)arg4 ;
-(id)initWithRequest:(id)arg0 fileURL:(id)arg1 removeFileOnDealloc:(BOOL)arg2 ;
-(void)dealloc;
-(id)dataWithRange:(struct _NSRange )arg0 error:(*id)arg1 ;
-(void)start;
-(void)cancelWithError:(id)arg0 ;
-(NSUInteger)bufferedContentSize;
-(CGFloat)networkSpeedInBytesPerSecond;
-(void)addObserverForNotifyBytes:(NSUInteger)arg0 toCollection:(id)arg1 queue:(id)arg2 usingBlock:(id)arg3 ;
-(void)notifyObserversWaitingForNotifyBytes;
-(void)finishWithError:(id)arg0 ;
-(void)reset;
-(void)URLSession:(id)arg0 dataTask:(id)arg1 didReceiveResponse:(id)arg2 completionHandler:(id)arg3 ;
-(void)URLSession:(id)arg0 dataTask:(id)arg1 didReceiveData:(id)arg2 ;
-(void)URLSession:(id)arg0 task:(id)arg1 didCompleteWithError:(id)arg2 ;


@end


#endif