// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCFILEUTILS_H
#define CCFILEUTILS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CCFileUtils : NSObject {
    NSMutableDictionary *_fullPathCache;
    NSMutableDictionary *_fullPathNoResolutionsCache;
    NSMutableDictionary *_removeSuffixCache;
}


@property (retain, nonatomic) NSBundle *bundle; // ivar: _bundle
@property (retain, nonatomic) NSFileManager *fileManager; // ivar: _fileManager
@property (nonatomic, getter=isEnablediPhoneResourcesOniPad) BOOL enableiPhoneResourcesOniPad; // ivar: _enableiPhoneResourcesOniPad
@property (copy, nonatomic) NSMutableDictionary *directoriesDict; // ivar: _directoriesDict
@property (copy, nonatomic) NSMutableDictionary *suffixesDict; // ivar: _suffixesDict
@property (copy, nonatomic) NSArray *searchResolutionsOrder; // ivar: _searchResolutionsOrder
@property (copy, nonatomic) NSArray *searchPath; // ivar: _searchPath
@property (nonatomic) int searchMode; // ivar: _searchMode
@property (copy, nonatomic) NSMutableDictionary *filenameLookup; // ivar: _filenameLookup


-(id)init;
-(void)purgeCachedEntries;
-(void)dealloc;
-(void)buildSearchResolutionsOrder;
-(id)pathForResource:(id)arg0 ofType:(id)arg1 inDirectory:(id)arg2 ;
-(id)getPathForFilename:(id)arg0 withSuffix:(id)arg1 ;
-(id)getPathForFilename:(id)arg0 withResourceDirectory:(id)arg1 withSearchPath:(id)arg2 ;
-(int)resolutionTypeForKey:(id)arg0 inDictionary:(id)arg1 ;
-(id)fullPathForFilenameIgnoringResolutions:(id)arg0 ;
-(id)fullPathFromRelativePathIgnoringResolutions:(id)arg0 ;
-(id)fullPathForFilename:(id)arg0 ;
-(id)fullPathForFilename:(id)arg0 resolutionType:(*int)arg1 ;
-(BOOL)searchFilename:(id)arg0 resolutionType:(*int)arg1 andResourcePack:(*id)arg2 intoString:(*id)arg3 ;
-(id)fullPathForFilename:(id)arg0 resolutionType:(*int)arg1 andResourcePack:(*id)arg2 ;
-(id)fullPathFromRelativePath:(id)arg0 resolutionType:(*int)arg1 andResourcePack:(*id)arg2 ;
-(id)fullPathFromRelativePath:(id)arg0 ;
-(id)fullPathFromRelativePath:(id)arg0 resolutionType:(*int)arg1 ;
-(void)loadFilenameLookupDictionaryFromFile:(id)arg0 ;
-(id)standarizePath:(id)arg0 ;
-(void)setiPadRetinaDisplaySuffix:(id)arg0 ;
-(void)setiPadSuffix:(id)arg0 ;
-(void)setiPhoneRetinaDisplaySuffix:(id)arg0 ;
-(id)getiPhoneRetinaDisplaySuffix;
-(id)getiPadSuffix;
-(id)getiPadRetinaDisplaySuffix;
-(id)removeSuffix:(id)arg0 fromPath:(id)arg1 ;
-(id)removeSuffixFromFile:(id)arg0 ;
-(BOOL)fileExistsAtPath:(id)arg0 withSuffix:(id)arg1 ;
-(id)fullPathToRelativePath:(id)arg0 ;
-(void)setEnableFallbackSuffixes:(BOOL)arg0 ;
-(BOOL)iPhoneRetinaDisplayFileExistsAtPath:(id)arg0 ;
-(BOOL)iPadFileExistsAtPath:(id)arg0 ;
-(BOOL)iPadRetinaDisplayFileExistsAtPath:(id)arg0 ;
+(id)fullPathFromRelativePath:(id)arg0 ;
+(id)fullPathFromRelativePath:(id)arg0 resolutionType:(*int)arg1 ;
+(void)setRetinaDisplaySuffix:(id)arg0 ;
+(id)removeSuffixFromFile:(id)arg0 ;
+(BOOL)iPhoneRetinaDisplayFileExistsAtPath:(id)arg0 ;
+(BOOL)iPadFileExistsAtPath:(id)arg0 ;
+(BOOL)iPadRetinaDisplayFileExistsAtPath:(id)arg0 ;
+(id)sharedFileUtils;


@end


#endif