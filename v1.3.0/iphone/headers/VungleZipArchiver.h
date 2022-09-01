// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEZIPARCHIVER_H
#define VUNGLEZIPARCHIVER_H


#import <Foundation/Foundation.h>


@interface VungleZipArchiver : NSObject



+(BOOL)unzipFileAtPath:(id)arg0 toDestination:(id)arg1 overwrite:(BOOL)arg2 error:(*id)arg3 ;
+(id)errorWithCode:(NSInteger)arg0 description:(id)arg1 ;


@end


#endif