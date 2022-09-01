// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCBUNDLEMANAGER_H
#define MCBUNDLEMANAGER_H

@protocol MCBundleManagerDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MCBundle;
@class MCRemoteBundle;
@class MCDownloadInfo;
@protocol MCRemoteBundleDelegate;
@protocol MCBundleServerPersistencyDelegate;

@interface MCBundleManager : NSObject <MCRemoteBundleDelegate>

 {
    NSArray *_checksumFiles;
    NSString *_currentBundleVersion;
    id<MCBundleServerPersistencyDelegate> *_persistencyDelegate;
    MCBundle *_activeBundle;
    MCRemoteBundle *_newBundle;
    NSArray *_allFiles;
    NSArray *_deviceSuffix;
    NSString *_auxiliaryCache;
    BOOL _checksumsPresentInBundle;
    MCDownloadInfo *_requestedDownload;
    NSString *_bundleVersion;
    BOOL _saveStateInProgress;
}


@property (nonatomic) NSObject<MCBundleManagerDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) BOOL ready; // ivar: _ready
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)releaseBundle:(*id)arg0 ;
-(id)dataSaveFile;
-(id)allFilesSaveFile;
-(void)saveAllDownloadedFileList;
-(void)saveState;
-(void)cleanAllFilesList;
-(void)cancelDownload;
-(id)setupChecksumsForBundle:(id)arg0 ;
-(void)moveChecksumsToAuxiliaryCache;
-(void)moveAllDownloadedFilesToAuxiliaryCacheExcept:(id)arg0 ;
-(void)clearAllDownloadedFilesExcept:(id)arg0 ;
-(void)cleanupAuxiliaryCache;
-(id)filesToKeepOnBinaryUpgrade:(id)arg0 withAuxCache:(id)arg1 ;
-(void)downloadChecksumFile:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > *)arg0 fromURL:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > *)arg1 withRetryDelay:(int)arg2 ;
-(void)downloadBundleChecksums:(id)arg0 ;
-(void)initActiveBundle;
-(id)initWithPersistencyDelegate:(id)arg0 bundleVersion:(id)arg1 checksumFiles:(id)arg2 deviceSuffix:(id)arg3 andManagerDelegate:(id)arg4 ;
-(id)initWithPersistencyDelegate:(id)arg0 bundleVersion:(id)arg1 checksumFiles:(id)arg2 deviceSuffix:(id)arg3 ;
-(id)initWithPersistencyDelegate:(id)arg0 bundleVersion:(id)arg1 checksumFiles:(id)arg2 ;
-(void)dealloc;
-(id)activeBundleVersionString;
-(id)downloadingBundleVersionString;
-(id)downloadBundleAtUrl:(id)arg0 withVersionString:(id)arg1 ;
-(id)downloadBundleAtUrl:(id)arg0 withVersionString:(id)arg1 withPriorityDownloads:(id)arg2 ;
-(id)downloadBundleAtUrl:(id)arg0 withVersionString:(id)arg1 withPriorityDownloads:(id)arg2 withUpdateInterval:(CGFloat)arg3 withParallelDownloadersCount:(int)arg4 ;
-(BOOL)prioritiseDownloads:(id)arg0 ;
-(void)setCurrentDownloadUpdateInterval:(CGFloat)arg0 ;
-(CGFloat)currentUpdateInterval;
-(void)setParallelDownloadersCount:(int)arg0 ;
-(int)parallelDownloadersCount;
-(BOOL)activateBundleWithError:(*id)arg0 ;
-(BOOL)isDownloading;
-(BOOL)isReadyToActivate;
-(void)updateDownloadsInfo:(id)arg0 ;
-(void)remoteBundleStateChanged:(id)arg0 ;
-(void)remoteBundleFinishedDownloadingChecksums:(id)arg0 ;
-(void)remoteBundle:(id)arg0 URLDownloadSuccessfull:(id)arg1 intoPath:(id)arg2 ;
-(void)remoteBundle:(id)arg0 URLDownload:(id)arg1 intoPath:(id)arg2 failedWithError:(id)arg3 ;
-(void)remoteBundle:(id)arg0 fileCopiedFromAuxiliaryCache:(id)arg1 intoPath:(id)arg2 ;
-(void)remoteBundle:(id)arg0 failedToCopyFromAuxiliaryCache:(id)arg1 intoPath:(id)arg2 withError:(id)arg3 ;
-(BOOL)remoteBundle:(id)arg0 shouldRetryDownload:(id)arg1 forError:(id)arg2 ;
-(id)bundleChecksums;
-(id)bundleChecksumsWithVersions;
-(id)newBundleChecksums;
-(id)newBundleChecksumsWithVersions;
-(id)newFilesInActiveBundle;
-(id)newFilesInNewBundle;
-(id)newRemainingFilesToDownload;
-(NSInteger)newBundleTotalDownloadSize;
-(id)getNewResourcePath:(id)arg0 ;
+(id)bundleManagerWithPersistencyDelegate:(id)arg0 bundleVersion:(id)arg1 checksumFiles:(id)arg2 ;
+(id)bundleManagerWithPersistencyDelegate:(id)arg0 bundleVersion:(id)arg1 checksumFiles:(id)arg2 deviceSuffix:(id)arg3 ;
+(id)bundleManagerWithPersistencyDelegate:(id)arg0 bundleVersion:(id)arg1 checksumFiles:(id)arg2 andManagerDelegate:(id)arg3 ;


@end


#endif