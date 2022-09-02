// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCBUNDLE_H
#define MCBUNDLE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MCBundleServerPersistencyDelegate;

@interface MCBundle : NSObject {
    id<MCBundleServerPersistencyDelegate> *_persistencyDelegate;
    NSDictionary *_patches;
    NSDictionary *_patchResultsMD5s;
    NSMutableArray *_checksumFiles;
    NSArray *_device_suffix;
    NSMutableArray *_filesToCopyFromAuxiliaryCache;
}


@property (readonly, nonatomic) NSDictionary *checksums; // ivar: _checksums
@property (readonly, nonatomic) NSDictionary *checksumsWithVersions; // ivar: _checksumsWithVersions
@property (retain, nonatomic) NSMutableArray *bundleNewFiles; // ivar: _newFiles
@property (retain, nonatomic) NSString *auxiliaryCache; // ivar: _auxiliaryCache


-(id)initWithPersistencyDelegate:(id)arg0 ;
-(void)setDeviceSuffix:(id)arg0 ;
-(void)dealloc;
-(void)detach;
-(void)addNewFile:(id)arg0 ;
-(BOOL)isUsingIncrementalBundles:(id)arg0 ;
-(id)addChecksumFile:(id)arg0 ;
-(id)addChecksumFile:(id)arg0 fromDirectory:(id)arg1 ;
-(id)checksumForFile:(id)arg0 ;
-(id)difWithBundle:(id)arg0 ;
-(id)bundleVersionFile;
-(id)bundleVersion;
-(void)addPatchesInfo:(id)arg0 ;
+(id)bundleWithPersistencyDelegate:(id)arg0 ;


@end


#endif