// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOCONFIGURATIONMANAGER_H
#define MCPROMOCONFIGURATIONMANAGER_H

@protocol PromoConfigurationDBDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MCBundleManager;
@class Callback;
@protocol MCBundleServerPersistencyDelegate;
@protocol MCBundleManagerDelegate;

@interface MCPromoConfigurationManager : NSObject <MCBundleServerPersistencyDelegate, MCBundleManagerDelegate>

 {
    MCBundleManager *mPromoBundleManager;
    NSMutableDictionary *mPromoValueMap;
    NSMutableDictionary *mPromoConfiguration;
    NSDictionary *mBasePromoConfiguration;
    NSMutableArray *mTempTable;
    NSMutableDictionary *mTempRecord;
    NSMutableDictionary *mUserGroup;
    NSArray *mPromoChecksumFiles;
    BOOL mBundleReadyToActivate;
    NSArray *mNewPromoFiles;
    unsigned int mRemainingPromoFilesToDownload;
    unsigned int mCurrentPromoVersion;
    BOOL mDataChanged;
}


@property (readonly, nonatomic) Callback *promoConfigurationUpdatedCallback; // ivar: mConfigurationUpdatedCallback
@property (readonly, nonatomic) Callback *promoConfigurationDownloadedCallback; // ivar: mConfigurationDownloadedCallback
@property BOOL reloadPromoConfigurationOnDownload; // ivar: mReloadConfigurationOnDownload
@property (retain, nonatomic) NSString *cryptoPassword; // ivar: mCryptoPassword
@property (retain, nonatomic) NSObject<PromoConfigurationDBDelegate> *delegate; // ivar: mDelegate
@property (retain, nonatomic) NSString *baseServerURL; // ivar: mBaseServerURL
@property (nonatomic) CGFloat maxRetryTime; // ivar: mMaxRetryTime
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)setPromoChecksums:(id)arg0 ;
-(void)initializePromoBundleManager;
-(void)stopPromoDownloader;
-(void)dealloc;
-(id)getTempPath;
-(void)saveDownloadFilesManifest:(id)arg0 ;
-(id)getLatestPromoDownloadFilesManifest;
-(id)getNewDownloadFilesManifest;
-(void)loadPromoConfiguration:(BOOL)arg0 ;
-(void)loadPromoConfiguration:(BOOL)arg0 skipActivation:(BOOL)arg1 ;
-(BOOL)loadNewPromoConfigurationIfAvailable;
-(BOOL)isNewPromoConfigurationAvailable;
-(void)setConfigurationParallelDownloaders:(int)arg0 ;
-(void)setConfigurationDownloadUpdateInterval:(CGFloat)arg0 ;
-(BOOL)downloadNewPromoConfigurationVersion:(unsigned int)arg0 ;
-(NSInteger)newConfigurationTotalDownloadSize;
-(void)wipePromoData;
-(void)bundleManagerReadyToActivate:(id)arg0 ;
-(void)bundleManagerActivated:(id)arg0 ;
-(void)bundleManager:(id)arg0 fileDownloadComplete:(id)arg1 intoAbsolutePath:(id)arg2 ;
-(void)bundleManagerFinishedDownloadingChecksums:(id)arg0 ;
-(void)bundleManagerUpgradedBinary:(id)arg0 ;
-(int)promoFileStateInTheNewBundle:(id)arg0 ;
-(int)valueMapStateInNewBundle;
-(BOOL)isPromoFileAvailableOnInProgressDownload:(id)arg0 ;
-(BOOL)isPromoDownloading;
-(NSUInteger)remainingPromoFilesToDownload;
-(BOOL)hasABTestFormat:(id)arg0 ;
-(void)setPromoConfiguration:(id)arg0 ;
-(void)setPromoValueMap:(id)arg0 ;
-(void)mergeValueMap:(id)arg0 ;
-(void)processData;
-(id)promoValueForField:(id)arg0 atTable:(id)arg1 searchByField:(id)arg2 withValue:(id)arg3 ;
-(id)promoValueForField:(id)arg0 atTable:(id)arg1 atIndex:(NSUInteger)arg2 ;
-(unsigned int)getPromoConfigVersion;
-(id)recordFromTable:(id)arg0 searchByField:(id)arg1 withValue:(id)arg2 ;
-(id)recordFromTable:(id)arg0 atIndex:(NSUInteger)arg1 ;
-(id)promoTableWithId:(id)arg0 ;
-(id)insertPromoValue:(id)arg0 inField:(id)arg1 entry:(id)arg2 ;
-(BOOL)removeResourceAtPath:(id)arg0 ;
-(BOOL)copyResourceFrom:(id)arg0 to:(id)arg1 deleteOriginal:(BOOL)arg2 allowOverrite:(BOOL)arg3 ;
-(BOOL)createPath:(id)arg0 ;
-(BOOL)pathExists:(id)arg0 ;
-(BOOL)canWriteFileAtPath:(id)arg0 ;
-(id)findFilename:(id)arg0 ;
-(id)getPathForCache;
-(id)getPathForMetadata;
-(id)getPathForBundle;
-(id)getPathForAuxiliaryCache;
-(id)getPathToCompleteChecksums;
-(id)loadDataAtPath:(id)arg0 ;
-(BOOL)saveData:(id)arg0 atPath:(id)arg1 ;
-(NSUInteger)getFreeDiskspace;
-(NSUInteger)fileSizeAtPath:(id)arg0 ;
+(id)sharedMCPromoConfigurationManager;
+(BOOL)isMCPromoConfigurationManagerInitialized;
+(void)releaseSharedMCPromoConfigurationManager;


@end


#endif