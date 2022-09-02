// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CONFIGURATIONDOWNLOADER_H
#define CONFIGURATIONDOWNLOADER_H

@protocol ConfigurationDownloaderDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MCBundleManager;
@protocol MCURLFileDownloadDelegate;
@protocol MCBundleServerPersistencyDelegate;
@protocol MCBundleManagerDelegate;

@interface ConfigurationDownloader : NSObject <MCURLFileDownloadDelegate, MCBundleServerPersistencyDelegate, MCBundleManagerDelegate>

 {
    MCBundleManager *mBundleManager;
    NSArray *mChecksumFiles;
    NSArray *mNewFiles;
    unsigned int mRemainingFilesToDownload;
    unsigned int mCurrentVersion;
    NSMutableArray *mOnDemandURLFileDownloaders;
    NSMutableArray *mOnDemandFilesToDownloadTopPriorityQueue;
    NSMutableArray *mOnDemandFilesToDownloadLowPriorityQueue;
    CGFloat mOnDemandNextRetryTime;
    CGFloat mOnDemandRetryTime;
    BOOL mSaveOnDemandDownloadJobData;
}


@property (retain, nonatomic) NSObject<ConfigurationDownloaderDelegate> *delegate; // ivar: mDelegate
@property BOOL reloadConfigurationOnDownload; // ivar: mReloadConfigurationOnDownload
@property (retain, nonatomic) NSString *baseServerURL; // ivar: mBaseServerURL
@property (nonatomic) CGFloat maxRetryTime; // ivar: mMaxRetryTime
@property (nonatomic) NSUInteger maxNumOnDemandParallelDownloads; // ivar: mMaxNumOnDemandParallelDownloads
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)setChecksums:(id)arg0 ;
-(void)initializeBundleManager;
-(void)stopDownloader;
-(void)dealloc;
-(id)getTempPath;
-(void)saveDownloadFilesManifest:(id)arg0 ;
-(id)getLatestDownloadFilesManifest;
-(id)getNewDownloadFilesManifest;
-(void)update:(CGFloat)arg0 ;
-(void)downloadComplete:(id)arg0 ;
-(void)downloadFailed:(id)arg0 withError:(id)arg1 ;
-(void)download:(id)arg0 withProgress:(float)arg1 ;
-(void)loadConfiguration:(BOOL)arg0 ;
-(void)loadConfiguration:(BOOL)arg0 skipActivation:(BOOL)arg1 ;
-(BOOL)loadNewConfigurationIfAvailable;
-(BOOL)isNewConfigurationAvailable;
-(BOOL)downloadNewConfigurationVersion:(unsigned int)arg0 ;
-(BOOL)downloadNewConfigurationVersion:(unsigned int)arg0 withUpdateInterval:(CGFloat)arg1 withParallelDownloadersCount:(int)arg2 ;
-(void)setCurrentDownloadUpdateInterval:(CGFloat)arg0 ;
-(void)setParallelDownloadersCount:(int)arg0 ;
-(int)parallelDownloadersCount;
-(CGFloat)currentUpdateInterval;
-(void)bundleManagerReadyToActivate:(id)arg0 ;
-(void)bundleManagerActivated:(id)arg0 ;
-(void)bundleManager:(id)arg0 fileDownloadComplete:(id)arg1 intoAbsolutePath:(id)arg2 ;
-(void)bundleManagerFinishedDownloadingChecksums:(id)arg0 ;
-(void)bundleManagerUpgradedBinary:(id)arg0 fromVersion:(id)arg1 toVersion:(id)arg2 ;
-(id)baseURLForBundleChecksums;
-(int)fileStateInTheNewBundle:(id)arg0 ;
-(BOOL)isFileAvailableOnInProgressDownload:(id)arg0 ;
-(BOOL)isDownloading;
-(NSUInteger)remainingFilesToDownload;
-(NSInteger)newConfigurationTotalDownloadSize;
-(unsigned int)getConfigVersion;
-(id)getOnDemandDownloadEntry:(id)arg0 InQueue:(id)arg1 ;
-(id)getOnDemandDownloadEntryForKey:(id)arg0 isTopPriority:(*BOOL)arg1 ;
-(id)getOnDemandDownloadEntryForKey:(id)arg0 ;
-(void)addOnDemandDownloadEntryForFilename:(id)arg0 withKey:(id)arg1 ;
-(void)addOnDemandDownloadEntryForPossibleFilenames:(id)arg0 withKey:(id)arg1 ;
-(id)getOnDemandDownloadEntryWithFilename:(id)arg0 ;
-(void)promoteOnDemandDownloadEntryForKey:(id)arg0 ;
-(void)demoteOnDemandDownloadEntryForKey:(id)arg0 ;
-(void)removeOnDemandDownloadEntryForKey:(id)arg0 ;
-(void)removeOnDemandDownloadEntryWithFilename:(id)arg0 ;
-(void)eraseOnDemandDownloadJobData;
-(void)loadOnDemandDownloadJobData;
-(void)saveOnDemandDownloadJobData;
-(void)cleanOnDemandDownloads;
-(id)getTempOnDemandPath;
-(void)removeExtraDownloadersIfNeeded;
-(BOOL)removeEntriesFromOnDemand:(id)arg0 ;
-(void)updateOnDemandDownloads:(CGFloat)arg0 ;
-(id)getPossibleDownloadFilenamesForFilename:(id)arg0 ;
-(int)getFileStateForFilename:(id)arg0 ;
-(id)getOnDemandDownloadNotificationIdForFilename:(id)arg0 ;
-(void)sortOnDemandTopPriorityQueue;
-(int)onDemandFileDownload:(id)arg0 ;
-(void)cancelOnDemandFileDownload:(id)arg0 ;
-(void)wipeData;
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
+(id)sharedConfigurationDownloader;
+(BOOL)isConfigurationDownloaderInitialized;
+(void)releaseSharedConfigurationDownloader;


@end


#endif