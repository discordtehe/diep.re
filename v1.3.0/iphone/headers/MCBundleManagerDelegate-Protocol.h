// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MCBundleManagerDelegate



@optional
-(void)bundleManagerDownloadStarted:(id)arg0 ;
-(void)bundleManagerReadyToActivate:(id)arg0 ;
-(void)bundleManagerActivated:(id)arg0 ;
-(void)bundleManager:(id)arg0 fileDownloadComplete:(id)arg1 intoAbsolutePath:(id)arg2 ;
-(void)bundleManager:(id)arg0 failedDownload:(id)arg1 intoAbsolutePath:(id)arg2 withError:(id)arg3 ;
-(BOOL)bundleManager:(id)arg0 shouldRetryDownload:(id)arg1 forError:(id)arg2 ;
-(void)bundleManager:(id)arg0 fileCopiedFromAuxiliaryCache:(id)arg1 intoAbsolutePath:(id)arg2 ;
-(void)bundleManager:(id)arg0 failedCopyFromAuxiliaryCache:(id)arg1 intoAbsolutePath:(id)arg2 withError:(id)arg3 ;
-(void)bundleManagerFinishedDownloadingChecksums:(id)arg0 ;
-(void)bundleManager:(id)arg0 willDownloadNewFiles:(id)arg1 ;
-(void)bundleManagerUpgradedBinary:(id)arg0 fromVersion:(id)arg1 toVersion:(id)arg2 ;
-(id)baseURLForBundleChecksums;
@end

