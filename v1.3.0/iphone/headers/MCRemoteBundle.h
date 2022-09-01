// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCREMOTEBUNDLE_H
#define MCREMOTEBUNDLE_H

@protocol MCRemoteBundleDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MCBundle;
@class MCURLFileListDownloader;
@class MCPatcher;
@protocol URLFileListDownloadDelegate;
@protocol MCPatcherDelegate;

@interface MCRemoteBundle : MCBundle <URLFileListDownloadDelegate, MCPatcherDelegate>

 {
    NSString *_tempPath;
    NSString *_baseURL;
    MCURLFileListDownloader *_fileListDownloader;
    MCBundle *_bundle;
    NSArray *_priorityURLs;
    NSArray *_remainingFilesToDownload;
    NSTimer *_downloadUpdateTimer;
    MCPatcher *_patcher;
}


@property (readonly, nonatomic) int state; // ivar: _updateState
@property (readonly, nonatomic) NSInteger totalDownloadSize; // ivar: _totalDownloadSize
@property (readonly, nonatomic) NSError *underlyingErrorForInvalidState; // ivar: _underlyingErrorForInvalidState
@property (nonatomic) NSObject<MCRemoteBundleDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) CGFloat updateInterval; // ivar: _updateInterval
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initAtUrl:(id)arg0 withPersistencyDelegate:(id)arg1 withUpdateInterval:(CGFloat)arg2 ;
-(id)initAtUrl:(id)arg0 withPersistencyDelegate:(id)arg1 withUpdateInterval:(CGFloat)arg2 withParallelDownloadersCount:(int)arg3 ;
-(id)initAtUrl:(id)arg0 withPersistencyDelegate:(id)arg1 version:(id)arg2 withUpdateInterval:(CGFloat)arg3 ;
-(id)initAtUrl:(id)arg0 withPersistencyDelegate:(id)arg1 version:(id)arg2 withUpdateInterval:(CGFloat)arg3 withParallelDownloadersCount:(int)arg4 ;
-(id)initAtUrl:(id)arg0 withPersistencyDelegate:(id)arg1 version:(id)arg2 ;
-(void)setDownloadUpdateInterval:(CGFloat)arg0 ;
-(void)setParallelDownloadersCount:(int)arg0 ;
-(int)parallelDownloadersCount;
-(void)dealloc;
-(BOOL)changeStateTo:(int)arg0 ;
-(void)detach;
-(void)addPatchesInfo:(id)arg0 ;
-(id)tempPath;
-(id)activeBundlePath;
-(id)tempPathForFile:(id)arg0 ;
-(id)bundleVersionFile;
-(BOOL)isIdle;
-(BOOL)isReadyToActivate;
-(void)cancel;
-(NSUInteger)calcsizeOfFileList:(id)arg0 ;
-(id)activate;
-(BOOL)isActive;
-(BOOL)isDownloadingChangedFiles;
-(id)remainingFileNamesToDownload;
-(id)getResourcePath:(id)arg0 ;
-(void)setInvalidWithError:(id)arg0 ;
-(void)updateComplete;
-(void)addFileToDownloader:(id)arg0 ;
-(id)addChecksumFile:(id)arg0 ;
-(id)addChecksumFile:(id)arg0 fromDirectory:(id)arg1 ;
-(id)loadDownloadedChecksums;
-(id)prioritiseDownloads:(id)arg0 ;
-(BOOL)fileHasSuffix:(id)arg0 suffix:(id)arg1 ;
-(id)getFileSuffix:(id)arg0 ;
-(id)fileWithReplacedSuffix:(id)arg0 withReplacement:(id)arg1 ;
-(id)filterLessSpecificDuplicateFiles:(id)arg0 ;
-(id)checksumsFromFile:(id)arg0 ;
-(id)loadChecksumsFromFiles:(id)arg0 ;
-(id)loadChecksumsFromCache:(id)arg0 ;
-(id)useAuxiliaryCacheFiles:(id)arg0 ;
-(void)processFilesToCopy;
-(id)update;
-(void)timerTick:(id)arg0 ;
-(void)listDownloadComplete:(id)arg0 ;
-(void)listDownloadCompleteWithErrors:(id)arg0 ;
-(id)filedownloaderTargetPath:(id)arg0 ;
-(void)listDownload:(id)arg0 URLComplete:(id)arg1 ;
-(void)listDownload:(id)arg0 URL:(id)arg1 error:(id)arg2 ;
-(BOOL)listDownload:(id)arg0 shouldRetryURL:(id)arg1 forError:(id)arg2 ;
-(BOOL)listDownload:(id)arg0 shouldUseTempFileForURL:(id)arg1 ;
-(void)patcher:(id)arg0 successfullyPatchedFile:(id)arg1 fromPatch:(id)arg2 ;
-(void)patcher:(id)arg0 failedToPatchFile:(id)arg1 fromPatch:(id)arg2 withError:(id)arg3 ;
-(id)toDictionary;
+(id)remoteBundleAtUrl:(id)arg0 withPersistencyDelegate:(id)arg1 version:(id)arg2 ;
+(id)allocRemoteBundleFromDictionary:(id)arg0 withPersistencyDelegate:(id)arg1 ;


@end


#endif