// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MCBundleServerPersistencyDelegate


-(BOOL)removeResourceAtPath:(id)arg0 ;
-(BOOL)copyResourceFrom:(id)arg0 to:(id)arg1 deleteOriginal:(BOOL)arg2 allowOverrite:(BOOL)arg3 ;
-(BOOL)createPath:(id)arg0 ;
-(BOOL)pathExists:(id)arg0 ;
-(BOOL)canWriteFileAtPath:(id)arg0 ;
-(id)findFilename:(id)arg0 ;
-(id)getPathForMetadata;
-(id)getPathForCache;
-(id)getPathForBundle;
-(id)getPathForAuxiliaryCache;
-(id)getPathToCompleteChecksums;
-(id)loadDataAtPath:(id)arg0 ;
-(BOOL)saveData:(id)arg0 atPath:(id)arg1 ;
-(NSUInteger)getFreeDiskspace;
-(NSUInteger)fileSizeAtPath:(id)arg0 ;

@end

