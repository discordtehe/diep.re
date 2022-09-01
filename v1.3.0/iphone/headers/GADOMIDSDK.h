// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDSDK_H
#define GADOMIDSDK_H


#import <Foundation/Foundation.h>


@interface GADOMIDSDK : NSObject

@property (readonly, getter=isActive) BOOL active; // ivar: _active


-(BOOL)activateWithGADOMIDAPIVersion:(id)arg0 error:(*id)arg1 ;
-(BOOL)activate;
+(id)versionString;
+(BOOL)isCompatibleWithGADOMIDAPIVersion:(id)arg0 ;
+(NSInteger)majorVersionFrom:(id)arg0 ;
+(id)sharedInstance;


@end


#endif