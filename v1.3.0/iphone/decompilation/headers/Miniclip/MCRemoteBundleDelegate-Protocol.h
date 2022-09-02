// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MCRemoteBundleDelegate


-(void)remoteBundleStateChanged:(id)arg0 ;

@optional
-(void)remoteBundleFinishedDownloadingChecksums:(id)arg0 ;
-(void)remoteBundle:(id)arg0 URLDownloadSuccessfull:(id)arg1 intoPath:(id)arg2 ;
-(void)remoteBundle:(id)arg0 URLDownload:(id)arg1 intoPath:(id)arg2 failedWithError:(id)arg3 ;
-(void)remoteBundle:(id)arg0 fileCopiedFromAuxiliaryCache:(id)arg1 intoPath:(id)arg2 ;
-(void)remoteBundle:(id)arg0 failedToCopyFromAuxiliaryCache:(id)arg1 intoPath:(id)arg2 withError:(id)arg3 ;
-(BOOL)remoteBundle:(id)arg0 shouldRetryDownload:(id)arg1 forError:(id)arg2 ;
@end

