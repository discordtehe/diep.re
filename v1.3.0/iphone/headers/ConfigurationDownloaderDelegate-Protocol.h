// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ConfigurationDownloaderDelegate



@optional
-(void)configurationLoaded;
-(void)configurationLoadedWithBundleDownloadInProgress:(id)arg0 ;
-(void)fileDownloadComplete:(id)arg0 ;
-(void)configurationDownloaded:(id)arg0 ;
-(id)configurationMandatoryFiles;
-(void)binaryUpgradedFromVersion:(id)arg0 toVersion:(id)arg1 ;
-(id)baseURLForBundleChecksums;
@end

