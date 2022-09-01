// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FIRBUNDLEUTIL_H
#define FIRBUNDLEUTIL_H


#import <Foundation/Foundation.h>


@interface FIRBundleUtil : NSObject



+(id)relevantBundles;
+(id)optionsDictionaryPathWithResourceName:(id)arg0 andFileType:(id)arg1 inBundles:(id)arg2 ;
+(id)relevantURLSchemes;
+(BOOL)hasBundleIdentifierPrefix:(id)arg0 inBundles:(id)arg1 ;
+(id)bundleIdentifierByRemovingLastPartFrom:(id)arg0 ;


@end


#endif