// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDLOGFILEINFO_H
#define TR_DDLOGFILEINFO_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface TR_DDLogFileInfo : NSObject {
    NSString *_filePath;
    NSString *_fileName;
    NSDictionary *_fileAttributes;
    NSDate *_creationDate;
    NSDate *_modificationDate;
    NSUInteger _fileSize;
}


@property (readonly, nonatomic) NSString *filePath; // ivar: filePath
@property (readonly, nonatomic) NSString *fileName;
@property (readonly, nonatomic) NSDictionary *fileAttributes;
@property (readonly, nonatomic) NSDate *creationDate;
@property (readonly, nonatomic) NSDate *modificationDate;
@property (readonly, nonatomic) NSUInteger fileSize;
@property (readonly, nonatomic) CGFloat age;
@property (nonatomic) BOOL isArchived;


-(id)initWithFilePath:(id)arg0 ;
-(id)description;
-(void)reset;
-(void)renameFile:(id)arg0 ;
-(BOOL)hasExtendedAttributeWithName:(id)arg0 ;
-(void)addExtendedAttributeWithName:(id)arg0 ;
-(void)removeExtendedAttributeWithName:(id)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(NSInteger)reverseCompareByCreationDate:(id)arg0 ;
-(NSInteger)reverseCompareByModificationDate:(id)arg0 ;
+(id)logFileWithPath:(id)arg0 ;


@end


#endif