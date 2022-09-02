// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol NSURLConnectionDataDelegate



@optional
-(id)connection:(id)arg0 willSendRequest:(id)arg1 redirectResponse:(id)arg2 ;
-(void)connection:(id)arg0 didReceiveResponse:(id)arg1 ;
-(void)connection:(id)arg0 didReceiveData:(id)arg1 ;
-(id)connection:(id)arg0 needNewBodyStream:(id)arg1 ;
-(void)connection:(id)arg0 didSendBodyData:(NSInteger)arg1 totalBytesWritten:(NSInteger)arg2 totalBytesExpectedToWrite:(NSInteger)arg3 ;
-(id)connection:(id)arg0 willCacheResponse:(id)arg1 ;
-(void)connectionDidFinishLoading:(id)arg0 ;
@end

