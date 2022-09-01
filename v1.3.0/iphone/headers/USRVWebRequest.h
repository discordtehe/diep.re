// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVWEBREQUEST_H
#define USRVWEBREQUEST_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSURLConnectionDelegate;

@interface USRVWebRequest : NSObject <NSURLConnectionDelegate>



@property (nonatomic) BOOL stubbed; // ivar: _stubbed
@property (retain, nonatomic) NSString *url; // ivar: _url
@property (retain, nonatomic) NSString *requestType; // ivar: _requestType
@property (retain, nonatomic) NSString *body; // ivar: _body
@property (retain, nonatomic) NSDictionary *headers; // ivar: _headers
@property (retain, nonatomic) NSDictionary *responseHeaders; // ivar: _responseHeaders
@property (retain, nonatomic) NSMutableData *receivedData; // ivar: _receivedData
@property (retain, nonatomic) NSError *error; // ivar: _error
@property (nonatomic) NSInteger expectedContentLength; // ivar: _expectedContentLength
@property (nonatomic) NSInteger responseCode; // ivar: _responseCode
@property (nonatomic) BOOL canceled; // ivar: _canceled
@property (nonatomic) BOOL finished; // ivar: _finished
@property (retain, nonatomic) NSCondition *blockCondition; // ivar: _blockCondition
@property (copy, nonatomic) id *progressBlock; // ivar: _progressBlock
@property (copy, nonatomic) id *startBlock; // ivar: _startBlock
@property (retain, nonatomic) NSMutableURLRequest *request; // ivar: _request
@property (retain, nonatomic) NSURLConnection *connection; // ivar: _connection
@property (nonatomic) int connectTimeout; // ivar: _connectTimeout
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)getStubbed;
-(id)initWithUrl:(id)arg0 requestType:(id)arg1 headers:(id)arg2 connectTimeout:(int)arg3 ;
-(id)createConnection:(id)arg0 delegate:(id)arg1 startImmediately:(BOOL)arg2 ;
-(id)makeRequest;
-(void)receiveTimerTimedOut;
-(void)cancel;
-(void)connection:(id)arg0 didReceiveResponse:(id)arg1 ;
-(void)connection:(id)arg0 didReceiveData:(id)arg1 ;
-(id)connection:(id)arg0 willSendRequest:(id)arg1 redirectResponse:(id)arg2 ;
-(id)makeUserInfoDictionary:(NSInteger)arg0 message:(id)arg1 ;
-(void)connection:(id)arg0 didFailWithError:(id)arg1 ;
-(void)connectionDidFinishLoading:(id)arg0 ;
-(id)connection:(id)arg0 willCacheResponse:(id)arg1 ;


@end


#endif