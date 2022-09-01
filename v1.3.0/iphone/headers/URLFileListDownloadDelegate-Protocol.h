// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol URLFileListDownloadDelegate


-(void)listDownloadComplete:(id)arg0 ;
-(void)listDownloadCompleteWithErrors:(id)arg0 ;

@optional
-(void)listDownload:(id)arg0 URL:(id)arg1 progress:(float)arg2 ;
-(void)listDownload:(id)arg0 URLComplete:(id)arg1 ;
-(void)listDownload:(id)arg0 URL:(id)arg1 error:(id)arg2 ;
-(BOOL)listDownload:(id)arg0 shouldRetryURL:(id)arg1 forError:(id)arg2 ;
-(BOOL)listDownload:(id)arg0 shouldUseTempFileForURL:(id)arg1 ;
@end

