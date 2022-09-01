// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEUTIL_H
#define VUNGLEUTIL_H


#import <Foundation/Foundation.h>


@interface VungleUtil : NSObject



+(id)requiredVersion;
+(BOOL)isValidURLForKey:(id)arg0 inDictionary:(id)arg1 ;
+(BOOL)isValidURL:(id)arg0 ;
+(BOOL)isNullOrNil:(id)arg0 ;
+(BOOL)isNull:(id)arg0 ;
// +(id)performBlock:(id)arg0 afterDelay:(unk)arg1  ;
+(void)cancelBlock:(id)arg0 ;
+(id)dictionaryWithURLQueryString:(id)arg0 ;
+(BOOL)isValidBundleDictionary:(id)arg0 ;
+(id)convertFromSecondsToMilliseconds:(CGFloat)arg0 ;
+(NSUInteger)dispatchTimeFromNowToDelta:(NSInteger)arg0 ;
+(BOOL)safeMultiply64BitIntegerX:(NSInteger)arg0 Y:(NSInteger)arg1 result:(*NSInteger)arg2 ;
+(BOOL)validateOSVersion:(id)arg0 againstRequiredOSVersion:(id)arg1 ;
+(id)applicationSupportDirectoryURL;
+(id)topViewControllerWithRootViewController:(id)arg0 ;
+(BOOL)isTopMostViewController:(id)arg0 ;
+(id)sha1FromString:(id)arg0 ;
+(BOOL)isVersionMatching:(id)arg0 ;
+(id)storeParametersFromURL:(id)arg0 ;
+(BOOL)validateTPAT:(id)arg0 ;
+(BOOL)validateValue:(id)arg0 key:(id)arg1 ;
+(BOOL)validateURL:(id)arg0 key:(id)arg1 ;
+(BOOL)isOrientationLandscapeOnly;


@end


#endif