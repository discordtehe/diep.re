// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MCURLFileDownloadDelegate


-(void)downloadComplete:(id)arg0 ;
-(void)downloadFailed:(id)arg0 withError:(id)arg1 ;

@optional
-(void)download:(id)arg0 withProgress:(float)arg1 ;
-(BOOL)shouldRetryDownload:(id)arg0 forError:(id)arg1 ;
-(BOOL)shouldUseTempFile:(id)arg0 ;
@end

