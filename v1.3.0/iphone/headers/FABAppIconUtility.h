// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABAPPICONUTILITY_H
#define FABAPPICONUTILITY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FABIcon;

@interface FABAppIconUtility : NSObject

@property (retain, nonatomic) FABIcon *applicationIcon; // ivar: _applicationIcon
@property (readonly, nonatomic) NSDictionary *appInfoDictionary;


-(id)iconRootPath;
-(id)largestIconInIconNames:(id)arg0 prerendered:(BOOL)arg1 ;
-(id)iconFromIOS7StyleCFBundleIconsInFieldWithKey:(id)arg0 ;
-(id)iconFromCFBundleIconFiles;
-(id)iconFromCFBundleIconFile;
-(id)iconByFallingBackOnDefaultIconNamingConvention;
-(id)fetchApplicationIcon;
+(struct CGSize )sizeForImage:(id)arg0 ;
+(BOOL)isIconImageFileNameExtensionPresentInName:(id)arg0 ;
+(void)addIconNameWithModifier:(id)arg0 forIconWithName:(id)arg1 toSetOfIconNames:(id)arg2 ;
+(id)iconNameSetWithAlternateNamesAddedToIconNameSet:(id)arg0 ;


@end


#endif