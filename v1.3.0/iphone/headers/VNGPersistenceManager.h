// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGPERSISTENCEMANAGER_H
#define VNGPERSISTENCEMANAGER_H


#import <Foundation/Foundation.h>


@interface VNGPersistenceManager : NSObject

@property (nonatomic) BOOL minimumFileSystemSizeForInitDebugEnabled; // ivar: _minimumFileSystemSizeForInitDebugEnabled
@property (nonatomic) BOOL minimumFileSystemSizeForAdRequestDebugEnabled; // ivar: _minimumFileSystemSizeForAdRequestDebugEnabled
@property (nonatomic) BOOL minimumFileSystemSizeForAssetDownloadDebugEnabled; // ivar: _minimumFileSystemSizeForAssetDownloadDebugEnabled


-(id)init;
-(BOOL)saveObject:(id)arg0 error:(*id)arg1 ;
-(BOOL)saveObjects:(id)arg0 error:(*id)arg1 ;
-(BOOL)saveObject:(id)arg0 channel:(NSInteger)arg1 category:(id)arg2 key:(id)arg3 overwrite:(BOOL)arg4 error:(*id)arg5 ;
-(id)loadObjectWithClass:(Class)arg0 key:(id)arg1 error:(*id)arg2 ;
-(id)loadObjectsWithClass:(Class)arg0 error:(*id)arg1 ;
-(id)loadURLsForObjectsWithClass:(Class)arg0 error:(*id)arg1 ;
-(id)loadObjectWithChannel:(NSInteger)arg0 category:(id)arg1 key:(id)arg2 error:(*id)arg3 ;
-(id)loadObject:(id)arg0 error:(*id)arg1 ;
-(id)loadObjectsAtChannel:(NSInteger)arg0 category:(id)arg1 error:(*id)arg2 ;
-(id)loadObjectURLsAtChannel:(NSInteger)arg0 category:(id)arg1 error:(*id)arg2 ;
-(id)loadObjectsWithURLs:(id)arg0 error:(*id)arg1 ;
-(BOOL)removeObject:(id)arg0 error:(*id)arg1 ;
-(BOOL)removeObjectWithChannel:(NSInteger)arg0 category:(id)arg1 key:(id)arg2 error:(*id)arg3 ;
-(BOOL)removeAllObjectsInChannel:(NSInteger)arg0 category:(id)arg1 error:(*id)arg2 ;
-(BOOL)removeAllObjectsInChannel:(NSInteger)arg0 error:(*id)arg1 ;
-(BOOL)removeAllObjects:(*id)arg0 ;
-(BOOL)removeFileAtURL:(id)arg0 ;
-(id)URLForObject:(id)arg0 ;
-(id)URLForChannel:(NSInteger)arg0 category:(id)arg1 key:(id)arg2 error:(*id)arg3 ;
-(id)URLForTemporaryDownloadDir;
-(id)URLForTemporaryDownloadFileWithKey:(id)arg0 ;
-(id)errorWithPersistenceError:(NSInteger)arg0 description:(id)arg1 ;
-(BOOL)moveFileFrom:(id)arg0 toChannel:(NSInteger)arg1 category:(id)arg2 key:(id)arg3 overwrite:(BOOL)arg4 error:(*id)arg5 ;
-(BOOL)checkFileSystemSizeAvailabilityForCase:(NSInteger)arg0 withError:(*id)arg1 withPlacementID:(id)arg2 ;
-(void)logFileSizeCheckError:(id)arg0 ;
-(NSInteger)getAvailableFileSystemSizeInMBWithError:(*id)arg0 ;
-(void)setUserDefinedMinimumFileSystemSizeThreshold;
+(id)sharedManager;
+(id)URLForAdsDir;
+(id)URLForAdKey:(id)arg0 ;
+(BOOL)removeDirectoryWithAdKey:(id)arg0 ;
+(BOOL)removeAdsCache;
+(BOOL)cleanupFileSystemOnSDKVersionUpgrade;


@end


#endif