// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSADOWNLOADMANAGER_H
#define SSADOWNLOADMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface SSADownloadManager : NSObject

@property (nonatomic) int totalCampaignsToCache; // ivar: _totalCampaignsToCache
@property (nonatomic) int numOfCampaignsNotifyPublisher; // ivar: _numOfCampaignsNotifyPublisher
@property (nonatomic) int numOfDownloadedGlobalAssets; // ivar: _numOfDownloadedGlobalAssets
@property (nonatomic) int currentDownloadedCampaignIndex; // ivar: _currentDownloadedCampaignIndex
@property (nonatomic) int currentDisplayedCampaignIndex; // ivar: _currentDisplayedCampaignIndex
@property (nonatomic) int numOfCachedCampaigns; // ivar: _numOfCachedCampaigns
@property (retain, nonatomic) NSMutableArray *campaignsMetaDataArray; // ivar: _campaignsMetaDataArray
@property (retain, nonatomic) NSMutableDictionary *campaignsMetaDataDic; // ivar: _campaignsMetaDataDic
@property (retain, nonatomic) NSMutableDictionary *globalAssetsMetaDataDic; // ivar: _globalAssetsMetaDataDic


-(id)getDocumentsFolder;
-(id)getLibraryCachesFolder;
-(id)getInstanceCacheFolderUseRoot:(BOOL)arg0 ;
-(void)setLastUpdateTimeForPath:(id)arg0 andTimestamp:(id)arg1 ;
-(BOOL)storeData:(id)arg0 shouldCreateFolder:(BOOL)arg1 forKey:(id)arg2 andFolderName:(id)arg3 shouldUseCacheRoot:(BOOL)arg4 shouldOverride:(BOOL)arg5 error:(*id)arg6 ;
-(id)getControllerUrl;
-(id)getUrlFileByName:(id)arg0 andFolderName:(id)arg1 shouldUseCacheFolderRoot:(BOOL)arg2 ;
-(BOOL)deleteFileWithName:(id)arg0 atPath:(id)arg1 error:(*id)arg2 ;
-(BOOL)deleteEntireFolder:(id)arg0 error:(*id)arg1 ;
-(id)getFolderFiles:(id)arg0 ;
-(id)recursiveObjectForKey:(id)arg0 inDictionary:(id)arg1 ;
-(void)deleteAllSSAFoldersFromDocs;
-(void)deleteOldBaseDirectory:(id)arg0 ;
+(id)getInstanceRootDirectory;
+(void)createDirectoryAtPath:(id)arg0 withName:(id)arg1 error:(*id)arg2 ;


@end


#endif