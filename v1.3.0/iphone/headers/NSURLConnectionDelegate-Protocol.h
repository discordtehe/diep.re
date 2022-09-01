// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol NSURLConnectionDelegate



@optional
-(void)connection:(id)arg0 didFailWithError:(id)arg1 ;
-(BOOL)connectionShouldUseCredentialStorage:(id)arg0 ;
-(void)connection:(id)arg0 willSendRequestForAuthenticationChallenge:(id)arg1 ;
-(BOOL)connection:(id)arg0 canAuthenticateAgainstProtectionSpace:(id)arg1 ;
-(void)connection:(id)arg0 didReceiveAuthenticationChallenge:(id)arg1 ;
-(void)connection:(id)arg0 didCancelAuthenticationChallenge:(id)arg1 ;
@end

