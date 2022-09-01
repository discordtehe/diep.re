// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSAPPLICATION_H
#define ANSAPPLICATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>


@interface ANSApplication : NSObject

@property (readonly, nonatomic) NSDictionary *infoPlistDict; // ivar: _infoPlistDict
@property (readonly, nonatomic) NSString *bundleIdentifier;
@property (readonly, nonatomic) NSString *bundleVersion;
@property (readonly, nonatomic) NSString *shortVersionString;
@property (readonly, nonatomic) NSDictionary *extensionDefinitionDictionary;
@property (readonly, nonatomic) NSString *extensionPointIdentifier;
@property (readonly, nonatomic) BOOL isExtension;
@property (readonly, nonatomic) UIApplication *appSharedInstance;


-(id)initWithInfoPlistDictionary:(id)arg0 ;
+(id)hostApplication;


@end


#endif