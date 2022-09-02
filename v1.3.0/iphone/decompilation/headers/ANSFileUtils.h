// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSFILEUTILS_H
#define ANSFILEUTILS_H


#import <Foundation/Foundation.h>


@interface ANSFileUtils : NSObject



+(id)allFilesInDirectory:(id)arg0 ;
+(id)filesWithExtension:(id)arg0 inDirectory:(id)arg1 ;
+(id)fileSizeAtURL:(id)arg0 ;
+(id)fileCreatedDateAtURL:(id)arg0 withDefault:(id)arg1 ;


@end


#endif